from extensions import db
from werkzeug.security import generate_password_hash
from datetime import datetime

class DataTrain(db.Model) :
    
  __tablename__ = 'data_trains'
  
  
  id = db.Column(db.Integer, primary_key=True)
  nama = db.Column(db.String(255))
  transportasi = db.Column(db.String(255))
  status_ayah = db.Column(db.String(255))
  pekerjaan_ayah = db.Column(db.String(255))
  penghasilan_ayah = db.Column(db.String(255))
  status_ibu = db.Column(db.String(255))
  pekerjaan_ibu = db.Column(db.String(255))
  penghasilan_ibu = db.Column(db.String(255))
  jarak_rumah = db.Column(db.String(255))
  jumlah_tanggungan = db.Column(db.String(255))
  kelas = db.Column(db.String(255))
  created_at = db.Column(db.DateTime, nullable=False)
  
  def __init__(self, 
    nama: str, 
    transportasi: str, 
    status_ayah: str, 
    pekerjaan_ayah: str, 
    penghasilan_ayah: str, 
    status_ibu: str, 
    pekerjaan_ibu: str, 
    penghasilan_ibu: str, 
    jarak_rumah: str, 
    jumlah_tanggungan: str,
    kelas: str
    ) :
    
    self.nama = nama
    self.transportasi = transportasi
    self.status_ayah = status_ayah
    self.pekerjaan_ayah = pekerjaan_ayah
    self.penghasilan_ayah = penghasilan_ayah
    self.status_ibu = status_ibu
    self.pekerjaan_ibu = pekerjaan_ibu
    self.penghasilan_ibu = penghasilan_ibu
    self.jarak_rumah = jarak_rumah
    self.jumlah_tanggungan = jumlah_tanggungan
    self.kelas = kelas
    self.created_at = datetime.now()
    self.save()

  def save(self) :
      db.session.add(self)
      db.session.commit()
      
  def to_dict(self):
      return {
          "id": self.id,
          "nama": self.nama,
          "transportasi": self.transportasi,
          "status_ayah": self.status_ayah,
          "pekerjaan_ayah": self.pekerjaan_ayah,
          "penghasilan_ayah": self.penghasilan_ayah,
          "status_ibu": self.status_ibu,
          "pekerjaan_ibu": self.pekerjaan_ibu,
          "penghasilan_ibu": self.penghasilan_ibu,
          "jarak_rumah": self.jarak_rumah,
          "jumlah_tanggungan": self.jumlah_tanggungan,
          "kelas": self.kelas,
          "created_at": self.created_at
      }
      
  def to_list(self):
      return [ 
        self.nama, self.transportasi, self.status_ayah, self.pekerjaan_ayah, self.penghasilan_ayah, self.status_ibu, self.pekerjaan_ibu, self.penghasilan_ibu, self.jarak_rumah, self.jumlah_tanggungan, self.kelas
      ]