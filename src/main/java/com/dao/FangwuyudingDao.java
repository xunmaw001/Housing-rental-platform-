package com.dao;

import com.entity.FangwuyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FangwuyudingVO;
import com.entity.view.FangwuyudingView;


/**
 * 房屋预订
 * 
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface FangwuyudingDao extends BaseMapper<FangwuyudingEntity> {
	
	List<FangwuyudingVO> selectListVO(@Param("ew") Wrapper<FangwuyudingEntity> wrapper);
	
	FangwuyudingVO selectVO(@Param("ew") Wrapper<FangwuyudingEntity> wrapper);
	
	List<FangwuyudingView> selectListView(@Param("ew") Wrapper<FangwuyudingEntity> wrapper);

	List<FangwuyudingView> selectListView(Pagination page,@Param("ew") Wrapper<FangwuyudingEntity> wrapper);
	
	FangwuyudingView selectView(@Param("ew") Wrapper<FangwuyudingEntity> wrapper);
	
}
