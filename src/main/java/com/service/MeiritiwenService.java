package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MeiritiwenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MeiritiwenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MeiritiwenView;


/**
 * 每日体温
 *
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface MeiritiwenService extends IService<MeiritiwenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MeiritiwenVO> selectListVO(Wrapper<MeiritiwenEntity> wrapper);
   	
   	MeiritiwenVO selectVO(@Param("ew") Wrapper<MeiritiwenEntity> wrapper);
   	
   	List<MeiritiwenView> selectListView(Wrapper<MeiritiwenEntity> wrapper);
   	
   	MeiritiwenView selectView(@Param("ew") Wrapper<MeiritiwenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MeiritiwenEntity> wrapper);
   	
}

