package com.eec.service.impl;

import com.eec.entity.Lab;
import com.eec.entity.Msg;
import com.eec.entity.PageBean;
import com.eec.entity.Pagination;
import com.eec.entity.Student;
import com.eec.entity.UserVo;
import com.eec.mapper.UserMapper;
import com.eec.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	

	
	@Override
	public void insertStudent(Student student) {
		// TODO Auto-generated method stub
		userMapper.insertStudent(student);
	}

	@Override
	public Student getStudent(String num) {
		// TODO Auto-generated method stub
		return userMapper.getStudent(num);
	}


	@Override
	public List<Student> getAllStu() {
		// TODO Auto-generated method stub
		return userMapper.getAllStu();
	}

	

	@Override
	public Student getStudentById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getStudentById(id);
	}

	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteStudent(id);
	}

	
//****************************************************************
	@Override
	public void inserNews(Lab lab) {
		// TODO Auto-generated method stub
		userMapper.inserNews(lab);
	}

	@Override
	public List<Lab> getAllNews() {
		// TODO Auto-generated method stub
		return userMapper.getAllNews();
	}

	@Override
	public void deleteNewsById(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteNewsById(id);
	}

	@Override
	public Lab getNewsById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getNewsById(id);
	}

	@Override
	public void updateNews(Lab lab) {
		// TODO Auto-generated method stub
		userMapper.updateNews(lab);
	}

	@Override
	public List<Lab> getAllFiles() {
		// TODO Auto-generated method stub
		return userMapper.getAllFiles();
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Msg> getAllMsg() {
		// TODO Auto-generated method stub
		return userMapper.getAllMsg();
	}

	@Override
	public void insertMsg(Msg msg) {
		// TODO Auto-generated method stub
		userMapper.insertMsg(msg);
	}

	

	@Override
	public List<Lab> findAll(PageBean<Lab> pageBean) {
		// TODO Auto-generated method stub
		
		return userMapper.findAll(pageBean);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return userMapper.getCount();
	}


}
