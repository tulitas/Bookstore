package com.Controllers;

import com.Entities.BookForm;
import com.Models.BookFormService;
import com.Repositories.BookFormServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/")
@Configuration

@ComponentScan("com.Repositories")
public class OptionsController {
    @Autowired

    private BookFormService bookFormService = new BookFormServiceImpl();


    @RequestMapping(value = "/options/create", method = RequestMethod.POST)
    public String options(BookForm bookForm) {

        bookFormService.addBookForm(bookForm);

        return "redirect:/options";
    }

    @RequestMapping(value = "/valid", method = RequestMethod.POST)
    public String checkBookName(@Valid BookForm bookForm, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/optons";
        } else bookFormService.addBookForm(bookForm);
        return "redirect:/options";
    }

    @RequestMapping(value = "/options")
    public String getAllById(Model model, String id) {
        List<BookForm> bookForms = bookFormService.getAllById(id);
        model.addAttribute("optionsList", bookForms );
        return "/addNewBook";
    }

    @RequestMapping(value = "/options/delete{id}", method = RequestMethod.GET)
    public String removeBookForm(@PathVariable("id") long id) {
        bookFormService.removeBookForm(id);
        return "redirect:/options";
    }



}








