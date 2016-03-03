## Dependências
Antes de tudo, atualizaremos o apt-get e instalaremos algumas dependências do Ruby:
```
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```

## RVM
Instalaremos o Ruby através do RVM (Ruby Version Manager: https://rvm.io/):
```
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2.3
rvm use 2.2.3 --default
ruby -v
```

## Bundler
Em seguida, configuraremos o Rubygems para não instalar a documentação de cada pacote localmente e instalaremos o Bundler:
```
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
```

Com isso, temos uma instalação completa de Ruby e conseguiremos passar por boa parte do curso.

## Rails
A última parte do nosso curso envolve a framework Ruby on Rails. Como RoR tem muitas dependências, instalaremos NodeJS:
```
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
```

E finalmente:
```
gem install rails -v 4.2.4
rails -v
```

Voilá!
