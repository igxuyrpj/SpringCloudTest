package com.eec.service.impl;

import com.eec.entity.Room;
import com.eec.entity.Room1;
import com.eec.entity.Student;
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
	public List<Student> getAllStuByWords(String college) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByWords(college);
	}

	@Override
	public List<Student> getAllStuByCollege(String college) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByCollege(college);
	}

	@Override
	public List<Student> getAllStuByClass1(String class1) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByClass1(class1);
	}

	@Override
	public List<Student> getAllStuByName(String name) {
		// TODO Auto-generated method stub
		return userMapper.getAllStuByName(name);
	}

	@Override
	public List<Student> getAllStu() {
		// TODO Auto-generated method stub
		return userMapper.getAllStu();
	}

	@Override
	public List<Student> ChooseConditions(Room1 room1) {
		// TODO Auto-generated method stub
		return userMapper.ChooseConditions(room1);
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

	

	

	@Override
	public void updateRoom(Room room) {
		// TODO Auto-generated method stub
		userMapper.updateRoom(room);
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		userMapper.updateStudent(student);
	}

	@Override
	public Room getRoomByNum(String num) {
		// TODO Auto-generated method stub
		return userMapper.getRoomByNum(num);
	}

	

	@Override
	public void insertMyRoom(Room room) {
		// TODO Auto-generated method stub
		userMapper.insertMyRoom(room);
	}

	@Override
	public void deleteStudent(String num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteRoom(String num) {
		// TODO Auto-generated method stub
		userMapper.deleteRoom(num);
	}

	@Override
	public void updateRoom1ByClassNo2(Room1 room1) {
		// TODO Auto-generated method stub
		userMapper.updateRoom1ByClassNo2(room1);
	}

	@Override
	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		return userMapper.getAllStudents();
	}

	@Override
	public void updateClass(Room1 room1) {
		// TODO Auto-generated method stub
		userMapper.updateClass(room1);
	}

	@Override
	public void deleteClass(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteClass(id);
	}

	@Override
	public Room1 getClassById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getClassById(id);
	}

	@Override
	public List<Room> getRooms() {
		// TODO Auto-generated method stub
		return userMapper.getRooms();
	}

	@Override
	public Room getRoomsById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getRoomsById(id);
	}

	@Override
	public void deleteRooms(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteRooms(id);
	}

	@Override
	public void insertRoom1(Room1 room1) {
		// TODO Auto-generated method stub
		userMapper.insertRoom1(room1);
	}

	@Override
	public void updateRoom1ById(Integer id) {
		// TODO Auto-generated method stub
		userMapper.updateRoom1ById(id);
	}




}
