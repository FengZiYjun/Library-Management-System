delete from history;
delete from loan;
delete from book;
delete from user;
delete from publisher;
delete from author;


insert into user(user_id,user_name,email,password) value("001","jack","jack@qq,com","12345");
insert into user(user_id,user_name,email,password) value("002","tom","tom@qq,com","12345");
insert into user(user_id,user_name,email,password) value('000','administrator','administrator@fudan.edu.cn','000');

insert into publisher value("sun");
insert into publisher value("moon");

insert into author value("fong");
insert into author value("Mike");

insert into book(book_id,publisher,author,title,ISBN,call_number,tag,publish_year ) value("B1001","sun","fong","GOOD","1234","43121","history","2014");
insert into book(book_id,publisher,author,title,ISBN,call_number,tag,publish_year ) value("B1002","sun","fong","Dream","1224","43021","IT","2015");
insert into book(book_id,publisher,author,title,ISBN,call_number,tag,publish_year ) value("B1003","moon","Mike","Buddy","3144","4761","novel","2005");


insert into loan(user_id,book_id,borrow_time) value("001","B1002","2017-5-23");
insert into loan(user_id,book_id,borrow_time) value("001","B1003","2017-5-25");

insert into history(user_id, book_id, borrow_time, return_time) value('002','B1001','2010-1-1','2010-3-1');






