# Backend

## Ejecución local (Windows)

Usa el script `launch.bat` para:
- Crear y activar el entorno virtual automáticamente.
- Instalar las dependencias de Python.
- Establecer la variable de entorno para las credenciales de Firebase.
- Lanzar el servidor FastAPI en modo desarrollo.

```
./launch.bat
```

## Ejecución con Docker

Usa el script `launch-docker.bat` para:
- Construir la imagen Docker del backend.
- Lanzar el contenedor, mapeando el puerto 8000 y el archivo de credenciales de Firebase.
- Establecer la variable de entorno necesaria dentro del contenedor.

```
./launch-docker.bat
```

> **Nota:** El archivo de credenciales de Firebase no se sube al repositorio y se monta como volumen en el contenedor.
