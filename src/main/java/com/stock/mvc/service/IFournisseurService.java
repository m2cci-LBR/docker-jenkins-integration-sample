package com.stock.mvc.service;

import java.util.List;

import com.stock.mvc.entities.Fournisseur;

public interface IFournisseurService {
	

	public Fournisseur save (Fournisseur entity);
	public Fournisseur update (Fournisseur entity);
	public List<Fournisseur> selectAll() ;
	public Fournisseur getById(Long id );
	public void remove(Long id);
	public List<Fournisseur> selectAll(String sortField,String sort) ; 
	public Fournisseur findOne (String paramName,Object paramValue);
	public Fournisseur findOne(String [] paramNames ,Object [] paramValues);
	public int findCountBy(String paramName,String paramValue);

}
