package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FangwuyudingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FangwuyudingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FangwuyudingView;


/**
 * 房屋预订
 *
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface FangwuyudingService extends IService<FangwuyudingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FangwuyudingVO> selectListVO(Wrapper<FangwuyudingEntity> wrapper);
   	
   	FangwuyudingVO selectVO(@Param("ew") Wrapper<FangwuyudingEntity> wrapper);
   	
   	List<FangwuyudingView> selectListView(Wrapper<FangwuyudingEntity> wrapper);
   	
   	FangwuyudingView selectView(@Param("ew") Wrapper<FangwuyudingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FangwuyudingEntity> wrapper);
   	
}

