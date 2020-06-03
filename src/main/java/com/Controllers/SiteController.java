package com.Controllers;

import com.Entities.BookForm;
import com.Models.BookFormService;
import com.Repositories.BookFormServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")

public class SiteController {
    private BookFormService bookFormService = new BookFormServiceImpl();


    @RequestMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/addNewBook")
    public ModelAndView addNewBook() {
        return new ModelAndView("addNewBook");
    }
}

