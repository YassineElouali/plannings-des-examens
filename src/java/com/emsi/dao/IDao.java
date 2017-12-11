package com.emsi.dao;

import java.util.List;

public interface IDao<T> {

	public boolean create(T o);

	public boolean update(T o);

	public boolean delete(T o);

	public T getById(int id);

	List<T> getAll();

}
