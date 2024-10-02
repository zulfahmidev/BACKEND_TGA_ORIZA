from flask import Blueprint, request, jsonify
from app.utils.Validator import Validator
from app.models.DataTrain import DataTrain
from app.models.DataTest import DataTest
from app.utils import Auth, Metode
from io import BytesIO
from extensions import db
import base64
import pandas as pd
import copy

data = Blueprint('data', __name__)

@data.route('/train')
@Auth.login_required
def train() :
    try :
        data_trains = [v.to_dict() for v in DataTrain.query.all()]
        print(len(data_trains))
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
        print(len(data_tests))
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
        if not Metode.validasi(data) :
            return jsonify(
                message="Import failed, there is incorrect data.",
                data=None
            ), 400
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
        data_origin = [v.to_list() for v in DataTest.query.all()]
        data_tests = [v[1:11] for v in data_origin]
        dk = Metode.konversi(copy.deepcopy(data_tests))
        dn = Metode.normalisasi(copy.deepcopy(dk))
        dt = Metode.uji(copy.deepcopy(dn))
        rk = [v[-2] for v in dt]
        accuracy, recall, precission, F1Score, TP, TN, FP, FN = Metode.calcResult(dt)
        
        for i, v in enumerate(data_tests):
            v[-1] = 'Layak' if rk[i] == 1 else 'Tidak Layak'
            dk[i][-1] = rk[i]
            dn[i][-1] = rk[i]
            data_tests[i].insert(0, data_origin[i][0])
            dk[i].insert(0, data_origin[i][0])
            dn[i].insert(0, data_origin[i][0])
            
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
                    "accuracy": accuracy,
                    "recall": recall,
                    "precission": precission,
                    "F1Score": F1Score,
                    "TP": TP,
                    "TN": TN,
                    "FP": FP,
                    "FN": FN,
                },
                "result": {
                    "origin": data_tests,
                    "bobot": dk,
                    "normalisasi": dn,
                },
            }
        )
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500