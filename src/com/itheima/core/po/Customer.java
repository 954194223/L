package com.itheima.core.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 客户持久化类
 */
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer stu_id;			//运动员编号
	private String stu_name;		//运动员姓名
	private String stu_sex;			//性别
	private String status;			//身份
	private String stu_dept;		//所属专业
	private String stu_class;		//所属班级
	private String spt_event;		//报名项目
	private Integer score;			//分数
	private String examine;			//审核状态
	private Date stu_createtime;	//时间
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数

	public String getStu_class() {
		return stu_class;
	}
	public Date getStu_createtime() {
		return stu_createtime;
	}
	public void setStu_createtime(Date stu_createtime) {
		this.stu_createtime = stu_createtime;
	}
	public void setStu_class(String stu_class) {
		this.stu_class = stu_class;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public String getExamine() {
		return examine;
	}
	public void setExamine(String examine) {
		this.examine = examine;
	}
	public String getSpt_event() {
		return spt_event;
	}
	public void setSpt_event(String spt_event) {
		this.spt_event = spt_event;
	}
	public String getStu_dept() {
		return stu_dept;
	}
	public void setStu_dept(String stu_dept) {
		this.stu_dept = stu_dept;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStu_sex() {
		return stu_sex;
	}
	public void setStu_sex(String stu_sex) {
		this.stu_sex = stu_sex;
	}
	public Integer getStu_id() {
		return stu_id;
	}
	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
}
