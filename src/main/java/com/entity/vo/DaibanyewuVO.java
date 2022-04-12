package com.entity.vo;

import com.entity.DaibanyewuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 代办业务
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public class DaibanyewuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
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
