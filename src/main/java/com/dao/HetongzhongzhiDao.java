package com.dao;

import com.entity.HetongzhongzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HetongzhongzhiVO;
import com.entity.view.HetongzhongzhiView;


/**
 * 合同终止
 * 
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface HetongzhongzhiDao extends BaseMapper<HetongzhongzhiEntity> {
	
	List<HetongzhongzhiVO> selectListVO(@Param("ew") Wrapper<HetongzhongzhiEntity> wrapper);
	
	HetongzhongzhiVO selectVO(@Param("ew") Wrapper<HetongzhongzhiEntity> wrapper);
	
	List<HetongzhongzhiView> selectListView(@Param("ew") Wrapper<HetongzhongzhiEntity> wrapper);

	List<HetongzhongzhiView> selectListView(Pagination page,@Param("ew") Wrapper<HetongzhongzhiEntity> wrapper);
	
	HetongzhongzhiView selectView(@Param("ew") Wrapper<HetongzhongzhiEntity> wrapper);
	
}
