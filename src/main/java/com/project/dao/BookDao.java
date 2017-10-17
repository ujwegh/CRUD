package com.project.dao;

import com.project.model.Book;

import java.util.List;

public interface BookDao {
    public void addBook(Book book);

    public void updateBook(Book book);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks(Long page);

    public List<Book> listBookByTitle(Book book);

    public List<Book> listBookByAuthor(Book book);

    public List<Book> listBookByReadAlready(Book book);

}
