package com.min.Controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.min.Dto.BoardDto;
import com.min.model.IService;

@Controller
public class MainController {
	
	private Logger log = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String loging(BoardDto dto){
		log.debug("main");
		return "main";
	}

	@RequestMapping(value = "/wholeStudent.do", method = RequestMethod.GET)
	public String wholeStudent() {
		return "wholeStudent";
	}
	
	@RequestMapping(value = "/wholeStudent_high.do", method = RequestMethod.GET)
	public String wholeStudent_high() {
		return "wholeStudent_high";
	}
	
	@RequestMapping(value = "/ghostSusang.do", method = RequestMethod.GET)
	public String ghostSusang() {
		return "ghostSusang";
	}
}
