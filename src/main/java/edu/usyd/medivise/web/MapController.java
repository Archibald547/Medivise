package edu.usyd.medivise.web;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for map.
 */
@Controller
public class MapController {
	
//	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@RequestMapping(value = "/map/", method = RequestMethod.GET)
	public String home() {
		return "map";
	}
	
}