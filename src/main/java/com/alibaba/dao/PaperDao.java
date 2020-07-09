package com.alibaba.dao;

import com.alibaba.pojo.Paper;

import java.util.List;

public interface PaperDao {
    int addPaper(Paper paper);
    int deletePaperById(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    Paper queryByName(String name);
    List<Paper> queryAllPaper();
    List<Paper> queryAllPaperByuserID(long uid);
}
