package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Movie;
import com.example.demo.services.MovieService;


@Controller
@RequestMapping(value = "/movie/v1")
public class MovieController {

	@Autowired
	MovieService movieservice;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("movie_list");
		List<Movie> movieList = movieservice.getAllMovies();
		model.addObject("movieList", movieList);
		return model;
	}

	@RequestMapping(value = "/addMovie", method = RequestMethod.GET)
	public ModelAndView addMovie() {
		ModelAndView model = new ModelAndView();
		Movie movie = new Movie();
		model.addObject("movieForm", movie);
		model.setViewName("movie_form");
		return model;
	}

	@RequestMapping(value = "/updateMovie/{id}", method = RequestMethod.GET)
	public ModelAndView editMovie(@PathVariable long id) {
		ModelAndView model = new ModelAndView();
		Movie movie = movieservice.getMovieById(id);
		model.addObject("movieForm", movie);
		model.setViewName("movie_form");
		return model;
	}

	@RequestMapping(value = "/saveMovie", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("movieForm") Movie movie) {
		movieservice.saveOrUpdate(movie);
		return new ModelAndView("redirect:/movie/v1/list");
	}

	@RequestMapping(value = "/deleteMovie/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") long id) {
		movieservice.deleteMovie(id);
		return new ModelAndView("redirect:/movie/v1/list");
	}

}
