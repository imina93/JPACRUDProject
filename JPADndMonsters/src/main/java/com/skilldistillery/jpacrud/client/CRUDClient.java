package com.skilldistillery.jpacrud.client;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpacrud.entities.Monster;

public class CRUDClient {
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("VideoStore");
	
// TODO: Need to Create an Update Method
//	public int updateMonster() {
//		EntityManager em = emf.createEntityManager();
//		String jpql = "SELECT m FROM Monster m WHERE email = '' OR email IS NULL";
//		List<Monster> monsters = em.createQuery(jpql, Monster.class).getResultList();
//		int count = 0;
//		
//		em.getTransaction().begin();
//		for (Monster monster : monsters) {
//			count++;
//			customer.setEmail(customer.getFirstName() + "." + customer.getLastName() + "@sdcustomer.org");
//		}
//			
//		em.getTransaction().commit();
//		em.close();
//		return count;
//	}
	
	
	
	
	
		public Monster addNewMonster(Monster monster) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();	
		em.persist(monster);
		System.out.println(monster);

		em.getTransaction().commit();
		em.close();
		return monster;
	}

	public boolean deleteMonster(int monsterId) {
		boolean successful = false;
		EntityManager em = emf.createEntityManager();
		Monster monster = em.find(Monster.class, monsterId);
		if (monster != null) {
			em.getTransaction().begin();
			em.remove(monster);
			em.getTransaction().commit();
		}
		
		successful = !em.contains(monster);
		em.close();
		return successful;
	}

}
