# loan
#SELECT book_id, title, borrow_time, author, tag, publisher, publish_year, ISBN, call_number FROM book NATURAL JOIN loan WHERE user_id = '001';

# history
# SELECT book_id, title, borrow_time,return_time, author, tag, publisher, publish_year, ISBN, call_number FROM book NATURAL JOIN history WHERE user_id = '002';

# add
# INSERT INTO book(book_id,publisher,author,title,ISBN,call_number,tag,publish_year) value();
#INSERT INTO publisher value("earth");
#INSERT INTO author value("Martin Luther King Jr.");


# search 
#SELECT book_id, title, author, tag, publisher, publish_year, ISBN, call_number FROM book;

# delete
# insert into book(book_id,publisher,author,title,ISBN,call_number,tag,publish_year ) value("C12121","sun","fong","abc","5354","1243","history","2014");
#DELETE FROM book where  book_id="C12121";

# update
#UPDATE book SET call_number="4353",publish_year='2000' WHERE book_id="C12121";

#"like"  search 
#SELECT book_id, title, author, tag, publisher, publish_year, ISBN, call_number FROM book where book_id LIKE "%00%" AND tag LIKE "%history%";
 
 
#SELECT user_id, book_id, title, borrow_time, author, tag, publisher, publish_year, ISBN, call_number FROM book NATURAL JOIN loan;


#INSERT INTO history(user_id, book_id, borrow_time, return_time) VALUE('001','B1003','2017-5-25','2017-05-29');
# select * from history;

(SELECT book_id FROM loan WHERE user_id='002') UNION (SELECT book_id FROM history WHERE user_id='002');

