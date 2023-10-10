## Trabajo práctico integrador IA

### Levantar el proyecto en el entorno local

Este repositorio cuenta con un container de Docker que incluye los instrumentos necesarios para poder levantarse localmente un server de Jupyter.

**Clonar el repositorio**
```git clone ...```

**Primer contacto con el proyecto**
Lo primero que hacemos es correr `make build`. Esto nos trae la imagen, e inicializa el servidor de jupyter en https://localhost:10000
Si nos vamos a esa URL, probablemente nos encontremos con una pantalla de login preguntando por una contraseña o token. Para conseguirlo corremos el comando: `make token`, buscamos el token y lo pegamos.

**Iniciando el proyecto todos los días**
Como ya hicimos el build inicial del proyecto, no es necesario más que correr `make up` e inicializaríamos el servidor.
Probablemente necesitemos obtener nuevamente el token, mediante el comando `make token`.

### Comandos útiles

Por el momento, los comandos de `make` existentes son los siguientes:
```bash
make build
    #levanta el servidor por primera vez
make up
    #levanta el servidor una vez ha sido iniciado
make stop
    #apaga el container de docker
make workspace
    #permite abrir una terminal dentro del container
make token
    #nos devuelve el token de autenticación a JupyterLab
```