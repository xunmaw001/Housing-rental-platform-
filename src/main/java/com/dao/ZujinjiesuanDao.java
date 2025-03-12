package com.dao;

import com.entity.ZujinjiesuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZujinjiesuanVO;
import com.entity.view.ZujinjiesuanView;


/**
 * 租金结算
 * 
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface ZujinjiesuanDao extends BaseMapper<ZujinjiesuanEntity> {
	
	List<ZujinjiesuanVO> selectListVO(@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);
	
	ZujinjiesuanVO selectVO(@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);
	
	List<ZujinjiesuanView> selectListView(@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);

	List<ZujinjiesuanView> selectListView(Pagination page,@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);
	
	ZujinjiesuanView selectView(@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);
	
}
