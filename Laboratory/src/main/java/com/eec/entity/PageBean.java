package com.eec.entity;

import java.util.List;

public class PageBean<T> {
   private int pc;//  当前页数
   //private int tp;//��ҳ��totao page
   private int tr;//�ܼ�¼��total record  总记录数
   private int ps;//ÿҳ��¼��page size  页数据大小
   private List<T> beanList;//��ǰҳ��¼  
public PageBean() {
	super();
}
public int getPc() {
	return pc;
}
public void setPc(int pc) {
	this.pc = pc;
}
public int getTp() {
	//�����ܼ�¼��
	int tp=tr/ps;
	return tr%ps==0?tp:tp+1;
}

public int getTr() {
	return tr;
}
public void setTr(int tr) {
	this.tr = tr;
}
public int getPs() {
	return ps;
}
public void setPs(int ps) {
	this.ps = ps;
}
public List<T> getBeanList() {
	return beanList;
}
public void setBeanList(List<T> beanList) {
	this.beanList = beanList;
}
}
