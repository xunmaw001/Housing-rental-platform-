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


import com.dao.ZujinjiesuanDao;
import com.entity.ZujinjiesuanEntity;
import com.service.ZujinjiesuanService;
import com.entity.vo.ZujinjiesuanVO;
import com.entity.view.ZujinjiesuanView;

@Service("zujinjiesuanService")
public class ZujinjiesuanServiceImpl extends ServiceImpl<ZujinjiesuanDao, ZujinjiesuanEntity> implements ZujinjiesuanService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZujinjiesuanEntity> page = this.selectPage(
                new Query<ZujinjiesuanEntity>(params).getPage(),
                new EntityWrapper<ZujinjiesuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZujinjiesuanEntity> wrapper) {
		  Page<ZujinjiesuanView> page =new Query<ZujinjiesuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZujinjiesuanVO> selectListVO(Wrapper<ZujinjiesuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZujinjiesuanVO selectVO(Wrapper<ZujinjiesuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZujinjiesuanView> selectListView(Wrapper<ZujinjiesuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZujinjiesuanView selectView(Wrapper<ZujinjiesuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
