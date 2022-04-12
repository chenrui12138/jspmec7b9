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


import com.dao.WodeyewuDao;
import com.entity.WodeyewuEntity;
import com.service.WodeyewuService;
import com.entity.vo.WodeyewuVO;
import com.entity.view.WodeyewuView;

@Service("wodeyewuService")
public class WodeyewuServiceImpl extends ServiceImpl<WodeyewuDao, WodeyewuEntity> implements WodeyewuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WodeyewuEntity> page = this.selectPage(
                new Query<WodeyewuEntity>(params).getPage(),
                new EntityWrapper<WodeyewuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WodeyewuEntity> wrapper) {
		  Page<WodeyewuView> page =new Query<WodeyewuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WodeyewuVO> selectListVO(Wrapper<WodeyewuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WodeyewuVO selectVO(Wrapper<WodeyewuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WodeyewuView> selectListView(Wrapper<WodeyewuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WodeyewuView selectView(Wrapper<WodeyewuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
