@echo off
setlocal
set VENV_DIR=venv
set REQUIREMENTS=requirements.txt
set APP_MODULE=app.main:app

REM Comprobar si existe la carpeta venv
if not exist %VENV_DIR% (
    echo [INFO] Creando entorno virtual...
    python -m venv %VENV_DIR%
)

REM Activar el entorno virtual
call %VENV_DIR%\Scripts\activate.bat

REM Instalar dependencias
echo [INFO] Instalando dependencias...
pip install --upgrade pip
pip install -r %REQUIREMENTS%

REM Lanzar la app FastAPI con Uvicorn
REM Establecer variable de entorno para credenciales de Firebase
set GOOGLE_APPLICATION_CREDENTIALS=%CD%\cosmocrash-8aace-firebase-adminsdk-fbsvc-9f24c46583.json
echo [INFO] Lanzando la app...
uvicorn %APP_MODULE% --reload
endlocal