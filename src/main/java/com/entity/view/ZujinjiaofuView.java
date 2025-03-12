package com.entity.view;

import com.entity.ZujinjiaofuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 租金交付
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
@TableName("zujinjiaofu")
public class ZujinjiaofuView  extends ZujinjiaofuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZujinjiaofuView(){
	}
 
 	public ZujinjiaofuView(ZujinjiaofuEntity zujinjiaofuEntity){
 	try {
			BeanUtils.copyProperties(this, zujinjiaofuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
