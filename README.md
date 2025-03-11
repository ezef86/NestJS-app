<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master" target="_blank"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#9" alt="Coverage" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

## License

Nest is [MIT licensed](LICENSE).

# EducacionIT App

## Ejecutar el Proyecto con Docker Compose

Sigue estos pasos para ejecutar el proyecto de la aplicación NestJS usando Docker Compose:

1. **Clonar el Repositorio**
   ```bash
   git clone <repository-url>
   cd <repository-directory>
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
