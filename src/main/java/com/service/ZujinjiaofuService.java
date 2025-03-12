package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZujinjiaofuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZujinjiaofuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZujinjiaofuView;


/**
 * 租金交付
 *
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public interface ZujinjiaofuService extends IService<ZujinjiaofuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZujinjiaofuVO> selectListVO(Wrapper<ZujinjiaofuEntity> wrapper);
   	
   	ZujinjiaofuVO selectVO(@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);
   	
   	List<ZujinjiaofuView> selectListView(Wrapper<ZujinjiaofuEntity> wrapper);
   	
   	ZujinjiaofuView selectView(@Param("ew") Wrapper<ZujinjiaofuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZujinjiaofuEntity> wrapper);
   	
}

