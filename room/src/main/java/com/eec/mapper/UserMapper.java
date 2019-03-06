package com.eec.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.eec.entity.Room;
import com.eec.entity.Room1;
import com.eec.entity.Student;

@Repository
public interface UserMapper {
	@Select("select * from student where num=#{num}")
	public Student getStudent(@Param("num")  String num);
	public List<Student> getAllStuByWords (String value);
	public void insertStudent(Student student);
	public void insertRoom1(Room1 room1);
	
	public void updateStudent(Student student);
	public void updateClass(Room1 room1);
	public void deleteClass(Integer id);
	public Room1 getClassById(Integer id);
	
	public List<Student> getAllStuByClass1 (String class1);
	public List<Student> getAllStuByCollege (String college);
	public List<Student> getAllStuByName (String value);
	public List<Student> getAllStu ();
	public List<Student> getAllStudents ();
	public Student getStudentById(Integer id);
	//筛选条件
	public List<Student> ChooseConditions (Room1 room1);
		public void updateRoom(Room room);
		public void updateRoom1ById(Integer id);
		public void updateRoom1ByClassNo2(Room1 room1);
		public void deleteRoom(String num);
		public void insertMyRoom(Room room);
	public void deleteStudent(Integer id);
	public Room getRoomByNum (String num);
	public List<Room> getRooms ();
	public void updateRooms(Room room);
	public Room getRoomsById (Integer id);
	public void deleteRooms(Integer id);
	
	
	
}
