package com.eec.service;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.eec.entity.Room;
import com.eec.entity.Room1;
import com.eec.entity.Student;

@Repository
public interface UserService {
	public Student getStudent(String num);
	public List<Student> getAllStuByWords (String college);
	public List<Student> getAllStuByClass1 (String class1);
	public List<Student> getAllStu ();
	public List<Student> ChooseConditions (Room1 room1);
	public void updateRoom(Room room);
	public Room getRoomByNum (String num);
	public void insertMyRoom(Room room);
	public void updateRoom1ById(Integer id);
	public Student getStudentById(Integer id);
	public void deleteStudent(String num);
	public List<Student> getAllStuByName (String name);
	public List<Student> getAllStuByCollege (String college);
	public void insertStudent(Student student);
	public void deleteRoom(String num);
	public void updateStudent(Student student);
	public void deleteStudent(Integer id);
	public void updateClass(Room1 room1);
	public void deleteClass(Integer id);
	public Room1 getClassById(Integer id);
	/*public List<User> getAllUser ();*/


	public void updateRoom1ByClassNo2(Room1 room1);
	public List<Student> getAllStudents ();
	public List<Room> getRooms ();
	public Room getRoomsById (Integer id);
	public void deleteRooms(Integer id);
	public void insertRoom1(Room1 room1);
	
	
}
