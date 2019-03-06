package com.eec.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eec.entity.Lab;
import com.eec.entity.Msg;
import com.eec.entity.PageBean;
import com.eec.entity.Student;
import com.eec.entity.UserVo;
import com.eec.service.UserService;


import net.sf.json.JSONArray;

@Controller
@RequestMapping(value = "/route")
public class FileTest {
	@Autowired
	private UserService service;

	@RequestMapping("/admin")
	public String admin() {

		return "admin";

	}

	@RequestMapping("/index")
	public String Forward() {

		return "index";

	}

	@RequestMapping("/news")
	public String news() {
		return "news";
	}

	@RequestMapping("/products")
	public String products() {
		return "products";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping("/about2")
	public String about2() {
		return "about2";
	}

	@RequestMapping("/products-detail")
	public String Forward1() {

		return "products-detail";

	}

	@RequestMapping("/products-detail1")
	public String Forward2() {

		return "products-detail1";

	}

	@RequestMapping("/products-detail2")
	public String Forward3() {

		return "products-detail2";

	}

	@RequestMapping("/products-detail3")
	public String Forward4() {
		return "products-detail3";
	}

	@RequestMapping("/products-detail4")
	public String Forward5() {
		return "products-detail4";
	}

	@RequestMapping("/products-detail5")
	public String Forward6() {
		return "products-detail5";
	}

	@RequestMapping("/products-detail6")
	public String Forward7() {
		return "products-detail6";
	}

	@RequestMapping("/products-detail7")
	public String Forward8() {
		return "products-detail7";
	}

	@RequestMapping("/products-detail8")
	public String Forward88() {
		return "products-detail8";
	}
	@RequestMapping("/products-detail9")
	public String Forward9() {
		return "products-detail9";
	}
	@RequestMapping("/products-detail10")
	public String Forward10() {
		return "products-detail10";
	}
	@RequestMapping("/products-detail11")
	public String Forward11() {
		return "products-detail11";
	}
	@RequestMapping("/products-detail20")
	public String Forward20() {

		return "products-detail20";

	}
	@RequestMapping("/products-detail21")
	public String Forward21() {

		return "products-detail21";

	}
	@RequestMapping("/products-detail22")
	public String Forward22() {

		return "products-detail22";

	}
	@RequestMapping("/products-detail23")
	public String Forward23() {

		return "products-detail23";

	}
	@RequestMapping("/products-detail24")
	public String Forward24() {

		return "products-detail24";

	}
	@RequestMapping("/products-detail25")
	public String Forward25() {

		return "products-detail25";

	}
	@RequestMapping("/products-detail26")
	public String Forward26() {

		return "products-detail26";

	}
	@RequestMapping("/products-detail27")
	public String Forward27() {

		return "products-detail27";

	}
	
	
	@RequestMapping("/contact")
	public String result() {

		return "contact";// getList

	}
	/*
	 * @RequestMapping("/result") public ModelAndView
	 * reVideoplayPage(ModelAndView model){ ModelAndView modelandview = new
	 * ModelAndView(); //ShiPing video=empService.getVideosById(id);
	 * //modelandview.addObject("video", video);
	 * //modelandview.setViewName("EditVideos");
	 * modelandview.setViewName("result"); return modelandview; //return
	 * "VideoplayPage"; }
	 */

	@RequestMapping("/upload")
	public String addPet(@RequestParam(value = "pic", required = false) MultipartFile pic, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// ModelAndView modelandview = new ModelAndView();
		response.setContentType("text/html;charset=utf-8");
		long times = System.currentTimeMillis();
		Date time2 = new Date(times);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		// System.out.println(sdf.format(time));
		String info = request.getParameter("info");
		String title = request.getParameter("title");
		String type = request.getParameter("type");
		String originalName = pic.getOriginalFilename();
		Lab lab = new Lab();
		lab.setInfo(info);
		lab.setTitle(title);
		lab.setDate(sdf.format(time2));
		lab.setUptime(sdf1.format(time2));
		lab.setType(type);// 1.代表图片,2.代表文档

		if (pic != null && originalName != null && originalName.length() > 0) {
			if (type.equals("1")) {
				String path = "E:\\upload\\image\\";
				// 新的图片名称
				String newName = UUID.randomUUID() + originalName.substring(originalName.lastIndexOf("."));
				// 新的图片
				File newFile = new File(path + newName);
				// 将内存中的数据写入磁盘
				pic.transferTo(newFile);

				lab.setPic("\\image\\" + newName);
				
			} else {
				String path = "E:\\upload\\files\\";

				File newFile = new File(path + originalName);
				// 将内存中的数据写入磁盘
				pic.transferTo(newFile);

				lab.setPic(originalName);
			}
			service.inserNews(lab);
			// modelandview.addObject("entity", lab);
			// modelandview.setViewName("manage");
			// return new ModelAndView("result", map);
			//return "redirect:/route/getNews";

		}
		if(type.equals("1")){
			return "redirect:/route/getNews";
		}else{
			return "redirect:/route/getFiles";
		}
		
	}

	// 获取全部新闻
	@RequestMapping("/getNews")
	public String getNews(Map<String, Object> map) {
		map.put("lists", service.getAllNews());
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "manage";// getList
		// System.out.println(lists);
		// return "Page1";
		// return "redirect:/chinaren/index2";
	}

	// 获取全部文档
	@RequestMapping("/getFiles")
	public String getFiles(Map<String, Object> map) {
		map.put("lists", service.getAllFiles());
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "about2";// getList
		// System.out.println(lists);
		// return "Page1";
		// return "redirect:/chinaren/index2";
	}

	// 获取全部文档
	@RequestMapping("/getFiles2")
	public String getFiles2(Map<String, Object> map) {
		map.put("lists", service.getAllFiles());
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "about";// getList
		// System.out.println(lists);
		// return "Page1";
		// return "redirect:/chinaren/index2";
	}

	
	
	
	
	
	
	@RequestMapping("/delNews/{id}")
	public String delete(@PathVariable("id") Integer id) {
		service.deleteNewsById(id);

		return "redirect:/route/getNews";
		// return "ListVideos";
	}
	// 获取新闻
	@RequestMapping("/getNews/{id}")
	public String getNews(@PathVariable("id") Integer id,Map<String, Object> map) {
		
		map.put("lists",service.getNewsById(id));
		System.out.println(service.getNewsById(id).toString());
		return "news-detail";

	}
	// 编辑新闻
	@RequestMapping("/updateNews/{id}")
	public ModelAndView edit(@PathVariable("id") Integer id) {
		ModelAndView modelandview = new ModelAndView();
		Lab lab = service.getNewsById(id);
		// System.out.println(emp);
		modelandview.addObject("news", lab);
		// modelandview.setViewName("EditVideos");
		modelandview.setViewName("updateNews");
		return modelandview;
	}

	// 保存更改
	@RequestMapping("/updateNewsSave")
	public String updateSave(Lab lab) {
		lab.setType("1");
		service.updateNews(lab);
		// empService.updateVideos(shiping);
		return "redirect:/route/getNews";
	}

	// 显示全部新闻
	@RequestMapping("/getAllNews")
	public String getAllNews(Map<String, Object> map) {
		map.put("lists", service.getAllNews());
		// JSONArray lists = JSONArray.fromObject(empService.getAll());
		// map.put("lists", lists);
		return "news";// getList

	}
//下载资源
	@RequestMapping(value = "/download")
	public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam("filename") String filename,
			Model model) throws Exception {
		String filename1 = new String(filename.getBytes("ISO-8859-1"), "UTF-8");
		// 下载文件路径
		String path = "E:\\upload\\files\\";
		// System.out.println(filename+"111111111111111");

		File file = new File(path + filename1);
		HttpHeaders headers = new HttpHeaders();
		// 下载显示的文件名，解决中文名称乱码问题 ,生成随机名字防止重复
		// String newName = UUID.randomUUID() +
		// filename1.substring(filename1.lastIndexOf("."));
		// String downloadFielName = new
		// String(filename.getBytes("ISO-8859-1"),"UTF-8");

		// - ( ) (5)通知浏览器以attachment（下载方式）- ( ) (5)
		headers.setContentDispositionFormData("attachment", filename);
		// System.out.println(downloadFielName+"2222222");
		// application/octet-stream ： 二进制流数据（最常见的文件下载）。
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
	}

	//留言
	@RequestMapping("/msg")
	public String msg(HttpServletRequest request) { 
		
		String msg=request.getParameter("Box");
		String name=(String)request.getSession().getAttribute("name");
		String num=(String)request.getSession().getAttribute("num");
		Msg message=new Msg(msg, name, num);
		long times = System.currentTimeMillis();
		Date time2 = new Date(times);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		message.setDate(sdf.format(time2));
		service.insertMsg(message);
		return "redirect:/route/getMsg";
	}	
	//获取全部留言
	@RequestMapping("/getMsg") 
	public String getMsg(Map<String,Object> map){
		map.put("lists", service.getAllMsg());
		//JSONArray lists = JSONArray.fromObject(empService.getAll());
		//map.put("lists", lists);
		return "msg";//getList
		//System.out.println(lists);
		//return "Page1";
		//return "redirect:/chinaren/index2";
	}
	
	
	@RequestMapping("/get")
	public String get() {

		return "manage2";

	}
	
	
	@RequestMapping(value="/get1", method = RequestMethod.GET )  
    public String inquire ( @RequestParam(value="pc",required = false) String pc,HttpServletRequest request, Map<String,Object> map,PageBean<Lab> pageBean){  
		if(pc==null||pc.trim().isEmpty()){
			pageBean.setPc(1);
		}
		pageBean.setPs(10);//ָ指定每页10条记录
		if(Integer.parseInt(pc)==1){
			pageBean.setPc(1);
		}else{
		pageBean.setPc((Integer.parseInt(pc)-1)*pageBean.getPs());//得到pc当前页数
		}
		pageBean.setTr(service.getCount());
		pageBean.setBeanList(service.findAll(pageBean));
		//PageBean<Lab> pb=service.findAll(pageBean);
		pageBean.setPc(Integer.parseInt(pc));
		map.put("pb", pageBean);
		//request.setAttribute("pb", service.findAll(pageBean));
        return "manage2";  
    }  
	
	
	
	
	
	
	/*@RequestMapping(value="/get", method = RequestMethod.POST )  
    public List<Lab> inquire (HttpServletRequest request, HttpServletResponse response,UserVo userVo){  
        List<Lab> userList = service.getNewsByType(userVo);  
        
        System.out.println("111111111");
        return userList;  
    }  */
}
