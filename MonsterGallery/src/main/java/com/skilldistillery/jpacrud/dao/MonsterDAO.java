package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Monster;

public interface MonsterDAO {
	Monster findById(int monsterId);
	List<Monster> findAll();
	
}
