package com.entity.vo;

import com.entity.RichengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 日程
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-26 21:34:19
 */
public class RichengVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 日程内容
	 */
	
	private String richengneirong;
		
	/**
	 * 房屋名称
	 */
	
	private String fangwumingcheng;
		
	/**
	 * 房屋类型
	 */
	
	private String fangwuleixing;
		
	/**
	 * 详细地址
	 */
	
	private String xiangxidizhi;
		
	/**
	 * 每月租金
	 */
	
	private String meiyuezujin;
		
	/**
	 * 交付方式
	 */
	
	private String jiaofufangshi;
		
	/**
	 * 日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date riqi;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
				
	
	/**
	 * 设置：日程内容
	 */
	 
	public void setRichengneirong(String richengneirong) {
		this.richengneirong = richengneirong;
	}
	
	/**
	 * 获取：日程内容
	 */
	public String getRichengneirong() {
		return richengneirong;
	}
				
	
	/**
	 * 设置：房屋名称
	 */
	 
	public void setFangwumingcheng(String fangwumingcheng) {
		this.fangwumingcheng = fangwumingcheng;
	}
	
	/**
	 * 获取：房屋名称
	 */
	public String getFangwumingcheng() {
		return fangwumingcheng;
	}
				
	
	/**
	 * 设置：房屋类型
	 */
	 
	public void setFangwuleixing(String fangwuleixing) {
		this.fangwuleixing = fangwuleixing;
	}
	
	/**
	 * 获取：房屋类型
	 */
	public String getFangwuleixing() {
		return fangwuleixing;
	}
				
	
	/**
	 * 设置：详细地址
	 */
	 
	public void setXiangxidizhi(String xiangxidizhi) {
		this.xiangxidizhi = xiangxidizhi;
	}
	
	/**
	 * 获取：详细地址
	 */
	public String getXiangxidizhi() {
		return xiangxidizhi;
	}
				
	
	/**
	 * 设置：每月租金
	 */
	 
	public void setMeiyuezujin(String meiyuezujin) {
		this.meiyuezujin = meiyuezujin;
	}
	
	/**
	 * 获取：每月租金
	 */
	public String getMeiyuezujin() {
		return meiyuezujin;
	}
				
	
	/**
	 * 设置：交付方式
	 */
	 
	public void setJiaofufangshi(String jiaofufangshi) {
		this.jiaofufangshi = jiaofufangshi;
	}
	
	/**
	 * 获取：交付方式
	 */
	public String getJiaofufangshi() {
		return jiaofufangshi;
	}
				
	
	/**
	 * 设置：日期
	 */
	 
	public void setRiqi(Date riqi) {
		this.riqi = riqi;
	}
	
	/**
	 * 获取：日期
	 */
	public Date getRiqi() {
		return riqi;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
			
}
