package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DaibanyewuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DaibanyewuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DaibanyewuView;


/**
 * 代办业务
 *
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface DaibanyewuService extends IService<DaibanyewuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DaibanyewuVO> selectListVO(Wrapper<DaibanyewuEntity> wrapper);
   	
   	DaibanyewuVO selectVO(@Param("ew") Wrapper<DaibanyewuEntity> wrapper);
   	
   	List<DaibanyewuView> selectListView(Wrapper<DaibanyewuEntity> wrapper);
   	
   	DaibanyewuView selectView(@Param("ew") Wrapper<DaibanyewuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DaibanyewuEntity> wrapper);
   	
}

