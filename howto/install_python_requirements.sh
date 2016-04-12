# Opción recomendada (docker-jupydata):
# Instalar docker (en Ubuntu: sudo apt-get install docker.io)
# Ejecutar: 
docker run -it -p 8888:8888 -v "$(pwd):/notebooks" beevaenriqueotero/docker-jupydata
# Automáticamente descarga un contenedor de 1.4 GB
# Abrir navegador en localhost:8888

# Alternativa 1:
# Construir a partir de Dockerfile: https://github.com/beeva-enriqueotero/docker-jupydata/blob/master/Dockerfile 

# Alternativa 2:
# instalar ipython notebook, pandas, matplotlib, scikit-learn y scipy usando un entorno virtual
# This worked for me ;)
#cd ~ #or $WHATEVER_YOU_WANT
#sudo apt-get install python-pip
#sudo apt-get install python-dev
#sudo pip install virtualenv
#virtualenv datascience-training
#source datascience-training/bin/activate
#pip install ipython["notebook"]
#pip install functools32
#pip install pandas
#pip install -U distribute
#pip install matplotlib
#pip install requests
#pip install scikit-learn
#pip install scipy

# Alternativa 3:
# instalar la distribución Anaconda para python científico: http://docs.continuum.io/anaconda/install.html#anaconda-install
# Es un modo más fácil y completo, aunque más intrusivo para vuestro equipo y configuración de python
