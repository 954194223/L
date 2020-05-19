package com.itheima.core.dao;
import java.util.List;
import com.itheima.core.po.Customer;
/**
 * Customer接口
 */
public interface CustomerDao {
    // 运动员列表
	public List<Customer> selectCustomerList(Customer customer);
	// 运动员总数
	public Integer selectCustomerListCount(Customer customer);
	
	// 创建运动员信息
	public int createCustomer(Customer customer);
	// 通过id查询运动员信息
	public Customer getCustomerById(Integer id);
	// 更新运动员信息
	public int updateCustomer(Customer customer);
	// 删除运动员信息
	int deleteCustomer (Integer id);

}
