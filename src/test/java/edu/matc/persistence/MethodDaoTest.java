package edu.matc.persistence;

import edu.matc.entity.Method;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Method Dao test
 */
class MethodDaoTest {

    GenericDao methodDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        methodDao = new GenericDao(Method.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

    }

    /**
     * Verifies gets all methods successfully.
     */
    @Test
    void getAll() {
        List<Method> methods = methodDao.getAll();
        assertEquals(3, methods.size());
    }


    /**
     * Verifies a method is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        Method method = new Method(3, "FTIR Method", "Grape", "draft", LocalDate.parse("2020-02-02"));
        method.setId(3);
        Method retrievedMethod = (Method)methodDao.getById(3);
        assertNotNull(retrievedMethod);
        assertEquals(method, retrievedMethod);
    }

    /**
     * Verify successful insert of a method
     */
    @Test
    void insertSuccess() {

        Method newMethod = new Method(3, "FTIR Method", "Grape", "draft", LocalDate.parse("2020-02-02"));
        // newMethod.setId(10);
        int id = methodDao.insert(newMethod);
        assertNotEquals(0,id);
        Method insertedMethod = (Method)methodDao.getById(id);
        assertEquals(newMethod, insertedMethod);
    }

    /**
     * Verify successful delete of method
     */
    @Test
    void deleteSuccess() {
        methodDao.delete(methodDao.getById(3));
        assertNull(methodDao.getById(3));
    }

    /**
     * Verify successful update of method
     */
    @Test
    void updateSuccess() {
        String newMethodName = "Newest Method";
        Method methodToUpdate = (Method) methodDao.getById(3);
        methodToUpdate.setTitle(newMethodName);
        methodDao.saveOrUpdate(methodToUpdate);
        Method retrievedMethod = (Method) methodDao.getById(3);
        assertEquals(methodToUpdate, retrievedMethod);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Method> methods = methodDao.getByPropertyEqual("title", "HPLC Method");
        assertEquals(1, methods.size());
        assertEquals(1, methods.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Method> methods = methodDao.getByPropertyLike("title", "hod");
        assertEquals(3, methods.size());
    }
}