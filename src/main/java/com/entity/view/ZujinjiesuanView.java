package com.entity.view;

import com.entity.ZujinjiesuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 租金结算
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
@TableName("zujinjiesuan")
public class ZujinjiesuanView  extends ZujinjiesuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZujinjiesuanView(){
	}
 
 	public ZujinjiesuanView(ZujinjiesuanEntity zujinjiesuanEntity){
 	try {
			BeanUtils.copyProperties(this, zujinjiesuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
