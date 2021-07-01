package com.example.demo.services;

import java.util.List;

import com.example.demo.model.Director;

public interface DirectorService {

	public void deleteDirector(long id);

	public void saveOrUpdate(Director director);

	public Director getDirectorById(long id);

	public List<Director> getAllDirectors();

}
