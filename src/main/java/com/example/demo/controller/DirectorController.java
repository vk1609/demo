package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Director;
import com.example.demo.services.DirectorService;


@Controller
@RequestMapping(value = "/director/v1")
public class DirectorController {

	@Autowired
	DirectorService directorService;
	

	 @RequestMapping(value="/list", method=RequestMethod.GET)
	 public ModelAndView list() {
	 ModelAndView model = new ModelAndView("director_list");
	 List<Director> directorList = directorService.getAllDirectors();
	 model.addObject("directorList", directorList);
	 return model;
	 }
	 
	  @RequestMapping(value="/addDirector", method=RequestMethod.GET)
	  public ModelAndView addDirector() {
	  ModelAndView model = new ModelAndView();
	  Director article = new Director();
	  model.addObject("directorForm", article);
	  model.setViewName("director_form");
	  return model;
	  }
	   @RequestMapping(value="/updateDirector/{id}", method=RequestMethod.GET)
	  public ModelAndView editArticle(@PathVariable long id) {
	  ModelAndView model = new ModelAndView();
	  Director director = directorService.getDirectorById(id);
	  model.addObject("directorForm", director);
	  model.setViewName("director_form");
	  return model;
	  }
	  @RequestMapping(value="/saveDirector", method=RequestMethod.POST)
	  public ModelAndView save(@ModelAttribute("directorForm") Director director) 
	  {
		  directorService.saveOrUpdate(director);
	  return new ModelAndView("redirect:/director/v1/list");
	  }
	 
	  @RequestMapping(value="/deleteDirector/{id}", method=RequestMethod.GET)
	  public ModelAndView delete(@PathVariable("id") long id) 
	  {
		  directorService.deleteDirector(id);
	  return new ModelAndView("redirect:/director/v1/list");
	  }

}
