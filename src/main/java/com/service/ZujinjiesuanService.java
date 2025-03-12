package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZujinjiesuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZujinjiesuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZujinjiesuanView;


/**
 * 租金结算
 *
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface ZujinjiesuanService extends IService<ZujinjiesuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZujinjiesuanVO> selectListVO(Wrapper<ZujinjiesuanEntity> wrapper);
   	
   	ZujinjiesuanVO selectVO(@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);
   	
   	List<ZujinjiesuanView> selectListView(Wrapper<ZujinjiesuanEntity> wrapper);
   	
   	ZujinjiesuanView selectView(@Param("ew") Wrapper<ZujinjiesuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZujinjiesuanEntity> wrapper);
   	
}

