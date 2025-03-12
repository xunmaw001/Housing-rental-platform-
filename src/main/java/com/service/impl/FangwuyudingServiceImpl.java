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


import com.dao.FangwuyudingDao;
import com.entity.FangwuyudingEntity;
import com.service.FangwuyudingService;
import com.entity.vo.FangwuyudingVO;
import com.entity.view.FangwuyudingView;

@Service("fangwuyudingService")
public class FangwuyudingServiceImpl extends ServiceImpl<FangwuyudingDao, FangwuyudingEntity> implements FangwuyudingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FangwuyudingEntity> page = this.selectPage(
                new Query<FangwuyudingEntity>(params).getPage(),
                new EntityWrapper<FangwuyudingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FangwuyudingEntity> wrapper) {
		  Page<FangwuyudingView> page =new Query<FangwuyudingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FangwuyudingVO> selectListVO(Wrapper<FangwuyudingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FangwuyudingVO selectVO(Wrapper<FangwuyudingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FangwuyudingView> selectListView(Wrapper<FangwuyudingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FangwuyudingView selectView(Wrapper<FangwuyudingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
