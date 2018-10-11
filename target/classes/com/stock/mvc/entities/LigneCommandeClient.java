package com.stock.mvc.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LigneCommandeClient  implements Serializable{
	
	
	@Id
	@GeneratedValue
	private Long idLigneCdtClt;
	
	@ManyToOne
	@JoinColumn(name="idArticle")
	private Article article;
	
	@ManyToOne
	@JoinColumn(name="idCommandeClient")
	private CommandeClient commandeClients; 

	public Long getIdLigneCdtClt() {
		return idLigneCdtClt;
	}

	public void setIdLigneCdtClt(Long id) {
		this.idLigneCdtClt = id;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public CommandeClient getCommandeClient() {
		return commandeClients;
	}

	public void setCommandeClient(CommandeClient commandeClient) {
		this.commandeClients = commandeClient;
	}

	
}
