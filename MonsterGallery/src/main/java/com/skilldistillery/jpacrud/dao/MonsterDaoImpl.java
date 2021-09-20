package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Monster;

@Service
@Transactional
public class MonsterDaoImpl implements MonsterDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Monster findById(int monsterId) {
		return em.find(Monster.class, monsterId);
	}

	@Override
	public List<Monster> findAll() {
		String jpql = "SELECT m FROM Monster m";
		return em.createQuery(jpql, Monster.class).getResultList();
	}


	@Override
	public boolean addMonster(Monster monster) {
		em.merge(monster);
		return em.contains(monster);
	}

	@Override
	public boolean updateMonster(Monster monster) {
		Monster updatedMonster = em.find(Monster.class, monster.getId());
		if(updatedMonster != null) {
			updatedMonster.setName(monster.getName());
			updatedMonster.setSize(monster.getSize());
			updatedMonster.setRace(monster.getRace());
			updatedMonster.setAlignment(monster.getAlignment());
			updatedMonster.setChallengeRating(monster.getChallengeRating());
			updatedMonster.setArmorClass(monster.getArmorClass());
			updatedMonster.setDescription(monster.getDescription());
			updatedMonster.setImageUrl(monster.getImageUrl());
		}
		return em.contains(updatedMonster);
	}

	@Override
	public boolean deleteMonster(int monsterId) {
		Monster deletedMonster = em.find(Monster.class, monsterId);
		if(deletedMonster != null) {
			em.remove(deletedMonster);
		}
		return !em.contains(deletedMonster);
	}

}