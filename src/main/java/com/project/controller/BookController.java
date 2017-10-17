package com.project.controller;

import com.project.model.Book;
import com.project.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookController {
    private Service service;

    @Autowired(required = true)
    @Qualifier(value = "Service")
    public void setService(Service service) {
        this.service = service;
    }

    @RequestMapping(value = "books", method = RequestMethod.GET)
    public String listBooks(@RequestParam(value = "page", required = false) Long page, Model model) {
        if (null == page)
            page = 1L;
        model.addAttribute("book", new Book());
        model.addAttribute("listBooks", this.service.listBooks(page));
        model.addAttribute("page", page);

        return "books";
    }

    @RequestMapping(value = "searchbooks")
    public String listBookByTitle(Model model, Book book) {

        model.addAttribute("book", new Book());
        if (book.getTitle() != null)
            model.addAttribute("listBookByTitle", this.service.listBookByTitle(book));
        return "books";
    }

    @RequestMapping(value = "searchbooksbyAuthor")
    public String listBookByAuthor(Model model, Book book) {

        model.addAttribute("book", new Book());
        if (book.getAuthor() != null)
            model.addAttribute("listBookByAuthor", this.service.listBookByAuthor(book));
        return "books";
    }

    @RequestMapping(value = "searchbooksbyReadAlready")
    public String listBookByReadAlready(Model model, Book book) {

        model.addAttribute("book", new Book());
        model.addAttribute("listBookByReadAlready", this.service.listBookByReadAlready(book));
        return "books";
    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book) {
        if (book.getId() == 0) {
            this.service.addBook(book);
        } else {
            this.service.updateBook(book);
        }

        return "redirect:/books";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id) {
        this.service.removeBook(id);

        return "redirect:/books";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, @RequestParam(value = "page", required = false) Long page, Model model) {
        if (null == page) page = 1L;

        model.addAttribute("book", this.service.getBookById(id));
        model.addAttribute("listBooks", this.service.listBooks(page));
        model.addAttribute("page", page);

        return "books";
    }

    @RequestMapping("bookdata/{id}")
    public String bookData(@PathVariable("id") int id, Model model) {
        model.addAttribute("book", this.service.getBookById(id));
        return "bookdata";
    }

}
