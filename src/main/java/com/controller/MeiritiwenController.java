package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.MeiritiwenEntity;
import com.entity.view.MeiritiwenView;

import com.service.MeiritiwenService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 每日体温
 * 后端接口
 * @author 
 * @email 
 * @date 2021-11-12 16:06:24
 */
@RestController
@RequestMapping("/meiritiwen")
public class MeiritiwenController {
    @Autowired
    private MeiritiwenService meiritiwenService;


    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MeiritiwenEntity meiritiwen, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			meiritiwen.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<MeiritiwenEntity> ew = new EntityWrapper<MeiritiwenEntity>();
    	PageUtils page = meiritiwenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meiritiwen), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MeiritiwenEntity meiritiwen, 
		HttpServletRequest request){
        EntityWrapper<MeiritiwenEntity> ew = new EntityWrapper<MeiritiwenEntity>();
    	PageUtils page = meiritiwenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meiritiwen), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MeiritiwenEntity meiritiwen){
       	EntityWrapper<MeiritiwenEntity> ew = new EntityWrapper<MeiritiwenEntity>();
      	ew.allEq(MPUtil.allEQMapPre( meiritiwen, "meiritiwen")); 
        return R.ok().put("data", meiritiwenService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MeiritiwenEntity meiritiwen){
        EntityWrapper< MeiritiwenEntity> ew = new EntityWrapper< MeiritiwenEntity>();
 		ew.allEq(MPUtil.allEQMapPre( meiritiwen, "meiritiwen")); 
		MeiritiwenView meiritiwenView =  meiritiwenService.selectView(ew);
		return R.ok("查询每日体温成功").put("data", meiritiwenView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MeiritiwenEntity meiritiwen = meiritiwenService.selectById(id);
        return R.ok().put("data", meiritiwen);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MeiritiwenEntity meiritiwen = meiritiwenService.selectById(id);
        return R.ok().put("data", meiritiwen);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MeiritiwenEntity meiritiwen, HttpServletRequest request){
    	meiritiwen.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(meiritiwen);

        meiritiwenService.insert(meiritiwen);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MeiritiwenEntity meiritiwen, HttpServletRequest request){
    	meiritiwen.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(meiritiwen);

        meiritiwenService.insert(meiritiwen);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody MeiritiwenEntity meiritiwen, HttpServletRequest request){
        //ValidatorUtils.validateEntity(meiritiwen);
        meiritiwenService.updateById(meiritiwen);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        meiritiwenService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<MeiritiwenEntity> wrapper = new EntityWrapper<MeiritiwenEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = meiritiwenService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	




}
