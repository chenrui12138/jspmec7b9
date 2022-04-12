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


import com.dao.MeiritiwenDao;
import com.entity.MeiritiwenEntity;
import com.service.MeiritiwenService;
import com.entity.vo.MeiritiwenVO;
import com.entity.view.MeiritiwenView;

@Service("meiritiwenService")
public class MeiritiwenServiceImpl extends ServiceImpl<MeiritiwenDao, MeiritiwenEntity> implements MeiritiwenService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MeiritiwenEntity> page = this.selectPage(
                new Query<MeiritiwenEntity>(params).getPage(),
                new EntityWrapper<MeiritiwenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MeiritiwenEntity> wrapper) {
		  Page<MeiritiwenView> page =new Query<MeiritiwenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MeiritiwenVO> selectListVO(Wrapper<MeiritiwenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MeiritiwenVO selectVO(Wrapper<MeiritiwenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MeiritiwenView> selectListView(Wrapper<MeiritiwenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MeiritiwenView selectView(Wrapper<MeiritiwenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
