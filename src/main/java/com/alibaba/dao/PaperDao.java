package com.alibaba.dao;

import com.alibaba.pojo.Paper;

import java.util.List;

public interface PaperDao {
    int addPaper(Paper paper);
    int deletePaperById(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    List<Paper> queryAllPaper();
}
