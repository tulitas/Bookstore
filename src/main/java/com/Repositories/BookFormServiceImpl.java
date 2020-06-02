package com.Repositories;

import com.Entities.BookForm;
import com.Models.BookFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookFormServiceImpl implements BookFormService {
    @Autowired
    private BookFormRepository bookFormRepository;

    @Override
    @Transactional
    public void addBookForm(BookForm bookForm) {
        bookFormRepository.save(bookForm);
    }

    @Override
    @Transactional
    public List<BookForm> listBookForm() {
        return (List<BookForm>) bookFormRepository.findAll();
    }

    @Override
    @Transactional
    public void removeBookForm(long id) {
        bookFormRepository.deleteById(id);
    }

    @Override
    public List<BookForm> getAllById(String id) {
        return bookFormRepository.getAllById();
    }

    @Override
    public List<BookForm> getAll() {
        return bookFormRepository.getAll();
    }
}
