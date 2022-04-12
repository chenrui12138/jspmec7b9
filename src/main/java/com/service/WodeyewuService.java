package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WodeyewuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WodeyewuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WodeyewuView;


/**
 * 我的业务
 *
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface WodeyewuService extends IService<WodeyewuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WodeyewuVO> selectListVO(Wrapper<WodeyewuEntity> wrapper);
   	
   	WodeyewuVO selectVO(@Param("ew") Wrapper<WodeyewuEntity> wrapper);
   	
   	List<WodeyewuView> selectListView(Wrapper<WodeyewuEntity> wrapper);
   	
   	WodeyewuView selectView(@Param("ew") Wrapper<WodeyewuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WodeyewuEntity> wrapper);
   	
}

