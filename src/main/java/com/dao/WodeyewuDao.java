package com.dao;

import com.entity.WodeyewuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WodeyewuVO;
import com.entity.view.WodeyewuView;


/**
 * 我的业务
 * 
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface WodeyewuDao extends BaseMapper<WodeyewuEntity> {
	
	List<WodeyewuVO> selectListVO(@Param("ew") Wrapper<WodeyewuEntity> wrapper);
	
	WodeyewuVO selectVO(@Param("ew") Wrapper<WodeyewuEntity> wrapper);
	
	List<WodeyewuView> selectListView(@Param("ew") Wrapper<WodeyewuEntity> wrapper);

	List<WodeyewuView> selectListView(Pagination page,@Param("ew") Wrapper<WodeyewuEntity> wrapper);
	
	WodeyewuView selectView(@Param("ew") Wrapper<WodeyewuEntity> wrapper);
	
}
