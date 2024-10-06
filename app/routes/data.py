from flask import Blueprint, request, jsonify, send_file, after_this_request
from app.utils.Validator import Validator
from app.models.DataTrain import DataTrain
from app.models.DataTest import DataTest
from app.models.DataResult import DataResult
from app.models.Variable import Variable
from app.utils import Auth, Metode
from io import BytesIO
from extensions import db
import base64
import pandas as pd
import copy
import os
import tempfile

data = Blueprint('data', __name__)

@data.route('/train')
@Auth.login_required
def train() :
    try :
        data_trains = [v.to_dict() for v in DataTrain.query.all()]
        return jsonify(
            message="Data train loaded successfully",
            data=data_trains
        )
        
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500
        
@data.route('/train/import', methods=["POST"])
@Auth.login_required
def trainImport() :
    try :
        val = Validator(request, {
            'file': ['required', 'base64'],
            'empty': ['boolean'],
        })
        
        if not val.validate() :
            return jsonify(
                status=False,
                message='Invalid field.',
                errors=val.getErrors()
            ), 400
            
        if request.json.get('empty') :
            DataTrain.query.delete()
            db.session.commit()
        
        file_base64 = request.json.get('file')
        file_bytes = base64.b64decode(file_base64)
        file = BytesIO(file_bytes)
        df = pd.read_excel(file, engine='openpyxl')
        data = df.values.tolist()
        for dt in data:
            DataTrain(
                nama=dt[0],
                transportasi=dt[1],
                status_ayah=dt[2],
                pekerjaan_ayah=dt[3],
                penghasilan_ayah=dt[4],
                status_ibu=dt[5],
                pekerjaan_ibu=dt[6],
                penghasilan_ibu=dt[7],
                jarak_rumah=dt[8],
                jumlah_tanggungan=dt[9],
                kelas=dt[10]
            )
            
        data_train = [v.to_list()[1:11] for v in DataTrain.query.all()]
        dk = Metode.konversi(copy.deepcopy(data_train))
        dn = Metode.normalisasi(copy.deepcopy(dk))
        Metode.train(copy.deepcopy(dn))
        
        return jsonify(
            message="Data imported successfully",
            data=None
        )
        
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500

@data.route('/test')
@Auth.login_required
def test() :
    try :
        data_tests = [v.to_dict() for v in DataTest.query.all()]
        return jsonify(
            message="Data train loaded successfully",
            data=data_tests
        )
        
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500
        
@data.route('/test/import', methods=["POST"])
@Auth.login_required
def testImport() :
    try :
        val = Validator(request, {
            'file': ['required', 'base64'],
            'empty': ['boolean'],
        })
        
        if not val.validate() :
            return jsonify(
                status=False,
                message='Invalid field.',
                errors=val.getErrors()
            ), 400
            
        if request.json.get('empty') :
            DataTest.query.delete()
            db.session.commit()
        
        file_base64 = request.json.get('file')
        file_bytes = base64.b64decode(file_base64)
        file = BytesIO(file_bytes)
        df = pd.read_excel(file, engine='openpyxl')
        data = df.values.tolist()
        # if not Metode.validasi(data) :
        #     return jsonify(
        #         message="Import failed, there is incorrect data.",
        #         data=None
        #     ), 400
        for dt in data:
            DataTest(
                nama=dt[0],
                transportasi=dt[1],
                status_ayah=dt[2],
                pekerjaan_ayah=dt[3],
                penghasilan_ayah=dt[4],
                status_ibu=dt[5],
                pekerjaan_ibu=dt[6],
                penghasilan_ibu=dt[7],
                jarak_rumah=dt[8],
                jumlah_tanggungan=dt[9],
                kelas=dt[10]
            )
            
        data_origin = [v.to_list() for v in DataTest.query.all()]
        data_tests = [v[1:11] for v in data_origin]
        dk = Metode.konversi(copy.deepcopy(data_tests))
        dn = Metode.normalisasi(copy.deepcopy(dk))
        dt = Metode.uji(copy.deepcopy(dn))
        accuracy, recall, precission, F1Score, TP, TN, FP, FN = Metode.calcResult(dt)
        
        setVariable("TP", TP)
        setVariable("TN", TN)
        setVariable("FP", FP)
        setVariable("FN", FN)
        setVariable("accuracy", accuracy)
        setVariable("recall", recall)
        setVariable("precission", precission)
        setVariable("F1Score", F1Score)
        
        DataResult.query.delete()
        db.session.commit()
        
        for i, v in enumerate(data_origin):
            DataResult(
                nama=v[0],
                transportasi=v[1],
                status_ayah=v[2],
                pekerjaan_ayah=v[3],
                penghasilan_ayah=v[4],
                status_ibu=v[5],
                pekerjaan_ibu=v[6],
                penghasilan_ibu=v[7],
                jarak_rumah=v[8],
                jumlah_tanggungan=v[9],
                kelas='Layak' if dt[i][-2] == 1 else 'Tidak Layak',
            )
            
        return jsonify(
            message="Data imported successfully",
            data=None
        )
        
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500

@data.route('/result')
@Auth.login_required
def result() :
    try :
        data_origin = [v.to_list() for v in DataResult.query.all()]
            
        return jsonify(
            message="Test successfully",
            data={
                "variables": {
                    "w1": Metode.weights[0],
                    "w2": Metode.weights[1],
                    "w3": Metode.weights[2],
                    "w4": Metode.weights[3],
                    "w5": Metode.weights[4],
                    "w6": Metode.weights[5],
                    "w7": Metode.weights[6],
                    "w8": Metode.weights[7],
                    "w9": Metode.weights[8],
                    "bias": Metode.bias,
                    "eta": Metode.eta
                },
                "confussion_matrix": {
                    "accuracy": getVariable("accuracy"),
                    "recall": getVariable("recall"),
                    "precission": getVariable("precission"),
                    "F1Score": getVariable("F1Score"),
                    "TP": getVariable("TP"),
                    "TN": getVariable("TN"),
                    "FP": getVariable("FP"),
                    "FN": getVariable("FN"),
                },
                "result": data_origin,
            }
        )
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500

@data.route('/result/details', methods=['GET'])
def resultDetails() :
    try :
        trains = DataTrain.query.all()
        results = DataResult.query.all()
        data = {
            "accuracy": getVariable("accuracy"),
            "recall": getVariable("recall"),
            "precission": getVariable("precission"),
            "F1Score": getVariable("F1Score"),
            "TP": getVariable("TP"),
            "TN": getVariable("TN"),
            "FP": getVariable("FP"),
            "FN": getVariable("FN"),
            "layak": 0,
            "tidak_layak": 0,
            "total_data_latih": len(trains),
            "total_data_uji": len(results)
        }
        
        for v in results:
            if (v.kelas.lower() == 'layak') :
                data["layak"] += 1
            else :
                data["tidak_layak"] += 1
                
        return jsonify(
            message="Data train loaded successfully",
            data=data
        )
        
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500
        
@data.route('/result/export', methods=['GET'])
def export_excel():
    tmp_file_path = None
    try:
        results = DataResult.query.all()

        data = [{
            "nama":  r.nama,
            "transportasi":  r.transportasi,
            "status_ayah":  r.status_ayah,
            "pekerjaan_ayah":  r.pekerjaan_ayah,
            "penghasilan_ayah":  r.penghasilan_ayah,
            "status_ibu":  r.status_ibu,
            "pekerjaan_ibu":  r.pekerjaan_ibu,
            "penghasilan_ibu":  r.penghasilan_ibu,
            "jarak_rumah":  r.jarak_rumah,
            "tanggungan":  r.jumlah_tanggungan,
            "class": r.kelas 
        } for r in results]

        df = pd.DataFrame(data)

        with tempfile.NamedTemporaryFile(delete=False, suffix='.xlsx') as tmp_file:
            tmp_file_path = tmp_file.name
            df.to_excel(tmp_file_path, index=False)

        response = send_file(tmp_file_path, as_attachment=True, download_name="exported_data.xlsx")
        
        @after_this_request
        def cleanup(response):
            try:
                os.remove(tmp_file_path)
            except Exception as e:
                print(f"Error removing temporary file: {e}")
            return response

        return response

    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500

def setVariable(key, value) :
    var = db.session.query(Variable).filter_by(key=key).first()
    if (var) :
      var.value = value
      db.session.add(var)
      db.session.commit()
      return True
    Variable(key, value)
    return True

def getVariable(key) :
    var = db.session.query(Variable).filter_by(key=key).first()
    if (var) :
      return var.value
    return None