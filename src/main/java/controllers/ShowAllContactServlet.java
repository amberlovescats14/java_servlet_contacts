package controllers;

import dao.Contacts;
import dao.DaoFactory;
import models.Contact;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "index", urlPatterns = "/")
public class ShowAllContactServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest req,
            HttpServletResponse res
    ) {
        try {
            Contacts contactsDao = DaoFactory.getContactsDao();
            List<Contact> allContacts = contactsDao.getContacts();

            req.setAttribute("allContacts", allContacts);
            req.getRequestDispatcher("/contacts/index.jsp").forward(req,res);

        } catch(IOException | ServletException ex) {
            System.out.printf("ERROR: %s\n", ex);
        }

    }
}
