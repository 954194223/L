package com.itheima.core.web.controller;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.common.utils.Page;
import com.itheima.core.po.BaseDict;
import com.itheima.core.po.Customer;
import com.itheima.core.po.User;
import com.itheima.core.service.BaseDictService;
import com.itheima.core.service.CustomerService;
/**
 * 客户管理控制器类
 */
@Controller
public class CustomerController {
	// 依赖注入
	@Autowired
	private CustomerService customerService;
	@Autowired
	private BaseDictService baseDictService;
	// 运动员身份
	@Value("${customer.identity.type}")
	private String IDENTITY_TYPE;
	// 运动员报名的运动项目
	@Value("${customer.event.type}")
	private String EVENT_TYPE;
	// 运动员性别
	@Value("${customer.sex.type}")
	private String SEX_TYPE;
	// 运动员报名的审核情况
	@Value("${customer.exAmine.type}")
	private String EXAMINE_TYPE;
	/**
	 *  客户列表
	 */
	@RequestMapping(value = "/customer/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String stuName, String sTatus, String sptEvent,
			String stuSex, String eXamine,Model model) {
		// 条件查询所有客户
		Page<Customer> customers = customerService
				.findCustomerList(page, rows, stuName, 
                                        sTatus, sptEvent,stuSex,eXamine);
		model.addAttribute("page", customers);
		// 运动员身份
		List<BaseDict> identityType = baseDictService
				.findBaseDictByTypeCode(IDENTITY_TYPE);
		// 运动员报名的运动项目
		List<BaseDict> eventType = baseDictService
				.findBaseDictByTypeCode(EVENT_TYPE);
		// 运动员性别
		List<BaseDict> sexType = baseDictService
				.findBaseDictByTypeCode(SEX_TYPE);
		// 运动员报名的审核状态
		List<BaseDict> exAminetype = baseDictService
				.findBaseDictByTypeCode(EXAMINE_TYPE);
		// 添加参数
		model.addAttribute("identityType", identityType);
		model.addAttribute("eventType", eventType);
		model.addAttribute("sexType", sexType);
		model.addAttribute("exAminetype", exAminetype);
		model.addAttribute("stuName", stuName);
		model.addAttribute("sTatus", sTatus);
		model.addAttribute("sptEvent", sptEvent);
		model.addAttribute("stuSex", stuSex);
		model.addAttribute("eXamine", eXamine);
		return "customer";
	}
	
	/**
	 * 创建运动员信息
	 */
	@RequestMapping("/customer/create.action")
	@ResponseBody
	public String customerCreate(Customer customer,HttpSession session) {
	    // 获取Session中的当前用户信息
	    User user = (User) session.getAttribute("USER_SESSION");
	    // 将当前用户id存储在客户对象中
	    //customer.setCust_create_id(user.getUser_id());
	    // 创建Date对象
	    Date date = new Date();
	    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
	    Timestamp timeStamp = new Timestamp(date.getTime());
	    customer.setStu_createtime(timeStamp);
	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = customerService.createCustomer(customer);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 通过id获取运动员信息
	 */
	@RequestMapping("/customer/getCustomerById.action")
	@ResponseBody
	public Customer getCustomerById(Integer id) {
	    Customer customer = customerService.getCustomerById(id);
	    return customer;
	}
	/**
	 * 更新运动员信息
	 */
	@RequestMapping("/customer/update.action")
	@ResponseBody
	public String customerUpdate(Customer customer) {
	    int rows = customerService.updateCustomer(customer);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除运动员信息
	 */
	@RequestMapping("/customer/delete.action")
	@ResponseBody
	public String customerDelete(Integer id) {
	    int rows = customerService.deleteCustomer(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
