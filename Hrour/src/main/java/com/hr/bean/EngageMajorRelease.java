package com.hr.bean;

import java.io.Serializable;
import java.util.Date;

public class EngageMajorRelease implements Serializable {
	
	private static final long serialVersionUID = -5855163977245493907L;
	
	private Short mreId;
     private String firstKindId;
     private String firstKindName;
     private String secondKindId;
     private String secondKindName;
     private String thirdKindId;
     private String thirdKindName;
     private String majorKindId;
     private String majorKindName;
     private String majorId;
     private String majorName;
     private Short humanAmount;
     private String engageType;
     private Date deadline;
     private String register;
     private String changer;
     private Date registTime;
     private Date changeTime;
     private String majorDescribe;
     private String engageRequired;
     private Page page;    
     
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public Short getMreId() {
		return mreId;
	}
	public void setMreId(Short mreId) {
		this.mreId = mreId;
	}
	public String getFirstKindId() {
		return firstKindId;
	}
	public void setFirstKindId(String firstKindId) {
		this.firstKindId = firstKindId;
	}
	public String getFirstKindName() {
		return firstKindName;
	}
	public void setFirstKindName(String firstKindName) {
		this.firstKindName = firstKindName;
	}
	public String getSecondKindId() {
		return secondKindId;
	}
	public void setSecondKindId(String secondKindId) {
		this.secondKindId = secondKindId;
	}
	public String getSecondKindName() {
		return secondKindName;
	}
	public void setSecondKindName(String secondKindName) {
		this.secondKindName = secondKindName;
	}
	public String getThirdKindId() {
		return thirdKindId;
	}
	public void setThirdKindId(String thirdKindId) {
		this.thirdKindId = thirdKindId;
	}
	public String getThirdKindName() {
		return thirdKindName;
	}
	public void setThirdKindName(String thirdKindName) {
		this.thirdKindName = thirdKindName;
	}
	public String getMajorKindId() {
		return majorKindId;
	}
	public void setMajorKindId(String majorKindId) {
		this.majorKindId = majorKindId;
	}
	public String getMajorKindName() {
		return majorKindName;
	}
	public void setMajorKindName(String majorKindName) {
		this.majorKindName = majorKindName;
	}
	public String getMajorId() {
		return majorId;
	}
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public Short getHumanAmount() {
		return humanAmount;
	}
	public void setHumanAmount(Short humanAmount) {
		this.humanAmount = humanAmount;
	}
	public String getEngageType() {
		return engageType;
	}
	public void setEngageType(String engageType) {
		this.engageType = engageType;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getChanger() {
		return changer;
	}
	public void setChanger(String changer) {
		this.changer = changer;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}
	public Date getChangeTime() {
		return changeTime;
	}
	public void setChangeTime(Date changeTime) {
		this.changeTime = changeTime;
	}
	public String getMajorDescribe() {
		return majorDescribe;
	}
	public void setMajorDescribe(String majorDescribe) {
		this.majorDescribe = majorDescribe;
	}
	public String getEngageRequired() {
		return engageRequired;
	}
	public void setEngageRequired(String engageRequired) {
		this.engageRequired = engageRequired;
	}
	
	@Override
	public String toString() {
		return "EngageMajorRelease [mreId=" + mreId + ", firstKindId=" + firstKindId + ", firstKindName="
				+ firstKindName + ", secondKindId=" + secondKindId + ", secondKindName=" + secondKindName
				+ ", thirdKindId=" + thirdKindId + ", thirdKindName=" + thirdKindName + ", majorKindId=" + majorKindId
				+ ", majorKindName=" + majorKindName + ", majorId=" + majorId + ", majorName=" + majorName
				+ ", humanAmount=" + humanAmount + ", engageType=" + engageType + ", deadline=" + deadline
				+ ", register=" + register + ", changer=" + changer + ", registTime=" + registTime + ", changeTime="
				+ changeTime + ", majorDescribe=" + majorDescribe + ", engageRequired=" + engageRequired + ", page="
				+ page + "]";
	}
     
}
