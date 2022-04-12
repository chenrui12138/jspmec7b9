package com.dao;

import com.entity.MeiritiwenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MeiritiwenVO;
import com.entity.view.MeiritiwenView;


/**
 * 每日体温
 * 
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface MeiritiwenDao extends BaseMapper<MeiritiwenEntity> {
	
	List<MeiritiwenVO> selectListVO(@Param("ew") Wrapper<MeiritiwenEntity> wrapper);
	
	MeiritiwenVO selectVO(@Param("ew") Wrapper<MeiritiwenEntity> wrapper);
	
	List<MeiritiwenView> selectListView(@Param("ew") Wrapper<MeiritiwenEntity> wrapper);

	List<MeiritiwenView> selectListView(Pagination page,@Param("ew") Wrapper<MeiritiwenEntity> wrapper);
	
	MeiritiwenView selectView(@Param("ew") Wrapper<MeiritiwenEntity> wrapper);
	
}
