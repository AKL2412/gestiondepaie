package com.gp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gp.domain.Role;
import com.gp.domain.Utilisateur;
import com.gp.service.*;
import com.outils.gp.PassWord;
@Controller
@RequestMapping(value="/admin")
public class AdminCTRL {

	@Autowired
	private UtilisateurService utilisateurService;
	
	@RequestMapping(value={"/accueil","/"},method = RequestMethod.GET)
	public String loginReussi(ModelMap model){
		model.addAttribute("link", "accueil");
		//*
		Role r = new Role();
		r.setRoleId(2);
		r.setCode("ROLE_USER");
		Utilisateur u = new Utilisateur();
		u.setLogin("user");
		u.setMotdepasse(PassWord.hacher("user"));
		u.setEnabled(true);
		//*/
		u.setRole(r);
		utilisateurService.enregistrer(u);
		
		return "admin/accueil";
		
	}
	/*=================================================================
	 * 	GERER LES SOCIETES
	 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
	
	/*--------------------------------------------------------------------
	 * 	ACCUEIL
	 --------------------------------------------------------------------*/
	@RequestMapping(value="/gerer-societes",method = RequestMethod.GET)
	public String gerersociete(ModelMap model){
		model.addAttribute("link", "societe");
		return "admin/gerersociete";
		
	}
	/*--------------------------------------------------------------------
	 * 	CREER
	 --------------------------------------------------------------------*/
	@RequestMapping(value="/gerer-societes/creer",method = RequestMethod.GET)
	public String creersociete(ModelMap model){
		model.addAttribute("link", "societe");
		model.addAttribute("action", "creer");
		
		return "admin/creersociete";
		
	}
	//Modifier
	@RequestMapping(value="/gerer-societes/modifier",method = RequestMethod.GET)
	public String modifiersociete(ModelMap model){
		model.addAttribute("link", "societe");
		model.addAttribute("action", "modifier");
		
		return "admin/modifiersociete";
		
	}
	//Modifier
		@RequestMapping(value="/gerer-societes/lister",method = RequestMethod.GET)
		public String listersociete(ModelMap model){
			model.addAttribute("link", "societe");
			model.addAttribute("action", "lister");
			
			return "admin/listersociete";
			
		}
		
	
	
	/*
	 *********************************************************************
	 *  FIN GERER SOCIETE
	 *****************************************************************
	 */
	/*=================================================================
	 * 	GERER LES UTILISATEURS
	 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
	
	/*--------------------------------------------------------------------
	 * 	ACCUEIL
	 --------------------------------------------------------------------*/
	@RequestMapping(value="/gerer-utilisateurs",method = RequestMethod.GET)
	public String gererutilisateur(ModelMap model){
		model.addAttribute("link", "utilisateur");
		return "admin/gererutilisateur";
		
	}
	
	
	
	/*
	 *********************************************************************
	 *  FIN GERER utilisateur
	 *****************************************************************
	 */
	
	
	/*=================================================================
	 * 	GERER LES Bareme
	 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
	
		/*--------------------------------------------------------------------
		 * 	ACCUEIL
		 --------------------------------------------------------------------*/
	
	@RequestMapping(value="/gerer-baremes",method = RequestMethod.GET)
	public String gererbareme(ModelMap model){
		model.addAttribute("link", "bareme");
		return "admin/gererbareme";
		
	}
	@RequestMapping(value="/gerer-baremes/creer",method = RequestMethod.GET)
	public String creerbareme(ModelMap model){
		model.addAttribute("link", "bareme");
		model.addAttribute("action", "creer");
		return "admin/creerbareme";
		
	}
	@RequestMapping(value="/gerer-baremes/consulter",method = RequestMethod.GET)
	public String listerbareme(ModelMap model){
		model.addAttribute("link", "bareme");
		model.addAttribute("action", "lister");
		return "admin/listerbareme";
		
	}
}
