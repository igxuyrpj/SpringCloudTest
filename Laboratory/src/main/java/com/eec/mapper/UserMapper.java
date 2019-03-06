package com.eec.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eec.entity.Lab;
import com.eec.entity.Msg;
import com.eec.entity.PageBean;
import com.eec.entity.Student;


@Repository
public interface UserMapper {
	
	public void inserNews(Lab lab);
	public List<Lab> getAllNews ();
	public void deleteNewsById(Integer id);
	public Lab getNewsById(Integer id);
	public void updateNews(Lab lab);	
	public List<Lab> getAllFiles ();
	
	public List<Msg> getAllMsg ();
	public void insertMsg(Msg msg);
	
	
	 public List<Lab> findAll(PageBean<Lab> pageBean);  
	 public int getCount(); 
	
	
	//***********
	public Student getStudent(String num);
	public void insertStudent(Student student);
	public List<Student> getAllStu ();
	public Student getStudentById(Integer id);
	
	public void deleteStudent(Integer id);

	
}
