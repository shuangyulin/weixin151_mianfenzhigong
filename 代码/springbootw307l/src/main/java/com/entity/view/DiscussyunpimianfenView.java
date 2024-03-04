package com.entity.view;

import com.entity.DiscussyunpimianfenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 云匹面粉评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-26 11:29:23
 */
@TableName("discussyunpimianfen")
public class DiscussyunpimianfenView  extends DiscussyunpimianfenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyunpimianfenView(){
	}
 
 	public DiscussyunpimianfenView(DiscussyunpimianfenEntity discussyunpimianfenEntity){
 	try {
			BeanUtils.copyProperties(this, discussyunpimianfenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
