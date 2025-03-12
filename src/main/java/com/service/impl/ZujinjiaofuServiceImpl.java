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


import com.dao.ZujinjiaofuDao;
import com.entity.ZujinjiaofuEntity;
import com.service.ZujinjiaofuService;
import com.entity.vo.ZujinjiaofuVO;
import com.entity.view.ZujinjiaofuView;

@Service("zujinjiaofuService")
public class ZujinjiaofuServiceImpl extends ServiceImpl<ZujinjiaofuDao, ZujinjiaofuEntity> implements ZujinjiaofuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZujinjiaofuEntity> page = this.selectPage(
                new Query<ZujinjiaofuEntity>(params).getPage(),
                new EntityWrapper<ZujinjiaofuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZujinjiaofuEntity> wrapper) {
		  Page<ZujinjiaofuView> page =new Query<ZujinjiaofuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZujinjiaofuVO> selectListVO(Wrapper<ZujinjiaofuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZujinjiaofuVO selectVO(Wrapper<ZujinjiaofuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZujinjiaofuView> selectListView(Wrapper<ZujinjiaofuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZujinjiaofuView selectView(Wrapper<ZujinjiaofuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
