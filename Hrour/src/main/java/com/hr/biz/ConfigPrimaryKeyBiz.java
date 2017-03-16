package com.hr.biz;

import java.util.List;

import com.hr.bean.ConfigMajorKind;
import com.hr.bean.ConfigPrimaryKey;
import com.hr.bean.ConfigPublicChar;

public  interface ConfigPrimaryKeyBiz {
	 List<ConfigPrimaryKey> getAll(ConfigPrimaryKey cKey);//获得所有关键字
	 
}
