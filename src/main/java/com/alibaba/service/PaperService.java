package com.alibaba.service;

import com.alibaba.pojo.Paper;

import java.util.List;

public interface PaperService {
    int addPaper(Paper paper);
    int deletePaperById(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    Paper queryByName(String name, long id);
    List<Paper> queryAllPaperByuserID(long uid);
    List<Paper> queryAllPaper();
}