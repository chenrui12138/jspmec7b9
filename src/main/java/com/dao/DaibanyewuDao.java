package com.dao;

import com.entity.DaibanyewuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DaibanyewuVO;
import com.entity.view.DaibanyewuView;


/**
 * 代办业务
 * 
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface DaibanyewuDao extends BaseMapper<DaibanyewuEntity> {
	
	List<DaibanyewuVO> selectListVO(@Param("ew") Wrapper<DaibanyewuEntity> wrapper);
	
	DaibanyewuVO selectVO(@Param("ew") Wrapper<DaibanyewuEntity> wrapper);
	
	List<DaibanyewuView> selectListView(@Param("ew") Wrapper<DaibanyewuEntity> wrapper);

	List<DaibanyewuView> selectListView(Pagination page,@Param("ew") Wrapper<DaibanyewuEntity> wrapper);
	
	DaibanyewuView selectView(@Param("ew") Wrapper<DaibanyewuEntity> wrapper);
	
}
