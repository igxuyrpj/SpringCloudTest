package com.eec.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.eec.entity.Room;
import com.eec.entity.Room1;
import com.eec.entity.Student;
import com.eec.service.UserService;

import net.sf.json.JSONArray;

@Controller
//@ComponentScan("com.eec.mapper.UserMapper")
@RequestMapping(value = "/chinaren")
public class FileTest {
	@Autowired
	private UserService service;

	// 访问主页
	@RequestMapping("/index")
	public String Forward() {

		return "redirect:/index.jsp";// getList

	}

	@RequestMapping("/addRoom")
	public String addRoom() {

		return "addRoom";// getList

	}

	
	

	
	
	
	// 获取全部用户
	@RequestMapping("/admin")
	public String getAllUser(Map<String, Object> map) {
		map.put("lists", service.getAllStudents());
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "admin";// getList
		// System.out.println(lists);
		// return "Page1";
	}

	// 获取所有教室
	@RequestMapping("/getRoom")
	public String room(Map<String, Object> map) {
		map.put("lists", service.getAllStu());
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "room";// getList
		// System.out.println(lists);
		// return "Page1";
	}
	
	// 获取所有预约的教室
		@RequestMapping("/getRooms")
		public String getRooms(Map<String, Object> map) {
			map.put("lists", service.getRooms());
			// JSONArray lists = JSONArray.fromObject(empService.getAll());
			// map.put("lists", lists);
			return "reserveRoom";// getList
			// System.out.println(lists);
			// return "Page1";
		}
		// 获取所有预约的教室
				

	// 编辑用户
	@RequestMapping("/update/{id}")
	public ModelAndView edit(@PathVariable("id") Integer id) {
		ModelAndView modelandview = new ModelAndView();
		Student emp = service.getStudentById(id);
		// System.out.println(emp);
		modelandview.addObject("emp", emp);
		// modelandview.setViewName("EditVideos");
		modelandview.setViewName("update");
		return modelandview;
	}

	// 编辑班级
	@RequestMapping("/updateClass/{id}")
	public ModelAndView updateClass(@PathVariable("id") Integer id) {
		ModelAndView modelandview = new ModelAndView();
		Room1 emp = service.getClassById(id);
		// System.out.println(emp);
		modelandview.addObject("emp", emp);
		// modelandview.setViewName("EditVideos");
		modelandview.setViewName("updateClass");
		return modelandview;
	}
	// 编辑班级
		@RequestMapping("/updateRooms/{id}")
		public ModelAndView updateRooms(@PathVariable("id") Integer id) {
			ModelAndView modelandview = new ModelAndView();
			Room emp = service.getRoomsById(id);
			// System.out.println(emp);
			modelandview.addObject("emp", emp);
			// modelandview.setViewName("EditVideos");
			modelandview.setViewName("updateRooms");
			return modelandview;
		}

	// 确定预约教室insertMyRoom
	@RequestMapping("/insertMyRoom1")
	public String insertMyRoom(HttpServletRequest request, Room room) throws UnsupportedEncodingException {
		String date=request.getParameter("date");
		String datepicker=request.getParameter("datepicker");
		room.setDate(date);
		room.setDatepicker(datepicker);
		String id = new String(request.getParameter("id").getBytes("ISO8859-1"), "UTF-8");
		service.insertMyRoom(room);
		service.updateRoom1ById(Integer.parseInt(id));
		// empService.updateVideos(shiping);
		return "redirect:/chinaren/index";
	}
//更新保存
	@RequestMapping("/updateSave")
	public String updateSave(Student student) {

		// room.setState("已预约");
		service.updateStudent(student);
		
		// empService.updateVideos(shiping);
		return "redirect:/chinaren/admin";
	}
	
	@RequestMapping("/addSaveRoom1")
	public String addSaveRoom(Room1 room1) {
		
		long times = System.currentTimeMillis();
		Date time=new Date(times);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//System.out.println(sdf.format(time));
          room1.setDate(sdf.format(time));
		// room.setState("已预约");
		service.insertRoom1(room1);
		// empService.updateVideos(shiping);
		return "redirect:/chinaren/getRoom";
	}

	
	
	@RequestMapping("/updateSaveClass")
	public String updateSaveClass(Room1 room1) {

		// room.setState("已预约");
		service.updateClass(room1);
		// empService.updateVideos(shiping);
		return "redirect:/chinaren/getRoom";
	}

	// 保存更改
	@RequestMapping("/updateSaveRoom")
	public String updateSaveRoom(Room room) {

		// room.setState("已预约");
		service.updateRoom(room);
		// empService.updateVideos(shiping);
		return "redirect:/chinaren/index";
	}
	
	// 保存更改
		@RequestMapping("/updateSaveRoom1")
		public String updateSaveRoom1(Room room) {

			// room.setState("已预约");
			service.updateRoom(room);
			// empService.updateVideos(shiping);
			return "redirect:/chinaren/getRooms";
		}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		service.deleteStudent(id);

		return "redirect:/chinaren/admin";
		// return "ListVideos";
	}

	@RequestMapping("/deleteClass/{id}")
	public String deleteClass(@PathVariable("id") Integer id) {
		service.deleteClass(id);
		

		return "redirect:/chinaren/getRoom";
		// return "ListVideos";
	}


	@RequestMapping("/deleteRooms/{id}")
	public String deleteRooms(@PathVariable("id") Integer id) {
		service.deleteRooms(id);
		

		return "redirect:/chinaren/getRooms";
		// return "ListVideos";
	}

	// 筛选条件
	@RequestMapping("/SelectCondition")
	public String SelectCondition() {

		return "SelectCondition";// getList

	}

	// admin
	@RequestMapping("/alogin")
	public String alogin() {

		return "redirect:/login.jsp";// getList

	}




	// 筛选条件结果
	@RequestMapping("/Creservation")
	public String Creservation() {

		return "Creservation";// getList

	}

	// 预约教室
	@RequestMapping("/reserve")
	public String reserve(HttpServletRequest request, Map<String, Object> map) throws UnsupportedEncodingException {
		String state = new String(request.getParameter("state").getBytes("ISO8859-1"), "UTF-8");
		String num = (String) request.getSession().getAttribute("num");
		if (!state.equals("已预约")) {
			if (service.getRoomByNum(num) != null) {
				request.setAttribute("info", 2);
				return "Creservation";
			} else {
				String stuName = (String) request.getSession().getAttribute("name");
				// String num=(String)request.getSession().getAttribute("num");
				Integer id = Integer.parseInt(request.getParameter("id"));
				String className = new String(request.getParameter("className").getBytes("ISO8859-1"), "UTF-8");
				String classNo = new String(request.getParameter("classNo").getBytes("ISO8859-1"), "UTF-8");
				String floor = new String(request.getParameter("floor").getBytes("ISO8859-1"), "UTF-8");

				Room room = new Room(id, num, stuName, className, floor, classNo);
				map.put("lists", room);
				/*
				 * System.out.println(id+".........."+className+classNo+floor+
				 * state);
				 */
				return "reserve";
			}
		} else {
			request.setAttribute("info", 1);
			return "Creservation";
		}

	}

	// 
	
	
	@RequestMapping("/myRoom")
	public String myRoom(Map<String, Object> map, HttpServletRequest request) {

		String num = (String) request.getSession().getAttribute("num");
		map.put("room", service.getRoomByNum(num));
		return "myRoom";
	}

	// 
	@RequestMapping("/delMyRoom/{id}")
	public String delMyRoom(@PathVariable("id") Integer id, HttpServletRequest request)
			throws UnsupportedEncodingException {
		String num = (String) request.getSession().getAttribute("num");
		Room room=service.getRoomByNum(num);
         Room1 room1=new Room1();
         room1.setClassName(room.getClassName());
         room1.setClassNo(room.getClassNo());
        // room1.setClassNo(classNo);
		service.deleteRoom(num);
		
		service.updateRoom1ByClassNo2(room1);
		//System.out.println(room1.toString()+"del1111111111111111");
		return "redirect:/index.jsp";
	}

	

	
	@RequestMapping("/personal")
	public ModelAndView personal(HttpServletRequest request) {
		String num = (String) request.getSession().getAttribute("num");
		ModelAndView modelandview = new ModelAndView();
		Student stu = service.getStudent(num);
		// System.out.println(stu.toString()+"222222222222");
		modelandview.addObject("emp", stu);
		// modelandview.setViewName("EditVideos");
		modelandview.setViewName("personal");
		return modelandview;
	}

	

	// 分页显示列表
	@RequestMapping(value = "/getList", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// map.put("lists", empService.getAll());
		response.setContentType("application/json; charset=utf-8");
		JSONArray data = JSONArray.fromObject(service.getAllStu());
		
		return data.toString();
		// return null;
	}

	// 筛选条件select
	@RequestMapping(value = "/select", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String select(Map<String, Object> map, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		// response.setContentType("text/html;charset=UTF-8");
		response.setContentType("application/json; charset=utf-8");
		String str = request.getParameter("data");
		String[] arr = str.split(",");
		String className = arr[0];
		String classNo = arr[1];
		String floor = arr[2];
		String state = arr[3];
		String seat = arr[4];
		String media = arr[5];
		Room1 room = new Room1();
		// Student student=new Student();
		if (!className.equals("全部")) {
			room.setClassName(className);
		} else {
			room.setClassName(null);
		}
		if (!classNo.equals("全部")) {
			room.setClassNo(classNo);
		} else {
			room.setClassNo(null);
		}
		if (!floor.equals("全部")) {
			room.setFloor(floor);
		} else {
			room.setFloor(null);
		}
		if (!state.equals("全部")) {

			room.setState(state);
		} else {
			room.setState(null);
		}
		if (!seat.equals("全部")) {

			room.setSeat(seat);
			;
		} else {
			room.setSeat(null);
		}
		if (!media.equals("全部")) {

			room.setMedia(media);
		} else {
			room.setMedia(null);
		}

		// System.out.println(student);
		// map.put("lists", service.ChooseConditions(student));
		JSONArray data = JSONArray.fromObject(service.ChooseConditions(room));
		// System.out.println(map.get("lists"));
		// System.out.println("1111111111111111");

		return data.toString();

	}

	@RequestMapping("/checkNo")
	@ResponseBody
	public String CheckUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); 
		
		String classNo = request.getParameter("name");	
		
	/*	String name1=new String(name.getBytes("ISO8859-1"),"UTF-8");*/
		
		/*System.out.println(num+"sssssssssssssssssssssssss");*/
		//System.out.println("111111111111111111"+classNo+"2");
		if(classNo==""){
			return "1";
		}else{
			return "0"; //有值
		}
	}
	
	
}
