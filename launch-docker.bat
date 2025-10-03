@echo off
setlocal
set IMAGE_NAME=myfastapi
set CONTAINER_NAME=myfastapi_container
set CRED_JSON=cosmocrash_firebase.json

REM Construir la imagen Docker
echo [INFO] Construyendo la imagen Docker...
docker build -t %IMAGE_NAME% .

REM Ejecutar el contenedor Docker
echo [INFO] Lanzando el contenedor Docker...
docker run --rm -p 8000:8000 -v %CD%\%CRED_JSON%:/app/cred.json -e GOOGLE_APPLICATION_CREDENTIALS=/app/cred.json --name %CONTAINER_NAME% %IMAGE_NAME%
endlocal