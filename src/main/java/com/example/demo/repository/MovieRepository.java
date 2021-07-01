package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Movie;

public interface MovieRepository extends CrudRepository<Movie, Long> {

}
