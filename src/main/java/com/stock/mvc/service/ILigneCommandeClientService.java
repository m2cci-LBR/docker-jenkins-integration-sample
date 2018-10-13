package com.stock.mvc.service;

import java.util.List;

import com.stock.mvc.entities.LigneCommandeClient;



public interface ILigneCommandeClientService {
	

	public LigneCommandeClient save (LigneCommandeClient entity);
	public LigneCommandeClient update (LigneCommandeClient entity);
	public List<LigneCommandeClient> selectAll() ;
	public LigneCommandeClient getById(Long id );
	public void remove(Long id);
	public List<LigneCommandeClient> selectAll(String sortField,String sort) ; 
	public LigneCommandeClient findOne (String paramName,Object paramValue);
	public LigneCommandeClient findOne(String [] paramNames ,Object [] paramValues);
	public int findCountBy(String paramName,String paramValue);

}
