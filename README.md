# osan_dev

お産合宿の開発専用リポジトリです。

## RubyとRailsのインストール

ここではこRubyとRails5のインストールから実際にローカルサーバを立ち上げる過程を記述します。

>- 参考:[Setup Ruby On Rails on
macOS 10.12 Sierra](https://gorails.com/setup/osx/10.12-sierra)

### Rubyのインストール

homebrewなかった場合は以下のコマンドを実行

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Rubyのインストール

```
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.4.0
rbenv global 2.4.0
# 確認
ruby -v
```

### Railsのインストール

```
gem install rails -v 5.1.1
rbenv rehash

# 確認
rails -v
# Rails 5.1.1
```

## osan_devをローカル開発環境に構築する。

### Githubの設定

ここが既に設定済みなら、飛ばして下さい。

```
git config --global color.ui true

# Githubのnameを登録
git config --global user.name "YOUR NAME"

# Githubにemailを登録
git config --global user.email "YOUR@EMAIL.com"

# ssh-key生成
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```

生成した公開鍵をGithubの[ssh keys](https://github.com/settings/keys)に貼る。

```
cat ~/.ssh/id_rsa.pub
```

動作確認

```
ssh -T git@github.com

#こんなメッセージ帰ってきたら成功　
Hi excid3! You've successfully authenticated, but GitHub does not provide shell access.
```

### osan_devを構築する、

git cloneしてくる。

```
git clone git@github.com:Fendo181/osan_dev.git
```

Gemfileを更新する。

```
bundle install --without production
```

Migrationを実行してDBを作成する。

```
rails db:migrate
```


Seed(テストデータを作成)

```
rails db:migrate:reset
rails db:migrate
```

後はosan_devのルートディレクトリで以下のコマンドを実行してアプリケーションサーバを立ち上げる

```
rails s
```


herkuにあげる方法

```
git push heroku master
heroku run rake db:migrate
```

ブラウザに`localhost:3000`を叩いてページが表示できれば環境構築は終わりです。お疲れ様でした。
