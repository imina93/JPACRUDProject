package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.skilldistillery.jpacrud.dao.MonsterDAO;
import com.skilldistillery.jpacrud.entities.Monster;

@Controller
public class MonsterController {

	@Autowired
	private MonsterDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String home() {
		return "home";
	}

	@RequestMapping(path = "search.do")
	public String findMonster(int id, Model model) {
		Monster monster = dao.findById(id);
		if (monster != null) {
			model.addAttribute("monster", monster);
		}
		return "searchView";
	}

	@RequestMapping(path = "add.do")
	public String addMonster(Monster monster, Model model) {
		boolean isAdded = dao.addMonster(monster);
		if (isAdded == true) {
			model.addAttribute("isAdded", isAdded);
		}
		return "addView";
	}

	@RequestMapping(path = "get.do")
	public String getMonster(int id, Model model) {
		Monster monster = dao.findById(id);
		model.addAttribute("monster", monster);
		return "updateForm";
	}

	@RequestMapping(path = "update.do")
	public String updateMonster(Monster monster, Model model) {
		boolean isUpdated = dao.updateMonster(monster);
		if (isUpdated) {
			model.addAttribute("isUpdated", isUpdated);
		}
		return "updateView";
	}

	@RequestMapping(path = "delete.do")
	public String deleteMonster(int id, Model model) {
		boolean isDeleted = dao.deleteMonster(id);
		if (isDeleted) {
			model.addAttribute("isDeleted", isDeleted);
		}
		return "deleteView";
	}

	@RequestMapping(path = "findAll.do")
	public String findAll(Model model) {
		model.addAttribute("monsters", dao.findAll());
		return "findAllView";
	}
}
