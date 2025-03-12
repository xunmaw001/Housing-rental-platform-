package com.dao;

import com.entity.BaozhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BaozhangVO;
import com.entity.view.BaozhangView;


/**
 * 报障
 * 
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface BaozhangDao extends BaseMapper<BaozhangEntity> {
	
	List<BaozhangVO> selectListVO(@Param("ew") Wrapper<BaozhangEntity> wrapper);
	
	BaozhangVO selectVO(@Param("ew") Wrapper<BaozhangEntity> wrapper);
	
	List<BaozhangView> selectListView(@Param("ew") Wrapper<BaozhangEntity> wrapper);

	List<BaozhangView> selectListView(Pagination page,@Param("ew") Wrapper<BaozhangEntity> wrapper);
	
	BaozhangView selectView(@Param("ew") Wrapper<BaozhangEntity> wrapper);
	
}
