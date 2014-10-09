package com.gp.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {

	/*-------------------------------------------------------------------
	 *	GESTION DE SON PROPRE COMPTE 
	 ------------------------------------------------------------------
	 */
	// VISUALISER SON COMPTE
	@RequestMapping(value={"/gerer-mon-compte"},method = RequestMethod.GET)
	public String visualiserCompte(ModelMap model){
		model.addAttribute("link", "compte");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();
		Object role =  auth.getAuthorities().toArray()[0].toString();
		System.out.print("login :"+login +"\n role : "+role);
		if(role.equals("ROLE_USER")){
			model.addAttribute("menu", "user");
		}else if(role.equals("ROLE_ADMIN")){
			model.addAttribute("menu", "admin");
		}
		model.addAttribute("action", "visualiser");
		model.addAttribute("title", "visualisation de compte");
		return "compte-user";
		
	}
	@RequestMapping(value={"/gerer-mon-compte/modifier"},method = RequestMethod.GET)
	public String modifiercompte(ModelMap model){
		model.addAttribute("link", "compte");
		model.addAttribute("action", "modifier");
		model.addAttribute("title", "modification de compte");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();
		Object role =  auth.getAuthorities().toArray()[0].toString();
		System.out.print("login :"+login +"\n role : "+role);
		if(role.equals("ROLE_USER")){
			model.addAttribute("menu", "user");
		}else if(role.equals("ROLE_ADMIN")){
			model.addAttribute("menu", "admin");
		}
		
		return "compte-user";
	}
}
