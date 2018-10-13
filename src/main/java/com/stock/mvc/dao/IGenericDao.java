package com.stock.mvc.dao;

import java.util.List;

//Interface generique
public interface IGenericDao <E> {

	public E save (E entity);
	public E update (E entity);
	public List<E> selectAll() ;
	public E getById(Long id );
	public void remove(Long id);
	//selection avec deux parametres qui permettent de faire le Tri
	public List<E> selectAll(String sortField,String sort) ;
	
	//permet de recuperer un objet en passant le nom du parametre et sa valeur 
	public E findOne (String paramName,Object paramValue);
	
	public E findOne(String [] paramNames ,Object [] paramValues);
	
	public int findCountBy(String paramName,String paramValue);
}