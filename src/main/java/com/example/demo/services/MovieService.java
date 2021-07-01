package com.example.demo.services;

import java.util.List;

import com.example.demo.model.Movie;

public interface MovieService {

	public List<Movie> getAllMovies();

	public Movie getMovieById(long id);

	public void saveOrUpdate(Movie movie);

	public void deleteMovie(long id);

}
