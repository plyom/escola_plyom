Este setup foi executado em um Mac com OS X El Capitain.

## XCode Command Line Developer Tools
Antes de tudo, precisamos preparar o Mac para desenvolver software, para isso, abra o Terminal e digite o seguinte:
(Caso você já use o seu Mac para desenvolver software é possível que já tenha concluído dessa parte.)
```
xcode-select --install
gcc --version
```

Recebendo uma resposta como: Apple LLVM version 7.3.0 (clang-703.0.29)

## Homebrew
Instalaremos o Homebrew. Ele nos permitirá instalar e compilar pacotes de software diretamente da fonte:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
which brew
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
brew install postgresql
```
Uma vez instalado, você receberá algumas instruções na tela, siga-as com fidelidade. No meu caso foram os seguintes comandos:
```
ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```
Por padrão, o usuário do postgresql é o seu username do OS X com senha vazia.

## Atom (Opcional)
O editor que texto que será usado durante o curso será o Atom (https://atom.io/).
Basta acessar o website, fazer o download e executar, conforme qualquer outra aplicação do seu Mac.
