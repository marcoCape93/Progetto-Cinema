package org.generationitaly.progettocinema.repository;

import java.util.List;

public interface CrudRepository<T, ID> {
	
	void save(T entity);
	
	List<T> findAll();
	
	T findById(ID id);
	
	void delete(T entity);
	
}
