package com.eec.service;

import com.eec.entity.Lab;
import com.eec.entity.Msg;
import com.eec.entity.PageBean;
import com.eec.entity.Student;
import com.eec.entity.UserVo;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserService {
	public void inserNews(Lab lab);
	public List<Lab> getAllNews ();
	public void deleteNewsById(Integer id);
	public Lab getNewsById(Integer id);
	public void updateNews(Lab lab);
	public List<Lab> getAllFiles ();
	
	public List<Msg> getAllMsg ();
	public void insertMsg(Msg msg);
	

	//List<Lab> getNewsByType(UserVo userVo);  
	//  int getCount(String type); 
	
	public List<Lab> findAll(PageBean<Lab> pageBean);  
	
	 public int getCount(); 
	
	
	
	
	//*****************************
	public Student getStudent(String num);
	
	public List<Student> getAllStu ();

	public Student getStudentById(Integer id);
	
	
	public void insertStudent(Student student);
	
	public void updateStudent(Student student);
	public void deleteStudent(Integer id);


}
