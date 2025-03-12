package com.entity.view;

import com.entity.BaozhangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 报障
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
@TableName("baozhang")
public class BaozhangView  extends BaozhangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BaozhangView(){
	}
 
 	public BaozhangView(BaozhangEntity baozhangEntity){
 	try {
			BeanUtils.copyProperties(this, baozhangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
