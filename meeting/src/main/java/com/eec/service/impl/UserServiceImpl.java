package com.eec.service.impl;


import com.eec.entity.Order;
import com.eec.entity.Room;

import com.eec.entity.User;
import com.eec.mapper.UserMapper;
import com.eec.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	

	
//****************************************************8
	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userMapper.insertUser(user);
	}

	@Override
	public User getUserName(String name) {
		// TODO Auto-generated method stub
		return userMapper.getUserName(name);
	}

	@Override
	public void insertRoom(Room room) {
		// TODO Auto-generated method stub
		userMapper.insertRoom(room);
	}

	@Override
	public List<Room> ChooseConditions(Room room) {
		// TODO Auto-generated method stub
		return userMapper.ChooseConditions(room);
	}

	@Override
	public Room getRoomById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getRoomById(id);
	}

	@Override
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		userMapper.insertOrder(order);
	}

	@Override
	public Order getUserOrder(String name) {
		// TODO Auto-generated method stub
		return userMapper.getUserOrder(name);
	}

	@Override
	public void insertNeeds(Order order) {
		// TODO Auto-generated method stub
		userMapper.insertNeeds(order);
	}

	@Override
	public List<Order> getUserNeeds(String name) {
		// TODO Auto-generated method stub
		return userMapper.getUserNeeds(name);
	}

	@Override
	public void delMyNeeds(Integer id) {
		// TODO Auto-generated method stub
		userMapper.delMyNeeds(id);
	}

	@Override
	public void updateRoom1ById(Integer id) {
		// TODO Auto-generated method stub
		userMapper.updateRoom1ById(id);
	}

	

	@Override
	public Room getMeetByDate(String date) {
		// TODO Auto-generated method stub
		return userMapper.getMeetByDate(date);
	}

	@Override
	public Order getOrderMeetById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getOrderMeetById(id);
	}

	@Override
	public void updateRoom1ById2(String date) {
		// TODO Auto-generated method stub
		userMapper.updateRoom1ById2(date);
	}

	@Override
	public List<Room> getAllMeetRoom() {
		// TODO Auto-generated method stub
		return userMapper.getAllMeetRoom();
	}

	@Override
	public void AdminDelRoom(Integer id) {
		// TODO Auto-generated method stub
		userMapper.AdminDelRoom(id);
	}

	@Override
	public void updateRoom(Room room) {
		// TODO Auto-generated method stub
		userMapper.updateRoom(room);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userMapper.getAllUser();
	}

	@Override
	public void AdminDelUser(Integer id) {
		// TODO Auto-generated method stub
		userMapper.AdminDelUser(id);
	}

	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getUserById(id);
	}

	@Override
	public void updateUserAdmin(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUserAdmin(user);
	}

	@Override
	public List<Room> getRoomsByWords(String city) {
		// TODO Auto-generated method stub
		return userMapper.getRoomsByWords(city);
	}


	

}
