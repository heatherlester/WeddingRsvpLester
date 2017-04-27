package rsvp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class GuestDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("WeddingRsvpLester");
	
	public void insertGuest(Guest guestToAdd){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(guestToAdd);
		em.getTransaction().commit();
		em.close();
		//emfactory.close();
	}

	public List<Guest> getAllGuests() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select g from Guest g";
		TypedQuery<Guest> typedQuery = em.createQuery(q, Guest.class);
		List<Guest> all = typedQuery.getResultList();
		return all;
	}
}
