package com.ims.Model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Products {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pid;
	private String pname;
	private String pcatogory;
	private int pqualtity;
	private double pprice;
	private double tpprice;
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Products(int pid, String pname, String pcatogory, int pqualtity, double pprice, double tpprice) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pcatogory = pcatogory;
		this.pqualtity = pqualtity;
		this.pprice = pprice;
		this.tpprice = tpprice;
	}
	@Override
	public String toString() {
		return "Products [pid=" + pid + ", pname=" + pname + ", pcatogory=" + pcatogory + ", pqualtity=" + pqualtity
				+ ", pprice=" + pprice + ", tpprice=" + tpprice + "]";
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcatogory() {
		return pcatogory;
	}
	public void setPcatogory(String pcatogory) {
		this.pcatogory = pcatogory;
	}
	public int getPqualtity() {
		return pqualtity;
	}
	public void setPqualtity(int pqualtity) {
		this.pqualtity = pqualtity;
	}
	public double getPprice() {
		return pprice;
	}
	public void setPprice(double pprice) {
		this.pprice = pprice;
	}
	public double getTpprice() {
		return tpprice;
	}
	public void setTpprice(double tpprice) {
		this.tpprice = tpprice;
	}	
	


}
