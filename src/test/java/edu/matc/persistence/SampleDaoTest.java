package edu.matc.persistence;

import edu.matc.entity.Sample;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Sample Dao test
 */
class SampleDaoTest {

    GenericDao sampleDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        sampleDao = new GenericDao(Sample.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

    }

    /**
     * Verifies gets all samples successfully.
     */
    @Test
    void getAll() {
        List<Sample> samples = sampleDao.getAll();
        assertEquals(4, samples.size());
    }


    /**
     * Verifies a sample is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        Sample sample = new Sample(4, "SB-333", "Amber Bottle", "-20C", "20100001", "99.95%", LocalDate.parse("2020-07-06"));
        Sample retrievedSample = (Sample)sampleDao.getById(4);
        assertNotNull(retrievedSample);
        assertEquals(sample, retrievedSample);
    }

    /**
     * Verify successful insert of a sample
     */
    @Test
    void insertSuccess() {

        LocalDate date = LocalDate.parse("2020-09-09");
        Sample newSample = new Sample("Tums", "PTFE bottle", "25C", "TUM2020001", "10 mg", date);
        int id = sampleDao.insert(newSample);
        assertNotEquals(0,id);
        Sample insertedSample = (Sample)sampleDao.getById(id);
        assertEquals(newSample, insertedSample);
    }

    /**
     * Verify successful delete of sample
     */
    @Test
    void deleteSuccess() {
        sampleDao.delete(sampleDao.getById(3));
        assertNull(sampleDao.getById(3));
    }

    /**
     * Verify successful update of sample
     */
    @Test
    void updateSuccess() {
        String newSampleName = "Carbs";
        Sample sampleToUpdate = (Sample) sampleDao.getById(3);
        sampleToUpdate.setName(newSampleName);
        sampleDao.saveOrUpdate(sampleToUpdate);
        Sample retrievedSample = (Sample) sampleDao.getById(3);
        assertEquals(sampleToUpdate, retrievedSample);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Sample> samples = sampleDao.getByPropertyEqual("temperature", "25C");
        assertEquals(2, samples.size());
        assertEquals(1, samples.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Sample> samples = sampleDao.getByPropertyLike("temperature", "C");
        assertEquals(4, samples.size());
    }
}