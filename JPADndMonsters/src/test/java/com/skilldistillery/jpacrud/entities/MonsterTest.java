package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MonsterTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Monster monster;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPADndMonsters");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		monster = em.find(Monster.class, 1);
	}
	

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		monster = null;
		
	}

	@Test
	void test_Monster_entity_mapping() {
		assertNotNull(monster);
		assertEquals("Abeloth", monster.getName());
		
	}
	@Test
	void test_Monster_table_mapping( ) {
		assertNotNull(monster);
		assertEquals("abberation", monster.getRace());
		assertEquals("large", monster.getSize());
	}

}
