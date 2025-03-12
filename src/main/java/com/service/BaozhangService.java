package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BaozhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BaozhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BaozhangView;


/**
 * 报障
 *
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface BaozhangService extends IService<BaozhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BaozhangVO> selectListVO(Wrapper<BaozhangEntity> wrapper);
   	
   	BaozhangVO selectVO(@Param("ew") Wrapper<BaozhangEntity> wrapper);
   	
   	List<BaozhangView> selectListView(Wrapper<BaozhangEntity> wrapper);
   	
   	BaozhangView selectView(@Param("ew") Wrapper<BaozhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BaozhangEntity> wrapper);
   	
}

