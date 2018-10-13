package com.stock.mvc.service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.stock.mvc.dao.ILigneCommandeClientDao;
import com.stock.mvc.entities.LigneCommandeClient;
import com.stock.mvc.service.ILigneCommandeClientService;

@Transactional
public class LigneCommandeClientServiceImpl  implements ILigneCommandeClientService{

	
	private ILigneCommandeClientDao dao;
	
	
	public ILigneCommandeClientDao getDao() {
		return dao;
	}

	public void setDao(ILigneCommandeClientDao dao) {
		this.dao = dao;
	}

	@Override
	public LigneCommandeClient save(LigneCommandeClient entity) {
		return dao.save(entity);
	}

	@Override
	public LigneCommandeClient update(LigneCommandeClient entity) {
		return dao.update(entity);
	}

	@Override
	public List<LigneCommandeClient> selectAll() {
		return dao.selectAll();
	}

	@Override
	public LigneCommandeClient getById(Long id) {
		return dao.getById(id);
	}

	@Override
	public void remove(Long id) {
		dao.remove(id);
		
	}

	@Override
	public List<LigneCommandeClient> selectAll(String sortField, String sort) {
		return dao.selectAll(sortField, sort);
	}

	@Override
	public LigneCommandeClient findOne(String paramName, Object paramValue) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LigneCommandeClient findOne(String[] paramNames, Object[] paramValues) {
		return dao.findOne(paramNames, paramValues);
	}

	@Override
	public int findCountBy(String paramName, String paramValue) {
		return dao.findCountBy(paramName, paramValue);
	}

}
