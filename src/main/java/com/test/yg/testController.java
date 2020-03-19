package com.test.yg;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class testController {
	@RequestMapping(value = "/yg", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.info("yg test");
		return "home";
	}
}
