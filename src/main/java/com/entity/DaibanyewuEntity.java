package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 代办业务
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
@TableName("daibanyewu")
public class DaibanyewuEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DaibanyewuEntity() {
		
	}
	
	public DaibanyewuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 事项名称
	 */
					
	private String shixiangmingcheng;
	
	/**
	 * 类型
	 */
					
	private String leixing;
	
	/**
	 * 办理业务
	 */
					
	private String banliyewu;
	
	/**
	 * 代办费用
	 */
					
	private Float daibanfeiyong;
	
	/**
	 * 发布日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 住址
	 */
					
	private String zhuzhi;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：事项名称
	 */
	public void setShixiangmingcheng(String shixiangmingcheng) {
		this.shixiangmingcheng = shixiangmingcheng;
	}
	/**
	 * 获取：事项名称
	 */
	public String getShixiangmingcheng() {
		return shixiangmingcheng;
	}
	/**
	 * 设置：类型
	 */
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	/**
	 * 获取：类型
	 */
	public String getLeixing() {
		return leixing;
	}
	/**
	 * 设置：办理业务
	 */
	public void setBanliyewu(String banliyewu) {
		this.banliyewu = banliyewu;
	}
	/**
	 * 获取：办理业务
	 */
	public String getBanliyewu() {
		return banliyewu;
	}
	/**
	 * 设置：代办费用
	 */
	public void setDaibanfeiyong(Float daibanfeiyong) {
		this.daibanfeiyong = daibanfeiyong;
	}
	/**
	 * 获取：代办费用
	 */
	public Float getDaibanfeiyong() {
		return daibanfeiyong;
	}
	/**
	 * 设置：发布日期
	 */
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
	/**
	 * 设置：住址
	 */
	public void setZhuzhi(String zhuzhi) {
		this.zhuzhi = zhuzhi;
	}
	/**
	 * 获取：住址
	 */
	public String getZhuzhi() {
		return zhuzhi;
	}
	/**
	 * 设置：手机
	 */
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}

}
