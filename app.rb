# HTTPリクエストが来た時のWebアプリの処理
require "sinatra.rb"

get "/" do
    erb :index
end

post "/" do
    erb :sent
end
# サーバの起動
# ruby app.rb -o $IP -p $PORT