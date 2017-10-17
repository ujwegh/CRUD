package com.project.dao;

import com.project.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;


@Repository
public class BooksDao implements BookDao {
    private static final Logger logger = LoggerFactory.getLogger(BooksDao.class);
    private static final int limitResultsPerPage = 10;
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("Book saved. Book details: " + book);
    }

    @Override
    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("Book updated. Book details: " + book);
    }

    @Override
    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, id);
        if (book != null) {
            session.delete(book);
        }
        logger.info("Book removed. Book details: " + book);
    }

    @Override
    public Book getBookById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, id);
        logger.info("Book loaded by id. Book details: " + book);
        return book;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBooks(Long page) {
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Book ", Book.class);
        query.setFirstResult((int) (page - 1) * limitResultsPerPage);
        query.setMaxResults(limitResultsPerPage);
        List<Book> bookList = query.list();
        for (Book book : bookList)
            logger.info("Book list: " + book);
        return bookList;
    }

    @SuppressWarnings("unchecked")
    public List<Book> listBookByTitle(Book bookz) {
        List<Book> result = new ArrayList<>();
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book ", Book.class).list();

        for (Book book : bookList) {
            if (bookz.getTitle().equals(book.getTitle())) {
                result.add(book);
                logger.info("Result book list by Title: " + book);
            }
        }

        return result;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBookByAuthor(Book bookz) {
        List<Book> result = new ArrayList<>();
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book ", Book.class).list();

        for (Book book : bookList) {
            if (bookz.getAuthor().equals(book.getAuthor())) {
                result.add(book);
                logger.info("Result book list by Author: " + book);
            }
        }

        return result;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBookByReadAlready(Book bookz) {
        List<Book> result = new ArrayList<>();
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book ", Book.class).list();

        for (Book book : bookList) {
            if (bookz.isReadAlready() == book.isReadAlready()) {
                result.add(book);
                logger.info("Result book list by ReadAlready: " + book);
            }
        }

        return result;
    }


}
