package rsvp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GuestController {
	@Autowired GuestDao dao;
	
	private static final String[] entrees = {"None", "Beef", "Chicken", "Vegetarian"};
	
	@RequestMapping(value="/form")
	public ModelAndView guest(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("rsvpForm");
		modelAndView.addObject("guest", new Guest());
		modelAndView.addObject("entrees", entrees);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/result")
	public ModelAndView processGuest(Guest guest){
		System.out.println("In processGuest");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertGuest(guest);
		System.out.println("value in name fields" + guest.getFirstName() + " " + guest.getLastName());
		modelAndView.setViewName("rsvpResult");
		modelAndView.addObject("g", guest);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/viewAll")
	public ModelAndView viewAll(){
		ModelAndView modelAndView = new ModelAndView();
		List<Guest> allGuests = dao.getAllGuests();
		modelAndView.setViewName("viewAllGuests");
		modelAndView.addObject("all", allGuests);
		
		return modelAndView;
	}
	
	
	
	@Bean
	public GuestDao dao(){
		GuestDao bean = new GuestDao();
		return bean;
	}
}
