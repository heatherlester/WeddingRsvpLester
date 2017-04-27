package rsvp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="guests")
public class Guest {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	private String entree;
	private String numberGuests;
	private Attend attend;
	private boolean kidMeal;
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEntree() {
		return entree;
	}
	public void setEntree(String entree) {
		this.entree = entree;
	}
	public Attend getAttend() {
		return attend;
	}
	public void setAttend(Attend attend) {
		this.attend = attend;
	}
	public boolean isKidMeal() {
		return kidMeal;
	}
	public void setKidMeal(boolean kidMeal) {
		this.kidMeal = kidMeal;
	}
	public String getNumberGuests() {
		return numberGuests;
	}
	public void setNumberGuests(String numberGuests) {
		this.numberGuests = numberGuests;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
