import firebase_admin
from firebase_admin import credentials, firestore
import os

def init_firebase():
    cred_path = os.getenv("GOOGLE_APPLICATION_CREDENTIALS")
    if not cred_path:
        raise RuntimeError("La variable de entorno GOOGLE_APPLICATION_CREDENTIALS no está definida.")
    if not firebase_admin._apps:
        cred = credentials.Certificate(cred_path)
        firebase_admin.initialize_app(cred)
