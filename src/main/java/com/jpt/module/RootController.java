/**
 * author: wangxj
 * create time: 上午6:54:16
 */
package com.jpt.module;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author huoshan
 * created by 2017年4月20日 上午6:54:16
 * 
 */
@Controller
@RequestMapping("/")
public class RootController extends BasicControl{
	
	@RequestMapping("{path}")
	public String toPath(@PathVariable(value="path") String path){
		
		return "/" + path;
	}
	
}
