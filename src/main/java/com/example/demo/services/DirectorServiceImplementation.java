package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Director;
import com.example.demo.model.Movie;
import com.example.demo.repository.DirectorRepository;

@Service
@Transactional
public class DirectorServiceImplementation implements DirectorService {

	@Autowired
	DirectorRepository directorRepository;

	@Override
	public List<Director> getAllDirectors() {
		return (List<Director>) directorRepository.findAll();
	}

	@Override
	public Director getDirectorById(long id) {
		return directorRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Director director) {
		directorRepository.save(director);
	}

	@Override
	public void deleteDirector(long id) {
		directorRepository.deleteById(id);
	}

}
