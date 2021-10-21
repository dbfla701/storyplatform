package com.min.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GhostStroryController {
	
	@RequestMapping(value = "/ghostStory.do", method = RequestMethod.GET)
	public String ghostStory() {
		return "ghostStory";
	}

	@RequestMapping(value = "/book.do", method = RequestMethod.GET)
	public String book() {
		return "book";
	}
	
	@RequestMapping(value = "/nonBook.do", method = RequestMethod.GET)
	public String nonBook() {
		return "nonBook";
	}
	
	
}
