# HTTPリクエストが来た時のWebアプリの処理
require "sinatra.rb"

get "/" do
    erb :booklist
end

post "/" do
    erb :booklist
end
# サーバの起動
# ruby app.rb -o $IP -p $PORT