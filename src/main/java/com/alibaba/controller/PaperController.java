package com.alibaba.controller;
import java.util.List;
import com.alibaba.pojo.Paper;
import com.alibaba.pojo.User;
import com.alibaba.service.PaperService;
import com.alibaba.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/paper")
public class PaperController {
    @Autowired
    private PaperService paperService;

    @Autowired
    private UserManager userManager;

    @RequestMapping("/allPaper/{userId}")
    public String list(Model model, @PathVariable("userId") Long id) {
        List<Paper> list = paperService.queryAllPaperByuserID(id);
        model.addAttribute("user", userManager.queryUser(id));
        model.addAttribute("list", list);
        return "allPaper";
    }

    @RequestMapping("/SearchResult")
    public String toShow(Model model, String name, long userId){
        model.addAttribute("selectedPaper", paperService.queryByName(name, userId));
        return "SearchResult"; //这里对应的是JSP页面，接受了MODEL传递来的参数
    }

    @RequestMapping("/toAddPaper/{userId}")
    public String toAddPaper(Model model, @PathVariable("userId") Long id) {
        model.addAttribute("user", userManager.queryUser(id));
        return "addPaper";
    }

    @RequestMapping("/addPaper")
    public String addPaper(Model model, Paper paper) {
        paperService.addPaper(paper);
        return "redirect:/paper/allPaper/"+paper.userId;
    }

    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(Model model, User user) {
        userManager.addUser(user);
        return "redirect:/paper/tologin";
    }

    @RequestMapping("/tologin")
    public String tolo(){
        return "login";
    }

    @RequestMapping("/login")
    public String Login(Model model, String sysName, String passWord){
        User instan = userManager.Match(sysName, passWord);
        if (instan == null){
            return "error";
        }else{
            return "redirect:/paper/allPaper/"+instan.userId;
        }
    }

    @RequestMapping("/del/{paperId}")
    public String deletePaper(@PathVariable("paperId") Long id) {
        Paper paper = paperService.queryById(id);
        paperService.deletePaperById(id);
        return "redirect:/paper/allPaper/"+paper.userId;
    }

    @RequestMapping("toUpdatePaper")
    public String toUpdatePaper(Model model, Long id) {
        model.addAttribute("paper", paperService.queryById(id));
        return "updatePaper";
    }

    @RequestMapping("/updatePaper")
    public String updatePaper(Model model, Paper paper) {
        paperService.updatePaper(paper); //更新数据库中的记录
        return "redirect:/paper/allPaper/"+paper.userId;
    }
}