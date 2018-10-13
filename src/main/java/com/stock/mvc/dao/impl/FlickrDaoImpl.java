package com.stock.mvc.dao.impl;

import java.io.InputStream;

import javax.swing.JOptionPane;

import org.scribe.model.Token;
import org.scribe.model.Verifier;
import org.springframework.web.client.RestClientException;

import com.flickr4java.flickr.Flickr;
import com.flickr4java.flickr.FlickrException;
import com.flickr4java.flickr.REST;
import com.flickr4java.flickr.RequestContext;
import com.flickr4java.flickr.auth.Auth;
import com.flickr4java.flickr.auth.AuthInterface;
import com.flickr4java.flickr.auth.Permission;
import com.flickr4java.flickr.uploader.UploadMetaData;
import com.stock.mvc.dao.IFlickrDao;




public class FlickrDaoImpl implements IFlickrDao{
	
	private Flickr flickr;
	private UploadMetaData  uploadMetaData =new UploadMetaData();
	private String apiKey="9a34ddcb74c91813fe3117a8bd4f7ea6";
	private String sharedSecret="bdd706cb4fb1d21d";
	
	
	private void connect() {
		flickr= new Flickr(apiKey, sharedSecret, new REST()) ;
		Auth auth =new Auth();
		auth.setPermission(Permission.READ);
		auth.setToken("72157699153970372-d604ad606902a4d7");
		auth.setTokenSecret("e63266d05b82e588");
		RequestContext requestContext=RequestContext.getRequestContext();
		requestContext.setAuth(auth);
		flickr.setAuth(auth);
		
	}
	
	
	
	public void auth() {
		flickr= new Flickr(apiKey, sharedSecret, new REST()) ;
		AuthInterface authInterface=flickr.getAuthInterface();
		Token token=authInterface.getRequestToken();
		System.out.println("token :"+token);
		
		String URL=authInterface.getAuthorizationUrl(token, Permission.DELETE);
		System.out.println("follow this url to understand by yourself");
		System.out.println(URL);
		System.out.println("Paste in the token given to You");
		System.out.println(">>");
		
		String tokenKey=JOptionPane.showInputDialog(null);
		Token requestToken=authInterface.getAccessToken(token, new Verifier(tokenKey));
		System.out.println("Authentification success");
		
		Auth auth=null;
		
		try {
			auth=authInterface.checkToken(requestToken);
		} catch (FlickrException e) {
			e.printStackTrace();
		}
		
		//this token can be used until the user revokes it 
		System.out.println("Token :" +requestToken.getToken());
		System.out.println("Secret"+requestToken.getSecret());
		System.out.println("nsid :"+auth.getUser().getId());
		System.out.println("Realname :"+auth.getUser().getRealName());
		System.out.println("Username :"+auth.getUser().getUsername());
		System.out.println("Permission :"+auth.getPermission().getType());
		
	}
	

	// Enregistrer l'image sur le serveur et envoyer son URL apres dans la BD
	@Override
	public String savePhoto(InputStream photo, String title) throws Exception {
		connect();
		uploadMetaData.setTitle(title);
		String photoId=flickr.getUploader().upload(photo, uploadMetaData);
		return flickr.getPhotosInterface().getPhoto(photoId).getMedium640Url();
	}

}
