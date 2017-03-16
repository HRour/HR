package com.hr.web.controllers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hr.bean.ConfigPrimaryKey;
import com.hr.biz.ConfigMajorKindBiz;
import com.hr.biz.ConfigPrimaryKeyBiz;

@Controller
public class ConfigPrimaryKeyController {
	private static final Log logger = LogFactory.getLog(ConfigPrimaryKeyController.class);
	 private ConfigPrimaryKeyBiz configPrimaryKeyBiz;
	 
	 @Resource(name = "configPrimaryKeyBizImpl")
		public void setconfigPrimaryKeyBiz(ConfigPrimaryKeyBiz configPrimaryKeyBiz) {
			this.configPrimaryKeyBiz = configPrimaryKeyBiz;
		}
	
	 
 
	// 获得二级机构
	@RequestMapping(value = "/configprimarykey.do")
	public String getconfigprimarykey(Model model, HttpServletRequest request,
			ConfigPrimaryKey cKey) {
		String opreate = request.getParameter("operate");
		if ("locate".equals(opreate)) {// 进入主页面
			logger.info("getconfigprimarykey called....");
			 return "config/other/primary_key";
		}  else if("list".equals(opreate)){
			List<ConfigPrimaryKey> list=this.configPrimaryKeyBiz.getAll(cKey);
			
			model.addAttribute("list", list);
			return "config/other/primary_key";
		}
		return null;
	}
}
