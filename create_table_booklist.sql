create table booklist.books (
    id int auto_increment not null primary key,
    book_title varchar(100),
    created_at timestamp not null default current_timestamp
);