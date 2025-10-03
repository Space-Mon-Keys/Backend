from fastapi import FastAPI
from app.firebase import write_test_document

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello, Space Apps!"}

@app.post("/firestore-test")
async def firestore_test():
    try:
        write_test_document()
        return {"success": True, "message": "Documento escrito en Firestore"}
    except Exception as e:
        return {"success": False, "error": str(e)}
