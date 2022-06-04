# HTTPリクエストが来た時のWebアプリの処理
require "sinatra.rb"
require "mysql2.rb"

get "/" do
    client = Mysql2::Client.new(host: "localhost", username: "dbuser", password: "dbpass", database: "booklist", encording: "utf8")
    
    @records = client.query("select * from books order by created_at desc")
    
    erb :booklist
end

post "/" do
    client = Mysql2::Client.new(host: "localhost", username: "dbuser", password: "dbpass", database: "booklist", encording: "utf8")
    
    book_title = params["book_title"]
    statement = client.prepare("insert into books (book_title) values(?)")
    statement.execute(book_title)
    
    @records = client.query("select * from books order by created_at desc")
    
    erb :booklist
end
# サーバの起動
# ruby app.rb -o $IP -p $PORT