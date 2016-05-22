sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev nginx
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
set -i
source ~/.bashrc
pyenv install 3.5.1
pyenv global 3.5.1
pip install --upgrade pip
pip install django uwsgi django-bootstrap-form
sudo cp /home/myproject/uwsgi /etc/init.d/
service uwsgi start
sudo ln -s /home/myproject/myproject_nginx.conf /etc/nginx/sites-enabled/
sudo /etc/init.d/nginx restart
