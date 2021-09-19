package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Monster {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;	
	private String size;
	private String race;
	private String alignment;
	@Column(name = "challenge_rating")
	private int challengeRating;
	@Column(name = "armor_class")
	private int armorClass;
	private String description;
	@Column(name = "image_url")
	private String imageUrl;
	
	
	
	public Monster() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getRace() {
		return race;
	}

	public void setRace(String race) {
		this.race = race;
	}

	public String getAlignment() {
		return alignment;
	}

	public void setAlignment(String alignment) {
		this.alignment = alignment;
	}

	public int getChallengeRating() {
		return challengeRating;
	}

	public void setChallengeRating(int challengeRating) {
		this.challengeRating = challengeRating;
	}

	public int getArmorClass() {
		return armorClass;
	}

	public void setArmorClass(int armorClass) {
		this.armorClass = armorClass;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Monster id:");
		builder.append(id);
		builder.append(", Name: ");
		builder.append(name);
		builder.append(", Size: ");
		builder.append(size);
		builder.append(", Race: ");
		builder.append(race);
		builder.append(", Alignment: ");
		builder.append(alignment);
		builder.append(", Challenge Rating: ");
		builder.append(challengeRating);
		builder.append(", Armor Class: ");
		builder.append(armorClass);
		builder.append(", Description: ");
		builder.append(description);
		builder.append(", Image Url : ");
		builder.append(imageUrl);
		builder.append(".");
		return builder.toString();
	}



}
