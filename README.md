# Boilerplate - ddp (Docker - Django - Postgres)

Basic requirements (docker and docker-compose)

To install use:

> git clone --recurse-submodules git@github.com:cflb/boilerplate-ddp.git

Enter the directory you just cloned

> cd boilerplate-ddp/

Build containers:

> docker-compose build

Up containers:

> docker-compose up

Open browser:

> localhost

## Django Project Boileplate

1. Rename your project with:
   > python manage.py rename yourprojectname newprojectname

### This project includes:

1. Settings modules for deploying with Azure
2. Django commands for renaming your project and creating a superuser
3. A cli tool for setting environment variables for deployment
