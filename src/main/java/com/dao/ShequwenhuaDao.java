package com.dao;

import com.entity.ShequwenhuaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShequwenhuaVO;
import com.entity.view.ShequwenhuaView;


/**
 * 社区文化
 * 
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
public interface ShequwenhuaDao extends BaseMapper<ShequwenhuaEntity> {
	
	List<ShequwenhuaVO> selectListVO(@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);
	
	ShequwenhuaVO selectVO(@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);
	
	List<ShequwenhuaView> selectListView(@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);

	List<ShequwenhuaView> selectListView(Pagination page,@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);
	
	ShequwenhuaView selectView(@Param("ew") Wrapper<ShequwenhuaEntity> wrapper);
	
}
