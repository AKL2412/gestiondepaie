package com.gp.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.outils.gp.Fichier;
import com.outils.gp.PassWord;

@Controller
public class LoginController {

	@RequestMapping(value="/",method = RequestMethod.POST)
	public String openApp(ModelMap model,@RequestParam("file") MultipartFile file,HttpServletRequest request){
		String salarie = request.getParameter("salarie");
		String societe = request.getParameter("societe");
		String typedoc = request.getParameter("typedoc");
		String cheminSauvegarde = request.getServletContext().getInitParameter("documents-societes"); 
		cheminSauvegarde += societe+File.separator+salarie;
		System.out.print(Fichier.uploder(file, typedoc, cheminSauvegarde));
		return "home";
	}
	/*
	 * Accueil après authentification
	 */
	@RequestMapping(value={"/","/gestion-de-paie","/gp","/gerer-paie"},method = RequestMethod.GET)
	public String Test(ModelMap model){
		
		//String pass = "junior";//PassWord.generer();
		//System.out.println("Mot de passe : "+pass+"\nHaché : "+PassWord.hacher(pass));
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();
		Object role =  auth.getAuthorities().toArray()[0].toString();
		System.out.print("login :"+login +"\n role : "+role);
		if(!role.equals("ROLE_USER")){
			return "redirect:/admin/";
		}
		return "home";
	}
	
	/*
	 * lien d'authentification
	 */
	@RequestMapping(value="/authentification",method = RequestMethod.GET)
	public String login(ModelMap model){
		return "login";
	}
	
	/*
	 * Pour recuperer l'utilisateur connecté
	 */
	@RequestMapping(value="/utilisateur-connecte",method = RequestMethod.GET)
	public String utilisateurconnecte(ModelMap model){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.print(auth.getName());
		return "utilisateurconnecte";
	}
	
	/*
	 * Accès refusé
	 */
	@RequestMapping(value="/denied",method = RequestMethod.GET)
	public String accesrefuse(ModelMap model){
		return "denied";
	}
	
}
