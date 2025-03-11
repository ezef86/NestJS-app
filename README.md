<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">Un framework de <a href="http://nodejs.org" target="_blank">Node.js</a> progresivo para crear aplicaciones del lado del servidor eficientes y escalables.</p>
    <p align="center">

Nest es un proyecto de código abierto con licencia MIT. Puede crecer gracias a los patrocinadores y al apoyo de los increíbles promotores. Si quieres unirte a ellos, por favor [lea más aquí](https://docs.nestjs.com/support).

## Licencia

Nest tiene [licencia MIT](LICENSE).

## Prerrequisitos

Para ejecutar esta aplicación en NestJS con Docker Compose, es necesario tener instalados los siguientes componentes:

- Node.js
- Docker
- Docker Compose

# Ejecutar NestJS app en docker compose

## Ejecutar el Proyecto

Sigue estos pasos para ejecutar el proyecto de la aplicación NestJS usando Docker Compose:

1. **Clonar el Repositorio**
   ```bash
   git clone https://github.com/ezef86/NestJS-app.git
   cd NestJS-app
   ```

2. **Instalar Dependencias**
   ```bash
   npm install
   ```

3. **Construir y Ejecutar los Contenedores**
   - Primero, baja cualquier contenedor existente:
     ```bash
     docker-compose down
     ```
   - Construye las imágenes de Docker:
     ```bash
     docker-compose build
     ```
   - Inicia los contenedores:
     ```bash
     docker-compose up
     ```

4. **Acceder a la Aplicación**
   - Una vez que los contenedores estén en funcionamiento, puedes acceder a la aplicación NestJS en `http://localhost:3000`.

5. **Detener los Contenedores**
   - Para detener los contenedores en ejecución, usa:
     ```bash
     docker-compose down
     ```

## Variables de Entorno

La aplicación utiliza las siguientes variables de entorno, que están definidas en el archivo `docker-compose.yaml`:
- `PORT=3000`
- `MONGO_DB_URI=mongodb://db-server:27017`
- `MONGO_DB_NAME=app-desafio10`
- `MONGO_DB_USER=root`
- `MONGO_DB_PASS=s3cr3t!`

## Configuración de la Base de Datos

La base de datos MongoDB está configurada para ejecutarse en un contenedor separado. Los detalles de conexión son:
- **Host:** `db-server`
- **Port:** `27017`
- **Username:** `root`
- **Password:** `s3cr3t!`
- **Database Name:** `app-desafio10`
