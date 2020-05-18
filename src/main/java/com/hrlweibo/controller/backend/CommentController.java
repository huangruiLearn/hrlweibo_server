package com.hrlweibo.controller.backend;

import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.service.ICommentService;
 import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/hrlcomment")
public class CommentController {


    @Autowired
    private ICommentService iCommentService;


    //获取微博评论列表
    @RequestMapping("gainCommentsList.do")
    @ResponseBody
    public ServerResponse getCommentList( @RequestParam(value = "weiboid" ) int weiboid,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum, @RequestParam(value = "pageSize",defaultValue = "5") int pageSize){
         return iCommentService.getCommentList(weiboid,pageNum,pageSize);
    }


    //获取微博评论回复列表
    @RequestMapping("gainCommentsReplyList.do")
    @ResponseBody
    public ServerResponse gainCommentsReplyList( @RequestParam(value = "commentid" ) int commentid,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum, @RequestParam(value = "pageSize",defaultValue = "5") int pageSize){
        return iCommentService.getCommentReplyList(commentid,pageNum,pageSize);
    }


   //回复微博
    @RequestMapping("addComments.do")
    @ResponseBody
    public ServerResponse addComments( @RequestParam(value = "userId" ) String userId,@RequestParam(value = "weiboId"  ) String weiboId, @RequestParam(value = "content" ) String content){
        return iCommentService.addComment(userId,weiboId,content);
    }

    //回复评论
    @RequestMapping("addCommentsReply.do")
    @ResponseBody
    public ServerResponse addCommentsReply( @RequestParam(value = "userId" ) String userId,@RequestParam(value = "commentid"  ) String commentid, @RequestParam(value = "content" ) String content){
        return iCommentService.addCommentReply(userId,commentid,content);
    }
}
