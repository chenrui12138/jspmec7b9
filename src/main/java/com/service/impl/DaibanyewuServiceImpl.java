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


import com.dao.DaibanyewuDao;
import com.entity.DaibanyewuEntity;
import com.service.DaibanyewuService;
import com.entity.vo.DaibanyewuVO;
import com.entity.view.DaibanyewuView;

@Service("daibanyewuService")
public class DaibanyewuServiceImpl extends ServiceImpl<DaibanyewuDao, DaibanyewuEntity> implements DaibanyewuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DaibanyewuEntity> page = this.selectPage(
                new Query<DaibanyewuEntity>(params).getPage(),
                new EntityWrapper<DaibanyewuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DaibanyewuEntity> wrapper) {
		  Page<DaibanyewuView> page =new Query<DaibanyewuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DaibanyewuVO> selectListVO(Wrapper<DaibanyewuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DaibanyewuVO selectVO(Wrapper<DaibanyewuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DaibanyewuView> selectListView(Wrapper<DaibanyewuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DaibanyewuView selectView(Wrapper<DaibanyewuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
