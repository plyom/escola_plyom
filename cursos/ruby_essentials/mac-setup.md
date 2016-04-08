## Homebrew
Antes de tudo, instalaremos o Homebrew. Ele nos permitirá instalar e compilar pacotes de software diretamente da fonte:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## RVM
Instalaremos o Ruby através do RVM (Ruby Version Manager: https://rvm.io/):
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
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
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 0.12
nvm alias default 0.12
nvm use 0.12
```

E finalmente:
```
gem install rails -v 4.2.4
rails -v
```

## PostgreSQL
Para o PostgreSQL, vamos adicionar um novo repositório e instalar uma versão recente do Postgres 9.3.
```
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.3 libpq-dev
```

A instalação do Postgres não faz o setup de um usuário para você.
```
sudo -u postgres createuser tiago -s
```
Lembre-se de trocar `tiago` pelo seu username.

## Atom (Opcional)
O editor que texto que será usado durante o curso será o Atom:
```
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
```
