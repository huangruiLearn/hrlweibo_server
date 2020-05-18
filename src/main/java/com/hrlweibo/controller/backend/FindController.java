package com.hrlweibo.controller.backend;

import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.service.ICommentService;
import com.hrlweibo.service.IFindService;
import com.hrlweibo.vo.FindHomeVo;
import com.hrlweibo.vo.FindHotSearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/hrlfind")
public class FindController {


    @Autowired
    private IFindService iFindService;


    @RequestMapping("find.do")
    @ResponseBody
    public ServerResponse<FindHomeVo> getCommentList( @RequestParam(value = "userId" ) int userId ){
          ServerResponse  response = iFindService.getFindHomeInfo(userId);
          return response;
    }


    //获取热搜榜
    @RequestMapping("getHotSearchList.do")
    @ResponseBody
    public ServerResponse<List<FindHotSearchVo>> getHotSearchList(  ){
        ServerResponse  response = iFindService.getHotSearchList( );
        return response;
    }





}
