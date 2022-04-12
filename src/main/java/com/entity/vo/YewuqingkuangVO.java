package com.entity.vo;

import com.entity.YewuqingkuangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 业务情况
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public class YewuqingkuangVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 事项名称
	 */
	
	private String shixiangmingcheng;
		
	/**
	 * 类型
	 */
	
	private String leixing;
		
	/**
	 * 代办内容
	 */
	
	private String daibanneirong;
		
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
	 * 业务情况
	 */
	
	private String yewuqingkuang;
		
	/**
	 * 是否完成
	 */
	
	private String shifouwancheng;
		
	/**
	 * 时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shijian;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
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
	 * 设置：代办内容
	 */
	 
	public void setDaibanneirong(String daibanneirong) {
		this.daibanneirong = daibanneirong;
	}
	
	/**
	 * 获取：代办内容
	 */
	public String getDaibanneirong() {
		return daibanneirong;
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
				
	
	/**
	 * 设置：业务情况
	 */
	 
	public void setYewuqingkuang(String yewuqingkuang) {
		this.yewuqingkuang = yewuqingkuang;
	}
	
	/**
	 * 获取：业务情况
	 */
	public String getYewuqingkuang() {
		return yewuqingkuang;
	}
				
	
	/**
	 * 设置：是否完成
	 */
	 
	public void setShifouwancheng(String shifouwancheng) {
		this.shifouwancheng = shifouwancheng;
	}
	
	/**
	 * 获取：是否完成
	 */
	public String getShifouwancheng() {
		return shifouwancheng;
	}
				
	
	/**
	 * 设置：时间
	 */
	 
	public void setShijian(Date shijian) {
		this.shijian = shijian;
	}
	
	/**
	 * 获取：时间
	 */
	public Date getShijian() {
		return shijian;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
