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


import com.dao.BaozhangDao;
import com.entity.BaozhangEntity;
import com.service.BaozhangService;
import com.entity.vo.BaozhangVO;
import com.entity.view.BaozhangView;

@Service("baozhangService")
public class BaozhangServiceImpl extends ServiceImpl<BaozhangDao, BaozhangEntity> implements BaozhangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BaozhangEntity> page = this.selectPage(
                new Query<BaozhangEntity>(params).getPage(),
                new EntityWrapper<BaozhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BaozhangEntity> wrapper) {
		  Page<BaozhangView> page =new Query<BaozhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BaozhangVO> selectListVO(Wrapper<BaozhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BaozhangVO selectVO(Wrapper<BaozhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BaozhangView> selectListView(Wrapper<BaozhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BaozhangView selectView(Wrapper<BaozhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
