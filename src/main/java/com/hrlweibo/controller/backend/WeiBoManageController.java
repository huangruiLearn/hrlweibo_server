package com.hrlweibo.controller.backend;

import com.hrlweibo.common.ResponseCode;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.pojo.User;
import com.hrlweibo.service.IWeiBoService;
 import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;



@Controller
@RequestMapping("/manage/hrlweibo")
public class WeiBoManageController {


    @Autowired
    private IWeiBoService iWeiBoService;


    @RequestMapping("list.do")
    @ResponseBody
    public ServerResponse getList(HttpSession session, @RequestParam(value = "catid",defaultValue = "1") int catid,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum,
                                  @RequestParam(value = "pageSize",defaultValue = "10") int pageSize,@RequestParam(value = "userId" ) int userId){

        return iWeiBoService.getProductList(catid,pageNum,pageSize,userId);
     }



    @RequestMapping("detail.do")
    @ResponseBody
    public ServerResponse getWeiBoDetail(  @RequestParam(value = "weiboid") int weiboid   ){

        return iWeiBoService.getWeiBoDetail(weiboid);
    }



    //获取微博转发列表
    @RequestMapping("getWeiBoForwardList.do")
    @ResponseBody
    public ServerResponse getCommentList( @RequestParam(value = "weiboid" ) int weiboid,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum, @RequestParam(value = "pageSize",defaultValue = "5") int pageSize){
        return iWeiBoService.getWeiBoForwardList(weiboid,pageNum,pageSize);
    }


    //转发微博
    @RequestMapping("forward.do")
    @ResponseBody
    public ServerResponse forwardWeiBo(HttpSession session, @RequestParam(value = "userId" ) int userId,@RequestParam(value = "zfWeiBoId" ) int weiBoId, @RequestParam(value = "zfContent"  ) String zfContent){
      return iWeiBoService.forwardWeiBo(userId,zfContent,weiBoId);
    }


    //点赞 1点赞 0取消点赞
    @RequestMapping("zan.do")
    @ResponseBody
    public ServerResponse zanWeiBo(  @RequestParam(value = "userId" ) int userId,@RequestParam(value = "weiboId" ) int weiBoId ,@RequestParam(value = "status" ) int status  ){
        return iWeiBoService.zanWeiBo(userId,weiBoId,status);
    }


    //发布微博
    @RequestMapping("publish.do")
    @ResponseBody
    public ServerResponse publishWeiBo(@RequestParam(value = "files",required = false) MultipartFile[] files, @RequestParam("content") String  content,@RequestParam(value = "userId" ) int userId){
        return iWeiBoService.publishWeiBo(userId,content,files);
    }

    //获取发布微博@用户列表
    @RequestMapping("getWeiBoAtUserList.do")
    @ResponseBody
    public ServerResponse getWeiBoAtUserList(  ){
        return iWeiBoService.getWeiBoAtUserList( );
    }


   //获取发布微博话题分类列表
    @RequestMapping("getTopicTypeList.do")
    @ResponseBody
    public ServerResponse getTopicTypeList(  ){
        return iWeiBoService.getTopicTypeList( );
    }

    //获取发布微博话题分类对应的话题列表
    @RequestMapping("getTopicList.do")
    @ResponseBody
    public ServerResponse getTopicList( @RequestParam(value = "topicType" ) int topicType){
        return iWeiBoService.getTopicList( topicType);
    }

}
