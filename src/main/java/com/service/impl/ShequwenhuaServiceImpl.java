package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShequwenhuaDao;
import com.entity.ShequwenhuaEntity;
import com.service.ShequwenhuaService;
import com.entity.vo.ShequwenhuaVO;
import com.entity.view.ShequwenhuaView;

@Service("shequwenhuaService")
public class ShequwenhuaServiceImpl extends ServiceImpl<ShequwenhuaDao, ShequwenhuaEntity> implements ShequwenhuaService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShequwenhuaEntity> page = this.selectPage(
                new Query<ShequwenhuaEntity>(params).getPage(),
                new EntityWrapper<ShequwenhuaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShequwenhuaEntity> wrapper) {
		  Page<ShequwenhuaView> page =new Query<ShequwenhuaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShequwenhuaVO> selectListVO(Wrapper<ShequwenhuaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShequwenhuaVO selectVO(Wrapper<ShequwenhuaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShequwenhuaView> selectListView(Wrapper<ShequwenhuaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShequwenhuaView selectView(Wrapper<ShequwenhuaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
