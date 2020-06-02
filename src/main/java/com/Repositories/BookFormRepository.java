package com.Repositories;

import com.Entities.BookForm;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookFormRepository extends CrudRepository<BookForm, Long> {

    @Query(value = "select  id, bookauthor, booktitle, bookname, bookgenre," +
            " bookpages, bookprice from bookstore order by id desc ", nativeQuery = true)
    List<BookForm> getAllById();

    @Query(value = "select * from bookstore order by id desc", nativeQuery = true)
    List<BookForm> getAll();
}
