package dao;

public class DaoFactory {

    // Contacts
    private static Contacts contactsDao;

    public static Contacts getContactsDao() {
        if(contactsDao == null) contactsDao = new ContactListDao() ;

        return contactsDao;
    }


}
