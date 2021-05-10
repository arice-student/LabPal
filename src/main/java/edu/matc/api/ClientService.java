//package edu.matc.api;
//
//import com.fasterxml.jackson.core.JsonProcessingException;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.sun.xml.bind.v2.TODO;
//import edu.matc.entity.Client;
//import edu.matc.persistence.GenericDao;
//import lombok.extern.log4j.Log4j2;
//
//import javax.ws.rs.*;
//import javax.ws.rs.core.GenericEntity;
//import javax.ws.rs.core.MediaType;
//import javax.ws.rs.core.Response;
//import java.util.List;
//
///**
// * The type Client service.
// */
//@Log4j2
//@Path("/client")
//public class ClientService {
//
//    // JSON string reference: https://mkyong.com/java/how-to-convert-java-object-to-from-json-jackson/
//
//    /**
//     * Gets all clients.
//     *
//     * @return all clients
//     */
//    @GET
//    @Produces("application/json")
//    public Response getAllClients() {
//        GenericDao dao = new GenericDao(Client.class);
//        List<Client> clients = dao.getAll();
//        String output = formatFoundClients(clients);
//
//        return Response.status(200).entity(output).build();
//    }
//
//    /**
//     * Gets by client name.
//     *
//     * @param name the name
//     * @return the by client name
//     */
//    @GET
//    @Produces("application/json")
//    @Path("/name/{client}")
//    public Response getByClientName(@PathParam("client") String name) {
//        GenericDao dao = new GenericDao(Client.class);
//        List<Client> clients = dao.getByPropertyLike("name", name);
//        String output = formatFoundClients(clients);
//
//        return Response.status(200).entity(output).build();
//
//    }
//
//    /**
//     * Gets by id.
//     *
//     * @param id the id
//     * @return the by id
//     */
//    @GET
//    @Produces("application/json")
//    @Path("{id}")
//    public Response getById(@PathParam("id") int id) {
//        GenericDao dao = new GenericDao(Client.class);
//        Client client = (Client) dao.getById(id);
//        if (client == null) {
//            return Response.status(404).build();
//        }
//        GenericEntity<Client> entity = new GenericEntity<Client>(client) {};
//        return Response.status(200).entity(entity).build();
//    }
//
//
//    /**
//     * Takes a list of clients and formats into a pretty JSON string
//     *
//     * @param clients list of clients
//     * @return JSON formatted string of found clients
//     */
//    public String formatFoundClients(List<Client> clients) {
//        ObjectMapper mapper = new ObjectMapper();
//        String foundClients = "";
//
//        for (Client client : clients) {
//            try {
//                String jsonString = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(client);
//                foundClients += jsonString;
//            } catch (JsonProcessingException e){
//                log.error(e);
//            }
//        }
//        return foundClients;
//    }
//}
