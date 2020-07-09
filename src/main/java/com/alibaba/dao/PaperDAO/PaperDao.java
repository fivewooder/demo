package com.alibaba.dao.PaperDAO;

import com.alibaba.pojo.Paper;

import java.util.List;

public interface PaperDao {
    int addPaper(Paper paper);
    int deletePaperById(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    List<Paper> queryAllPaper();
    List<Paper> queryAllPaperByuserID(long uid);
}
