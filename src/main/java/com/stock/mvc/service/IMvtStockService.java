package com.stock.mvc.service;

import java.util.List;

import com.stock.mvc.entities.MvtStock;


public interface IMvtStockService {
	
	public MvtStock save (MvtStock entity);
	public MvtStock update (MvtStock entity);
	public List<MvtStock> selectAll() ;
	public MvtStock getById(Long id );
	public void remove(Long id);
	public List<MvtStock> selectAll(String sortField,String sort) ; 
	public MvtStock findOne (String paramName,Object paramValue);
	public MvtStock findOne(String [] paramNames ,Object [] paramValues);
	public int findCountBy(String paramName,String paramValue);

}
