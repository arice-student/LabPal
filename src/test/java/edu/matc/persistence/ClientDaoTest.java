package edu.matc.persistence;

import edu.matc.entity.Client;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Client Dao test
 */
class ClientDaoTest {

    GenericDao clientDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        clientDao = new GenericDao(Client.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

    }

    /**
     * Verifies gets all clients successfully.
     */
    @Test
    void getAll() {
        List<Client> clients = clientDao.getAll();
        assertEquals(6, clients.size());
    }


    /**
     * Verifies a client is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        Client newClient = new Client("Carbs");
        newClient.setId(10);
        Client retrievedClient = (Client)clientDao.getById(3);
        assertNotNull(retrievedClient);
        assertEquals(newClient, retrievedClient);
    }

    /**
     * Verify successful insert of a client
     */
    @Test
    void insertSuccess() {

        Client newClient = new Client("Carbs");
        int id = clientDao.insert(newClient);
        assertNotEquals(0,id);
        Client insertedClient = (Client)clientDao.getById(id);
        assertEquals(newClient, insertedClient);
    }

    /**
     * Verify successful delete of client
     */
    @Test
    void deleteSuccess() {
        clientDao.delete(clientDao.getById(3));
        assertNull(clientDao.getById(3));
    }

    /**
     * Verify successful update of client
     */
    @Test
    void updateSuccess() {
        String newClientName = "Carbs";
        Client clientToUpdate = (Client) clientDao.getById(3);
        clientToUpdate.setName(newClientName);
        clientDao.saveOrUpdate(clientToUpdate);
        Client retrievedClient = (Client) clientDao.getById(3);
        assertEquals(clientToUpdate, retrievedClient);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Client> clients = clientDao.getByPropertyEqual("lastName", "Curry");
        assertEquals(1, clients.size());
        assertEquals(3, clients.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Client> clients = clientDao.getByPropertyLike("lastName", "c");
        assertEquals(3, clients.size());
    }
}