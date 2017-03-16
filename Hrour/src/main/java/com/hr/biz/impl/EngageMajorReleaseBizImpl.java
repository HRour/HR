package com.hr.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hr.bean.EngageMajorRelease;
import com.hr.biz.EngageMajorReleaseBiz;
import com.hr.dao.BaseDao;

@Service
@Transactional(readOnly = true)
public class EngageMajorReleaseBizImpl implements EngageMajorReleaseBiz{
	
	private BaseDao baseDao;

	@Resource(name = "baseDaoMybatisImpl")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public List<EngageMajorRelease> getAll() {
		List<EngageMajorRelease> list = this.baseDao.findAll(new EngageMajorRelease(), "getAll");
		return list;
	}

	@Override
	public List<EngageMajorRelease> getAll(EngageMajorRelease release) {
		List<EngageMajorRelease> list = this.baseDao.findAll(release, "getAllInfo");
		return list;
	}

	@Override
	public int getCount() {	
		return this.baseDao.findFunc(new EngageMajorRelease(), "getCount");
	}

	@Override
	public void saveInfo(EngageMajorRelease release) {
		this.baseDao.add(release, "saveRelease");
	}

	@Override
	public void updateInfo(EngageMajorRelease release) {
		this.baseDao.update(release, "updateRelease");
	}

	@Override
	public void delInfo(EngageMajorRelease release) {
		this.baseDao.delete(release, "delRelease");
	}
}
