package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShequwenhuaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShequwenhuaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShequwenhuaView;


/**
 * 社区文化
 *
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface ShequwenhuaService extends IService<ShequwenhuaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShequwenhuaVO> selectListVO(Wrapper<ShequwenhuaEntity> wrapper);
   	
   	ShequwenhuaVO selectVO(@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);
   	
   	List<ShequwenhuaView> selectListView(Wrapper<ShequwenhuaEntity> wrapper);
   	
   	ShequwenhuaView selectView(@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShequwenhuaEntity> wrapper);
   	
}

