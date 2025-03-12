package com.dao;

import com.entity.ZujinjiaofuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZujinjiaofuVO;
import com.entity.view.ZujinjiaofuView;


/**
 * 租金交付
 * 
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface ZujinjiaofuDao extends BaseMapper<ZujinjiaofuEntity> {
	
	List<ZujinjiaofuVO> selectListVO(@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);
	
	ZujinjiaofuVO selectVO(@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);
	
	List<ZujinjiaofuView> selectListView(@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);

	List<ZujinjiaofuView> selectListView(Pagination page,@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);
	
	ZujinjiaofuView selectView(@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);
	
}
