package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.RichengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.RichengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.RichengView;


/**
 * 日程
 *
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface RichengService extends IService<RichengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RichengVO> selectListVO(Wrapper<RichengEntity> wrapper);
   	
   	RichengVO selectVO(@Param("ew") Wrapper<RichengEntity> wrapper);
   	
   	List<RichengView> selectListView(Wrapper<RichengEntity> wrapper);
   	
   	RichengView selectView(@Param("ew") Wrapper<RichengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RichengEntity> wrapper);
   	
}

