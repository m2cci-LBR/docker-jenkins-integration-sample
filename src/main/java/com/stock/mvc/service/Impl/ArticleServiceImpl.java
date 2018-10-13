package com.stock.mvc.service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.stock.mvc.dao.IArticleDao;
import com.stock.mvc.entities.Article;
import com.stock.mvc.service.IArticleService;

@Transactional // pour dire que toutes les methodes du service sont transactionnel
				// c a d je vais faire interaction avec la base de donnees
public class ArticleServiceImpl implements IArticleService {

	private IArticleDao articleDao;

	public IArticleDao getArticleDao() {
		return articleDao;
	}

	public void setArticleDao(IArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	@Override
	public Article save(Article entity) {
		return articleDao.save(entity);
	}

	@Override
	public Article update(Article entity) {
		return articleDao.update(entity);
	}

	@Override
	public List<Article> selectAll() {
		return articleDao.selectAll();
	}

	@Override
	public Article getById(Long id) {
		return articleDao.getById(id);
				}

	@Override
	public void remove(Long id) {
		articleDao.remove(id);

	}

	@Override
	public List<Article> selectAll(String sortField, String sort) {
		return articleDao.selectAll(sortField, sort);
	}

	@Override
	public Article findOne(String paramName, Object paramValue) {
		return articleDao.findOne(paramName, paramValue);
	}

	@Override
	public Article findOne(String[] paramNames, Object[] paramValues) {
		return articleDao.findOne(paramNames, paramValues);
	}

	@Override
	public int findCountBy(String paramName, String paramValue) {
		return articleDao.findCountBy(paramName, paramValue);
	}

}
