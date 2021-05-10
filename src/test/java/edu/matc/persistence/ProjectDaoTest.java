package edu.matc.persistence;

import edu.matc.entity.Project;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Project Dao test
 */
class ProjectDaoTest {

    GenericDao projectDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        projectDao = new GenericDao(Project.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

    }

    /**
     * Verifies gets all projects successfully.
     */
    @Test
    void getAll() {
        List<Project> projects = projectDao.getAll();
        assertEquals(4, projects.size());
    }


    /**
     * Verifies a project is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        Project project = new Project("Client A", LocalDate.parse("2020-01-01"), "2021-01-01");
        project.setId(1);
        Project retrievedProject = (Project)projectDao.getById(1);
        assertNotNull(retrievedProject);
        assertEquals(project, retrievedProject);
    }

    /**
     * Verify successful insert of a project
     */
    @Test
    void insertSuccess() {

        Project newProject = new Project("Client X", LocalDate.parse("2020-01-01"), "2021-01-01");
        int id = projectDao.insert(newProject);
        assertNotEquals(0,id);
        Project insertedProject = (Project)projectDao.getById(id);
        assertEquals(newProject, insertedProject);
    }

    /**
     * Verify successful delete of project
     */
    @Test
    void deleteSuccess() {
        projectDao.delete(projectDao.getById(3));
        assertNull(projectDao.getById(3));
    }

    /**
     * Verify successful update of project
     */
    @Test
    void updateSuccess() {
        String newProjectClient = "Client XYZ";
        Project projectToUpdate = (Project) projectDao.getById(3);
        projectToUpdate.setClientName(newProjectClient);
        projectDao.saveOrUpdate(projectToUpdate);
        Project retrievedProject = (Project) projectDao.getById(3);
        assertEquals(projectToUpdate, retrievedProject);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Project> projects = projectDao.getByPropertyEqual("clientName", "Client A");
        assertEquals(1, projects.size());
        assertEquals(1, projects.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Project> projects = projectDao.getByPropertyLike("clientName", "A");
        assertEquals(1, projects.size());
    }
}