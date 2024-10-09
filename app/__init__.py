from flask import Flask
import os
from dotenv import load_dotenv
from .routes.auth import auth
from .routes.data import data
from config import InitConfig
from extensions import db, jwt
from .models.DataTrain import DataTrain
from .utils import Metode
import copy

import collections
collections.Iterable = collections.abc.Iterable

app = Flask(__name__)
# app.static_folder = 'static'

load_dotenv('.env')

with app.app_context():
  InitConfig(app)

  jwt.init_app(app)
  db.init_app(app)

  app.register_blueprint(auth, url_prefix='/api/auth')
  app.register_blueprint(data, url_prefix='/api/data')
  
  data_train = [v.to_list()[1:11] for v in DataTrain.query.all()]
  Metode.trains(data_train)