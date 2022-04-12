package com.entity.view;

import com.entity.ShequwenhuaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 社区文化
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
@TableName("shequwenhua")
public class ShequwenhuaView  extends ShequwenhuaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShequwenhuaView(){
	}
 
 	public ShequwenhuaView(ShequwenhuaEntity shequwenhuaEntity){
 	try {
			BeanUtils.copyProperties(this, shequwenhuaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
