package com.hrlweibo.controller.backend;

import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.service.IWeiBoService;
import com.hrlweibo.service.IWeiBoVedioService;
import com.hrlweibo.vo.FindHomeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/manage/hrlvedio")
public class WeiBoVedioController {


    @Autowired
    private IWeiBoVedioService iWeiBoService;


    //获取所有视频分类
    @RequestMapping("list.do")
    @ResponseBody
    public ServerResponse getList() {
        return iWeiBoService.getVdieoCategory();
    }


    @RequestMapping("recommendlist.do")
    @ResponseBody
    public ServerResponse getVideoRecommendList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        ServerResponse response = iWeiBoService.getVideoRecommendList(pageNum, pageSize);
        return response;
    }


    @RequestMapping("videodetailrecommedlist.do")
    @ResponseBody
    public ServerResponse getVideoDetailRecommendList(@RequestParam(value = "videoid") int videoid) {
        ServerResponse response = iWeiBoService.getVideoDetailRecommendList(videoid);
        return response;
    }

    @RequestMapping("hotlist.do")
    @ResponseBody
    public ServerResponse getVideoHotList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        ServerResponse response = iWeiBoService.getVideoHotList(pageNum, pageSize);
        return response;
    }


    @RequestMapping("hotbannerad.do")
    @ResponseBody
    public ServerResponse getVideoHotList() {
        ServerResponse response = iWeiBoService.getVideoHotBannerAdList();
        return response;
    }


    @RequestMapping("smallVideolist.do")
    @ResponseBody
    public ServerResponse smallVideolist(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        ServerResponse response = iWeiBoService.smallVideolist(pageNum, pageSize);
        return response;
    }


}
