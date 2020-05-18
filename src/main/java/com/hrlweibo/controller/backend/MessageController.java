package com.hrlweibo.controller.backend;

import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.service.IFindService;
import com.hrlweibo.service.IMessageService;
import com.hrlweibo.vo.FindHomeVo;
import com.hrlweibo.vo.FindHotSearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
@RequestMapping("/hrlmessage")
public class MessageController {





    @Autowired
    private IMessageService iFindService;


    @RequestMapping("zanlist.do")
    @ResponseBody
    public ServerResponse  getCommentList( @RequestParam(value = "pageNum",defaultValue = "1") int pageNum, @RequestParam(value = "pageSize",defaultValue = "10") int pageSize){
        ServerResponse  response = iFindService.getMessageZan( pageNum,pageSize);
        return response;
    }


    @RequestMapping("commentlist.do")
    @ResponseBody
    public ServerResponse  getHotSearchList( @RequestParam(value = "pageNum",defaultValue = "1") int pageNum, @RequestParam(value = "pageSize",defaultValue = "10") int pageSize){
        ServerResponse  response = iFindService.getMessageComment(pageNum,pageSize );
        return response;
    }


}
