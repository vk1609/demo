package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Movie;
import com.example.demo.repository.MovieRepository;

@Service
@Transactional
public class MovieServiceImplementaion implements MovieService {

	@Autowired
	MovieRepository movieRepository;

	@Override
	public List<Movie> getAllMovies() {
		return (List<Movie>) movieRepository.findAll();
	}

	@Override
	public Movie getMovieById(long id) {
		return movieRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Movie movie) {
		movieRepository.save(movie);
	}

	@Override
	public void deleteMovie(long id) {
		movieRepository.deleteById(id);
	}

}
