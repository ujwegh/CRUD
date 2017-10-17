package com.project.service;

import com.project.dao.BookDao;
import com.project.model.Book;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ServiceImpl implements com.project.service.Service {
    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    @Transactional
    public void addBook(Book book) {
        this.bookDao.addBook(book);
    }

    @Override
    @Transactional
    public void updateBook(Book book) {
        this.bookDao.updateBook(book);
    }

    @Override
    @Transactional
    public void removeBook(int id) {
        this.bookDao.removeBook(id);
    }

    @Override
    @Transactional
    public Book getBookById(int id) {
        return this.bookDao.getBookById(id);
    }

    @Override
    @Transactional
    public List<Book> listBooks(Long page) {
        return this.bookDao.listBooks(page);
    }

    @Override
    @Transactional
    public List<Book> listBookByTitle(Book book) {
        return this.bookDao.listBookByTitle(book);
    }

    @Override
    @Transactional
    public List<Book> listBookByAuthor(Book book) {
        return this.bookDao.listBookByAuthor(book);
    }

    @Override
    @Transactional
    public List<Book> listBookByReadAlready(Book book) {
        return this.bookDao.listBookByReadAlready(book);
    }

}
