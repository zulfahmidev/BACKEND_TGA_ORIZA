from extensions import db
from werkzeug.security import generate_password_hash
from datetime import datetime

class Variable(db.Model) :
    
  __tablename__ = 'variables'
  
  id = db.Column(db.Integer, primary_key=True)
  key = db.Column(db.String(255))
  value = db.Column(db.String(255))

  def __init__(self, key, value) :      
    self.key = key
    self.value = value
    self.save()

  def save(self) :
      db.session.add(self)
      db.session.commit()