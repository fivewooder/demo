package com.alibaba.service.impl;

import com.alibaba.dao.PaperDao;
import com.alibaba.pojo.Paper;
import com.alibaba.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaperServiceImpl implements PaperService {

    @Autowired
    private PaperDao paperDao;

    @Override
    public Paper queryByName(String name) {
        return paperDao.queryByName(name);
    }

    @Override
    public List<Paper> queryAllPaperByuserID(long uid) {
        return paperDao.queryAllPaperByuserID(uid);
    }

    @Override
    public int addPaper(Paper paper) {
        return paperDao.addPaper(paper);
    }

    @Override
    public int deletePaperById(long id) {
        return paperDao.deletePaperById(id);
    }

    @Override
    public int updatePaper(Paper paper) {
        return paperDao.updatePaper(paper);
    }

    @Override
    public Paper queryById(long id) {
        return paperDao.queryById(id);
    }

    @Override
    public List<Paper> queryAllPaper() {
        return paperDao.queryAllPaper();
    }
}
