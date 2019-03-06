package com.eec.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.eec.entity.Order;
import com.eec.entity.Room;
import com.eec.entity.User;
import com.eec.service.UserService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping(value = "/meeting")
public class FileTest {
	@Autowired
	private UserService service;

	// 访问admin主页
	@RequestMapping("/admin")
	public String admin() {

		return "admin";// getList

	}
	

	// 访问admin主页
	@RequestMapping("/alogin")
	public String alogin() {

		return "redirect:/login.jsp";// getList

	}
	@RequestMapping("/index")
	public String Forward() {

		return "redirect:/index.jsp";// getList

	}
	@RequestMapping("/upload")
	public ModelAndView addPet(@RequestParam(value = "pic", required = false) MultipartFile pic,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView modelandview = new ModelAndView();
		response.setContentType("text/html;charset=utf-8");
		long times = System.currentTimeMillis();
		Date time2 = new Date(times);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// System.out.println(sdf.format(time));
		String city = request.getParameter("city");
		String type = request.getParameter("type");
		String time = request.getParameter("time");
		String num = request.getParameter("num");
		String money = request.getParameter("money");
		String info = request.getParameter("info");

		String originalName = pic.getOriginalFilename();

		Room room = new Room(city, type, time, money, num, info);
		if (pic != null && originalName != null && originalName.length() > 0) {
			String path = "E:\\upload\\image\\";

			// 新的图片名称
			String newName = UUID.randomUUID() + originalName.substring(originalName.lastIndexOf("."));
			// 新的图片
			File newFile = new File(path + newName);
			// 将内存中的数据写入磁盘
			pic.transferTo(newFile);
			room.setDate(sdf.format(time2));
			room.setPic(newName);
			room.setState("空闲");
			service.insertRoom(room);
			modelandview.addObject("entity", room);
			modelandview.setViewName("Show");
			// return new ModelAndView("result", map);
			return modelandview;

		} else {
			request.setAttribute("info", 1);
			modelandview.setViewName("admin");
			// return new ModelAndView("result", map);
			return modelandview;

		}

	}

	// 条件筛选
	@RequestMapping("/getRoomsByCondition")
	public String getRoomsByCondition(Map<String, Object> map, Room room, HttpServletRequest request) {

		map.put("lists", service.ChooseConditions(room));
		/* System.out.println(map.get("lists")); */
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "result";// getList
		// System.out.println(lists);
		// return "Page1";

	}
	// 获取所有会议室
		@RequestMapping("/adminRoom")
		public String adminRoom(Map<String, Object> map, HttpServletRequest request) {

			map.put("lists", service.getAllMeetRoom());
			/* System.out.println(map.get("lists")); */
			// JSONArray lists = JSONArray.fromObject(empService.getAll());
			// map.put("lists", lists);
			return "adminRoom";// getList
			// System.out.println(lists);
			// return "Page1";

		}

	// 上传会议室结果
	@RequestMapping("/result")
	public String result2() {

		return "result";// getList

	}
	

	// 上传会议室结果
	@RequestMapping("/example")
	public String example() {

		return "example";// getList

	}
	// 确定预约会议室
	@RequestMapping("/reserve/{id}")
	public ModelAndView reserve(@PathVariable("id") Integer id,HttpServletRequest request) {
		ModelAndView modelandview = new ModelAndView();
		String name = (String) request.getSession().getAttribute("name");
		Room room = service.getRoomById(id);
		if (service.getUserOrder(name) == null) {
			//request.setAttribute("info", 2);
			//return "redirect:/index.jsp?info=2";
			service.updateRoom1ById(id);
		}
		
		modelandview.addObject("room", room);
		// modelandview.setViewName("EditVideos");
		modelandview.setViewName("order");
		return modelandview;
	}

	// 编辑会议室
		@RequestMapping("/adminUpdate/{id}")
		public ModelAndView adminUpdate(@PathVariable("id") Integer id) {
			ModelAndView modelandview = new ModelAndView();
			Room room = service.getRoomById(id);
			
			modelandview.addObject("room", room);
			// modelandview.setViewName("EditVideos");
			modelandview.setViewName("adminUpdate");
			return modelandview;
		}
	
		// 编辑用户
				@RequestMapping("/adminUserUpdate/{id}")
				public ModelAndView adminUserUpdate(@PathVariable("id") Integer id) {
					ModelAndView modelandview = new ModelAndView();
					User user = service.getUserById(id);
					
					modelandview.addObject("room", user);
					// modelandview.setViewName("EditVideos");
					modelandview.setViewName("adminUserUpdate");
					return modelandview;
				}
	
	
	
	// 插入预约教室insertOrder
	@RequestMapping("/insertOrder")
	public String insertOrder(HttpServletRequest request, Room room,HttpServletResponse response) throws UnsupportedEncodingException {
		response.setContentType("text/html;charset=utf-8");
		long times = System.currentTimeMillis();
		Date time = new Date(times);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String name = (String) request.getSession().getAttribute("name");
		if (service.getUserOrder(name) != null) {
			//request.setAttribute("info", 2);
			return "redirect:/index.jsp?info=2";
		} else {
		Order order=new Order();
		//order.setCity(room.getCity());
		String city=room.getCity();
		String city1=room.getCity().substring(city.lastIndexOf(",")+1);
		order.setCity(city1);
		order.setType(room.getType());
		order.setMoney(room.getMoney());
		order.setTime(room.getTime());
		order.setNum(room.getNum());
		order.setPhone(service.getUserName(name).getPhone_number());
		order.setName(name);
		order.setDate(sdf.format(time));
		order.setNeeds("0");
		order.setCredate(room.getDate());
		service.insertOrder(order);
		//request.setAttribute("info", 13);
		//System.out.println("222222222"+room.getDate());
		return "redirect:/index.jsp?info=13";
	}
	}
	
	// 插入用户需求教室myneeds
		@RequestMapping("/myneeds")
		public String myneeds(HttpServletRequest request, Room room,HttpServletResponse response) throws UnsupportedEncodingException {
			response.setContentType("text/html;charset=utf-8");
			long times = System.currentTimeMillis();
			Date time = new Date(times);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String name = (String) request.getSession().getAttribute("name");
			
			Order order=new Order();
			//order.setCity(room.getCity());
			String city=room.getCity();
			String city1=room.getCity().substring(city.lastIndexOf(",")+1);
			order.setCity(city1);
			order.setType(room.getType());
			order.setMoney(room.getMoney());
			order.setTime(room.getTime());
			order.setNum(room.getNum());
			order.setPhone(service.getUserName(name).getPhone_number());
			order.setName(name);
			order.setDate(sdf.format(time));
			order.setNeeds("1");
			service.insertNeeds(order);
			//request.setAttribute("info", 13);
			return "redirect:/index.jsp?info=12";
		}
	
	
	// 获取我的预约
		@RequestMapping("/myOrder")
		public String myOrder(Map<String, Object> map,HttpServletRequest request) {
			String name = (String) request.getSession().getAttribute("name");
			map.put("room", service.getUserOrder(name));		
			return "myorder";// getList
			// System.out.println(lists);
			// return "Page1";
			// return "redirect:/chinaren/index2";
		}
		// 获取我的需求
				@RequestMapping("/getMyNeeds")
				public String myNeeds(Map<String, Object> map,HttpServletRequest request) {
					String name = (String) request.getSession().getAttribute("name");
					map.put("lists", service.getUserNeeds(name));
					// System.out.println("11111111111"+map.get("lists"));
					// JSONArray lists = JSONArray.fromObject(empService.getAll());
					// map.put("lists", lists);
					return "myneeds";
					
				}
	//删除需求
				@RequestMapping("/delmyneeds/{id}")
				public String delmyneeds(@PathVariable("id") Integer id) {
					service.delMyNeeds(id);;

					return "redirect:/meeting/getMyNeeds";
					// return "ListVideos";
				}
	
				//删除预约
				@RequestMapping("/deleteMyRooms/{id}")
				public String deleteMyRooms(@PathVariable("id") Integer id) {				
					Order order=service.getOrderMeetById(id);
					
					Room room=service.getMeetByDate(order.getCredate());
					service.updateRoom1ById2(room.getDate());
					service.delMyNeeds(id);
					//System.out.println("22222233333"+room.getDate());
					return "redirect:/index.jsp";
					// return "ListVideos";
				}
				//admin删除room
				@RequestMapping("/adminDelete/{id}")
				public String adminDelete(@PathVariable("id") Integer id) {				
					
					service.AdminDelRoom(id);;
					//System.out.println("22222233333"+room.getDate());
					return "redirect:/meeting/adminRoom";
					// return "ListVideos";
				}
				
	

				// 保存更改
				@RequestMapping("/updateUserSave")
				public String updateUserSave(User user) {
					service.updateUserAdmin(user);
					// empService.updateVideos(shiping);
					return "redirect:/meeting/adminUser";
				}
				// 保存更改
				@RequestMapping("/updateSave")
				public String updateSave(Room room) {
					service.updateRoom(room);
					// empService.updateVideos(shiping);
					return "redirect:/meeting/adminRoom";
				}
				@RequestMapping("/adminUser")
				public String adminUser(Map<String, Object> map,HttpServletRequest request) {
					//String name = (String) request.getSession().getAttribute("name");
					map.put("lists", service.getAllUser());
					// System.out.println("11111111111"+map.get("lists"));
					// JSONArray lists = JSONArray.fromObject(empService.getAll());
					// map.put("lists", lists);
					return "adminUser";
					
				}
				@RequestMapping("/adminUserDelete/{id}")
				public String adminUserDelete(@PathVariable("id") Integer id) {				
					
					service.AdminDelUser(id);
					//System.out.println("22222233333"+room.getDate());
					return "redirect:/meeting/adminUser";
					// return "ListVideos";
				}
					
	
				//模糊查询=======================================================================
				@RequestMapping("/Search")
				public ModelAndView Search(@RequestParam(value = "search", required = false) String searchValues) { 
					ModelAndView modelandview = new ModelAndView();
					List<Room> list=service.getRoomsByWords(searchValues);
					
					//System.out.println(list);
					
					//System.out.println(emp);
					modelandview.addObject("lists", list);
					//for(ShiPing shiping:list){
						//System.out.println(shiping);
					//}		
					System.out.println("11111111111111");
					modelandview.setViewName("MoHuSearch");
					return modelandview;
				}

			
	
	
	
	
	
	
	// *******************************
	// 访问学校主页
	

	// 访问学校主页
	@RequestMapping("/index2")
	public String Forward2() {

		return "index2";// getList

	}
	

	
	
	

}
