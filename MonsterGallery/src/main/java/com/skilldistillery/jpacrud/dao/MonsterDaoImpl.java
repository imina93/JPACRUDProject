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
		// TODO Auto-generated method stub
		return em.find(Monster.class, monsterId);		
	}

	@Override
	public List<Monster> findAll() {
		String jpql = "SELECT m FROM Monster m";
		return em.createQuery(jpql, Monster.class).getResultList();
	}

}
