package com.shop.model;

import java.util.Date;

public class InformVO {
	private int idx;
	private String inname;
	private String intit;
	private String incon;
	private Date rdate;
	private int visited;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public String getInname() {
		return inname;
	}
	public void setInname(String inname) {
		this.inname = inname;
	}
	public String getIntit() {
		return intit;
	}
	public void setIntit(String intit) {
		this.intit = intit;
	}
	public String getIncon() {
		return incon;
	}
	public void setIncon(String incon) {
		this.incon = incon;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	
	
}
