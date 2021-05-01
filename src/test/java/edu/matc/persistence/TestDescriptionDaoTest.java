package edu.matc.persistence;

import edu.matc.entity.TestDescription;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * TestDescription Dao test
 */
class TestDescriptionDaoTest {

    GenericDao testDescriptionDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        testDescriptionDao = new GenericDao(TestDescription.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

    }

    /**
     * Verifies gets all testDescriptions successfully.
     */
    @Test
    void getAll() {
        List<TestDescription> testDescriptions = testDescriptionDao.getAll();
        assertEquals(4, testDescriptions.size());
    }


    /**
     * Verifies a testDescription is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        TestDescription testDescription = new TestDescription("Water Content");
        testDescription.setId(3);
        TestDescription retrievedTestDescription = (TestDescription)testDescriptionDao.getById(3);
        assertNotNull(retrievedTestDescription);
        assertEquals(testDescription, retrievedTestDescription);
    }

    /**
     * Verify successful insert of a testDescription
     */
    @Test
    void insertSuccess() {

        TestDescription newTestDescription = new TestDescription("Osmolality");
        int id = testDescriptionDao.insert(newTestDescription);
        assertNotEquals(0,id);
        TestDescription insertedTestDescription = (TestDescription)testDescriptionDao.getById(id);
        assertEquals(newTestDescription, insertedTestDescription);
    }

    /**
     * Verify successful delete of testDescription
     */
    @Test
    void deleteSuccess() {
        testDescriptionDao.delete(testDescriptionDao.getById(3));
        assertNull(testDescriptionDao.getById(3));
    }

    /**
     * Verify successful update of testDescription
     */
    @Test
    void updateSuccess() {
        String newTestDescriptionName = "Carbs";
        TestDescription testDescriptionToUpdate = (TestDescription) testDescriptionDao.getById(3);
        testDescriptionToUpdate.setTestName(newTestDescriptionName);
        testDescriptionDao.saveOrUpdate(testDescriptionToUpdate);
        TestDescription retrievedTestDescription = (TestDescription) testDescriptionDao.getById(3);
        assertEquals(testDescriptionToUpdate, retrievedTestDescription);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<TestDescription> testDescriptions = testDescriptionDao.getByPropertyEqual("testName", "FTIR");
        assertEquals(1, testDescriptions.size());
        assertEquals(4, testDescriptions.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<TestDescription> testDescriptions = testDescriptionDao.getByPropertyLike("testName", "pear");
        assertEquals(1, testDescriptions.size());
    }
}