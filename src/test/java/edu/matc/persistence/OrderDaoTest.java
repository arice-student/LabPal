package edu.matc.persistence;

import edu.matc.entity.Order;
import edu.matc.entity.Order;
import edu.matc.entity.User;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * The type Order dao test.
 */
class OrderDaoTest {

    GenericDao orderDao;

    /**
     * Creating the dao.
     */
    @BeforeEach
    void setUp() {
        orderDao = new GenericDao(Order.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

    }

    /**
     * Verifies gets all orders successfully.
     */
    @Test
    void getAllOrdersSuccess() {
        List<Order> orders = orderDao.getAll();
        assertEquals(7, orders.size());
    }


    /**
     * Verifies a order is returned correctly based on id search
     */
    @Test
    void getByIdSuccess() {
        Order retrievedOrder = (Order)orderDao.getById(2);
        assertNotNull(retrievedOrder);
        assertEquals("Books", retrievedOrder.getDescription());
    }

    /**
     * Verify successful insert of a order
     */
    @Test
    void insertSuccess() {

        GenericDao userDao = new GenericDao(User.class);
        User user = (User)userDao.getById(1);
        Order newOrder = new Order("Plates", user);
        user.addOrder(newOrder);

        int id = orderDao.insert(newOrder);

        assertNotEquals(0,id);
        Order insertedOrder = (Order)orderDao.getById(id);
        assertEquals("Plates", insertedOrder.getDescription());
        assertNotNull(insertedOrder.getUser());
        assertEquals(newOrder, insertedOrder);
     }


    /**
     * Verify successful delete of order
     */
    @Test
    void deleteSuccess() {
        orderDao.delete(orderDao.getById(3));
        assertNull(orderDao.getById(3));
    }

    /**
     * Verify successful update of order
     */
    @Test
    void updateSuccess() {
        String description = "Laptops";
        Order orderToUpdate = (Order)orderDao.getById(3);
        orderToUpdate.setDescription(description);
        orderDao.saveOrUpdate(orderToUpdate);
        Order retrievedOrder = (Order)orderDao.getById(3);
        assertEquals(orderToUpdate, retrievedOrder);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Order> orders = orderDao.getByPropertyEqual("description", "Books");
        assertEquals(1, orders.size());
        assertEquals(2, orders.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Order> orders = orderDao.getByPropertyLike("description", "b");
        assertEquals(3, orders.size());
    }
}