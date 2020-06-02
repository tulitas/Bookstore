package com.Models;

import com.Entities.BookForm;

import java.util.List;

public interface BookFormService {

    void addBookForm(BookForm contact);


    List<BookForm> listBookForm();

    void removeBookForm(long id);


    List<BookForm> getAllById(String id);

}
