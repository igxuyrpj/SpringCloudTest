package com.eec.entity;

import java.util.List;

import org.junit.Test;

public class Page<T> {
	private Integer currentPage;//当前页
	private Integer pageSize=6;//每页记录数
	private Integer beginIndex;//开始位置
	private Integer endIndex;//结束位置
	//private Integer pageCount;//共多少页
	private Integer dataCount;//共多少数据记录
	
	 private List<T> beanList;
	 
	public List<T> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getBeginIndex() {
		return beginIndex;
	}
	public void setBeginIndex(Integer beginIndex) {
		this.beginIndex = beginIndex;
	}
	public Integer getEndIndex() {
		return endIndex;
	}
	public void setEndIndex(Integer endIndex) {
		this.endIndex = endIndex;
	}
	public Integer getPageCount() {
		int tp=dataCount/pageSize;
		return dataCount%pageSize==0?tp:tp+1;
		
	}
	
	public Integer getDataCount() {
		return dataCount;
	}
	public void setDataCount(Integer dataCount) {
		this.dataCount = dataCount;
	}


}
