# Recomendación:
# instalar ipython notebook, pandas y matplotlib usando un entorno virtual
# This worked for me ;)
cd $WHATEVER_YOU_WANT
mkdir datascience-training
virtualenv datascience-training
source datascience-traning
pip install ipython["notebook"]
pip install functools32
pip install pandas
pip install -U distribute
pip install matplotlib

# Opción alternativa:
# instalar la distribución Anaconda para python científico: http://docs.continuum.io/anaconda/install.html#anaconda-install
# Es un modo más fácil y completo, aunque más intrusivo para vuestro equipo y configuración de python
