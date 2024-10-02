from extensions import db
from werkzeug.security import generate_password_hash
from datetime import datetime

class User(db.Model) :
    
  __tablename__ = 'users'
  
  id = db.Column(db.Integer, primary_key=True)
  username = db.Column(db.String(255), nullable=False)
  password = db.Column(db.String(255), nullable=False)
  created_at = db.Column(db.DateTime, nullable=False)
  
  def __init__(self, username: str, password: str) :
    self.username = username.lower().strip()
    self.password = generate_password_hash(password.strip())
    self.created_at = datetime.now()
    self.save()

  def save(self) :
      db.session.add(self)
      db.session.commit()
      
  def to_dict(self):
      return {
          "id": self.id,
          "username": self.username,
          "created_at": self.created_at,
      }