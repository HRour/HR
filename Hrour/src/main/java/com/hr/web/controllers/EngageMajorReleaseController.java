package com.hr.web.controllers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hr.bean.ConfigFileFirstKind;
import com.hr.bean.ConfigMajorKind;
import com.hr.bean.EngageMajorRelease;
import com.hr.biz.ConfigFileFirstKindBiz;
import com.hr.biz.ConfigFileSecondKindBiz;
import com.hr.biz.ConfigFileThirdKindBiz;
import com.hr.biz.ConfigMajorBiz;
import com.hr.biz.ConfigMajorKindBiz;
import com.hr.biz.EngageMajorReleaseBiz;

@Controller
public class EngageMajorReleaseController {
	private static final Log logger = LogFactory.getLog(EngageMajorReleaseController.class);
	
	private ConfigFileSecondKindBiz configFileSecondKindBiz;
	private ConfigFileFirstKindBiz configFileFirstKindBiz;
	private ConfigFileThirdKindBiz configFileThirdKindBiz;
	private ConfigMajorBiz configMajorBiz;
	private ConfigMajorKindBiz configMajorKindBiz;
	private EngageMajorReleaseBiz releaseBiz;
	
	@Resource(name = "configFileSecondKindBizImpl")
	public void setConfigFileSecondKindBiz(ConfigFileSecondKindBiz configFileSecondKindBiz) {
		this.configFileSecondKindBiz = configFileSecondKindBiz;
	}
	@Resource(name = "configFileFirstKindBizImpl")
	public void setConfigFileFirstKindBiz(ConfigFileFirstKindBiz configFileFirstKindBiz) {
		this.configFileFirstKindBiz = configFileFirstKindBiz;
	}
	@Resource(name = "configFileThirdKindBizImpl")
	public void setConfigFileThirdKindBiz(ConfigFileThirdKindBiz configFileThirdKindBiz) {
		this.configFileThirdKindBiz = configFileThirdKindBiz;
	}
	@Resource(name = "configMajorBizImpl")
	public void setConfigMajorBiz(ConfigMajorBiz configMajorBiz) {
		this.configMajorBiz = configMajorBiz;
	}
	@Resource(name = "configMajorKindBizImpl")
	public void setConfigMajorKindBiz(ConfigMajorKindBiz configMajorKindBiz) {
		this.configMajorKindBiz = configMajorKindBiz;
	}
	@Resource(name = "engageMajorReleaseBizImpl")
	public void setReleaseBiz(EngageMajorReleaseBiz releaseBiz) {
		this.releaseBiz = releaseBiz;
	}
	
	@RequestMapping(value = "/engagemajorrelease.do")
	public String getrelease(Model model, HttpServletRequest request,EngageMajorRelease release){
		String opreate = request.getParameter("operate");
		if("toAdd".equals(opreate)){
			List<ConfigFileFirstKind> lists = this.configFileFirstKindBiz.getAllConfigFileFirstKinds();
			List<ConfigMajorKind> list2 = this.configMajorKindBiz.getAll();
			model.addAttribute("list", lists);
			model.addAttribute("list2", list2);
			return "engage/major_release/register";
		}else if("".equals(opreate)){
			return "engage/major_release/register_ok_a"; 
		}else if("toEdit".equals(opreate)){		
			
			return "engage/major_release/change_list"; 
		}
		return null;		
	}
	
}
