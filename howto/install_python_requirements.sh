# Recomendación:
# instalar ipython notebook, pandas, matplotlib, scikit-learn y scipy usando un entorno virtual
# This worked for me ;)
cd ~ #or $WHATEVER_YOU_WANT
#sudo apt-get install python-pip
#sudo pip install virtualenv
virtualenv datascience-training
source datascience-training/bin/activate
pip install ipython["notebook"]
pip install functools32
pip install pandas
pip install -U distribute
pip install matplotlib
pip install requests
pip install scikit-learn
pip install scipy

# Opción alternativa:
# instalar la distribución Anaconda para python científico: http://docs.continuum.io/anaconda/install.html#anaconda-install
# Es un modo más fácil y completo, aunque más intrusivo para vuestro equipo y configuración de python
