package edu.matc.persistence;

import edu.matc.entity.ContactForm;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * ContactForm Dao test
 */
class ContactFormDaoTest {

    GenericDao contactFormDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        contactFormDao = new GenericDao(ContactForm.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
    }

    /**
     * Verifies gets all forms successfully.
     */
    @Test
    void getAll() {
        List<ContactForm> contactSubmissions = contactFormDao.getAll();
        assertEquals(5, contactSubmissions.size());
    }


    /**
     * Verifies a contact form is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        ContactForm form = new ContactForm("jcoyne@email.com", "This is my second message.", LocalDate.parse("2008-11-09"));
        form.setId(2);
        ContactForm retrievedForm = (ContactForm)contactFormDao.getById(2);
        assertNotNull(retrievedForm);
        assertEquals(form, retrievedForm);
    }

    /**
     * Verify successful insert of a Contact Form
     */
    @Test
    void insertSuccess() {


        ContactForm newForm = new ContactForm(100, "myemail@email.com", "My Message", LocalDate.parse("2018-11-11"));
        int id = contactFormDao.insert(newForm);
        assertNotEquals(0,id);
        ContactForm insertedForm = (ContactForm) contactFormDao.getById(id);
        assertEquals(newForm, insertedForm);
    }

    /**
     * Verify successful delete of a form
     */
    @Test
    void deleteSuccess() {
        contactFormDao.delete(contactFormDao.getById(3));
        assertNull(contactFormDao.getById(3));
    }

    /**
     * Verify successful update of a form
     */
    @Test
    void updateSuccess() {
        String newMessage = "This is my newest message.";
        ContactForm formToUpdate = (ContactForm) contactFormDao.getById(3);
        formToUpdate.setMessage(newMessage);
        contactFormDao.saveOrUpdate(formToUpdate);
        ContactForm retrievedForm = (ContactForm) contactFormDao.getById(3);
        assertEquals(formToUpdate, retrievedForm);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<ContactForm> contactForms = contactFormDao.getByPropertyEqual("email", "jcoyne@email.com");
        assertEquals(2, contactForms.size());
        assertEquals(1, contactForms.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<ContactForm> forms = contactFormDao.getByPropertyLike("email", "@");
        assertEquals(5, forms.size());
    }
}