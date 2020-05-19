package com.itheima.core.po;
import java.io.Serializable;
/**
 * 数据字典持久化类
 */
public class BaseDict implements Serializable {
	private static final long serialVersionUID = 1L;
	private String dict_id;          // 数据字典id
	private String dict_type_code;  // 数据字典类别代码
	private String dict_sport_status;  // 数据字典类别名称
	private String dict_sport_name;  // 数据字典项目名称
	private String dict_enable;     // 是否可用

	
	public String getDict_sport_status() {
		return dict_sport_status;
	}
	public void setDict_sport_status(String dict_sport_status) {
		this.dict_sport_status = dict_sport_status;
	}
	public String getDict_sport_name() {
		return dict_sport_name;
	}
	public void setDict_sport_name(String dict_sport_name) {
		this.dict_sport_name = dict_sport_name;
	}
	public String getDict_id() {
		return dict_id;
	}
	public void setDict_id(String dict_id) {
		this.dict_id = dict_id;
	}
	public String getDict_type_code() {
		return dict_type_code;
	}
	public void setDict_type_code(String dict_type_code) {
		this.dict_type_code = dict_type_code;
	}	
	public String getDict_enable() {
		return dict_enable;
	}
	public void setDict_enable(String dict_enable) {
		this.dict_enable = dict_enable;
	}

}
