# add_user
<<<<<<< HEAD

## summary 
サーバ上でsshでログインできるユーザー(sudo権限あり)を鍵と一緒に構築します。

## how to user
以下のシェルを add_user.sh として作成し、
引数にユーザー名と秘密鍵名(pem除く)を入れて実行します。
するとサーバにユーザーと公開鍵・秘密鍵が生成されます。
作成したユーザーのホームディレクトリに秘密鍵(ユーザー名.pem)がありますので
scp等でクライアント側に秘密鍵を移してログインしてください。

例）sh add_user.sh yusoshi server

結果）ユーザー「yusoshi」が追加され、秘密鍵が/home/yusoshi/server.pemとして生成される。
=======
# add_user
>>>>>>> parent of d54452a... README追加
