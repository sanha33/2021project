package com.crud.bean;

import java.util.Date;

public class BoardVO {
	private int id;
	private String title;
	private String author;
	private String publish;
	private String com;
	
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}


}
