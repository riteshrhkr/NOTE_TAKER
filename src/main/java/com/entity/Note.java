package com.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Notes")
public class Note {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // Automatically generate values
	private int id;
	private String title;

	@Column(length = 5000)
	String content;
	private Date addedDate;

	//	Constructors
	public Note(String title, String content, Date addedDate) {
		super();
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}

	public Note(String title, String content) {
		super();
		this.title = title;
		this.content = content;
		this.addedDate = new Date();
	}

	public Note() {
	}

	// Getter and Setter
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

}
