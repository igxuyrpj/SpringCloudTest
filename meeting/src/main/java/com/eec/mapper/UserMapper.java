package com.eec.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.eec.entity.Order;
import com.eec.entity.Room;

import com.eec.entity.User;

@Repository
public interface UserMapper {
	public void insertUser(User user);
	public User getUserName(String name);
	public void insertRoom(Room room);
	public List<Room> ChooseConditions(Room room);
	public Room getRoomById(Integer id);
	public void insertOrder(Order order);
	public Order getUserOrder(String name);
	public void insertNeeds(Order order);
	public List<Order> getUserNeeds(String name);
	public void delMyNeeds(Integer id);
	public void updateRoom1ById(Integer id);
	public void updateRoom1ById2(String date);
	public Room getMeetByDate(String date);
	public Order getOrderMeetById(Integer id);
	public List<Room> getAllMeetRoom();
	public void AdminDelRoom(Integer id);
	public void updateRoom(Room room);
	public List<User> getAllUser();
	
	public void AdminDelUser(Integer id);
	public User getUserById(Integer id);
	public void updateUserAdmin(User user);
	public List<Room> getRoomsByWords(String city);
	

	//*****************************
	
}
