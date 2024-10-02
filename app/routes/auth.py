from flask import Blueprint, request, jsonify
from app.utils.Validator import Validator
from app.models.User import User
from app.models.LoginLog import LoginLog
from flask_bcrypt import check_password_hash
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity, get_jti, get_jwt, verify_jwt_in_request
from app.utils import Auth

auth = Blueprint('auth', __name__)

@auth.route('/login', methods=['POST'])
def login() :
    try :

        val = Validator(request, {
            'username': ['required', 'string'],
            'password': ['required', 'string'],
        })
        
        if not val.validate() :
            return jsonify(
            status=False,
            message='Invalid field.',
            errors=val.getErrors()
            ), 400
        
        username = request.json.get('username')
        password = request.json.get('password')
        
        user = User.query.filter_by(username = username).first()
        
        if user is not None and check_password_hash(user.password, str(password)) :
            
            access_token = create_access_token(identity=user.id, fresh=True)            
            
            # Create Login Log
            LoginLog(get_jti(access_token))
            
            return jsonify(
                message = "Your have succesfully logged in.",
                data = {
                    "token": access_token
                }
            ), 200
        return jsonify(
            message="Login failed. Please check your credentials and try again.",
            data=None
        ), 401
        
    except Exception as e:
        return jsonify(
            message=str(e),
            data=None
        ), 500
        
    
@auth.route('/logout', methods=['POST'])
@Auth.login_required
def logout() :
    log = LoginLog.query.filter_by(token_identifier=get_jwt()['jti']).first()
    log.destroy()
    return jsonify(
        message="Successfully Logged Out.",
        data=None
    ), 200

@auth.route('/me')
@Auth.login_required
def me() :
    user = User.query.filter_by(id=get_jwt_identity()).first()
    return jsonify(
        message="Data loaded successfully.",
        data=user.to_dict()
    )