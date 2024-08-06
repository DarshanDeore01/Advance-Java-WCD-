package com;
import java.io.Serializable;
public class Employee implements Serializable
{
  public int eno;
  public String ename;
  public double esal;
public Employee() 
{
	super();
	// TODO Auto-generated constructor stub
}
public Employee(int eno, String ename, double esal) {
	super();
	this.eno = eno;
	this.ename = ename;
	this.esal = esal;
}
public int getEno() {
	return eno;
}
public void setEno(int eno) {
	this.eno = eno;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}
public double getEsal() {
	return esal;
}
public void setEsal(double esal) {
	this.esal = esal;
}
@Override
public String toString() {
	return "Employee [eno=" + eno + ", ename=" + ename + ", esal=" + esal + "]";
}


}