package com.hrlweibo.controller.backend;

import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.pojo.FeedBack;
import com.hrlweibo.pojo.User;
import com.hrlweibo.service.ICommentService;
import com.hrlweibo.service.IUserService;
import com.hrlweibo.vo.OtherUserVo;
import com.hrlweibo.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;


@Controller
@RequestMapping("/manage/hrluser")
public class UserController {


    @Autowired
    private IUserService iUserService;


    @RequestMapping(value = "login.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<UserVo> login(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password) {
        ServerResponse<UserVo> response = iUserService.login(username, password);
        return response;
    }


    @RequestMapping(value = "regist.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> register(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password) {
        User mUser = new User();
        mUser.setUsername(username);
        mUser.setPassword(password);
        return iUserService.register(mUser);
    }


    @RequestMapping(value = "get_user_info.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<OtherUserVo> getUserInfo(@RequestParam(value = "muserId") String muserId, @RequestParam(value = "otheruserId") String otheruserId) {
        ServerResponse<OtherUserVo> response = iUserService.getInformation(muserId, otheruserId);
        return response;
    }


    @RequestMapping(value = "uploadfile.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse uploadfile(@RequestParam("files") MultipartFile[] files, @RequestParam("description") String descriptions) {
        ServerResponse response = iUserService.feedback(files, new FeedBack());
        return response;
    }

    @RequestMapping(value = "updateHead.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse updateHead(@RequestParam("headFile") MultipartFile mFile, @RequestParam("userId") long userId) {
        ServerResponse response = iUserService.updateUserHead(mFile, userId);
        return response;
    }


    @RequestMapping(value = "updatePersonSign.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse updatePersonSign(@RequestParam("personSign") String personSign, @RequestParam("userId") long userId) {
        ServerResponse response = iUserService.updatePersonSign(personSign, userId);
        return response;
    }


    @RequestMapping(value = "updateNcik.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse updateNcik(@RequestParam("nick") String nick, @RequestParam("userId") long userId) {
        ServerResponse response = iUserService.updateNick(nick, userId);
        return response;
    }


    @RequestMapping(value = "getFollowList.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse getFollowList(@RequestParam(value = "mcurrentuserId", required = false, defaultValue = "0") long userId, @RequestParam("mqueryuseid") long otheruserId
            , @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        ServerResponse response = iUserService.getFollowList(userId, otheruserId, pageNum, pageSize);
        return response;
    }

    @RequestMapping(value = "getFanList.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse getFansList(@RequestParam(value = "mcurrentuserId", required = false, defaultValue = "0") long userId, @RequestParam("mqueryuseid") long otheruserId
            , @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        ServerResponse response = iUserService.getFanList(userId, otheruserId, pageNum, pageSize);
        return response;
    }


    @RequestMapping(value = "getFanFollowRecommend.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse getFansList(@RequestParam(value = "userId", required = false, defaultValue = "0") long userId
            , @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        ServerResponse response = iUserService.getFanFollowRecList(userId, pageNum, pageSize);
        return response;
    }


    //关注他人
    @RequestMapping(value = "followOther.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse followOther(@RequestParam(value = "userid") long userId,
                                      @RequestParam("otheruserid") long otheruserId) {
        ServerResponse response = iUserService.followOther(userId, otheruserId);
        return response;
    }


    //取消关注他人
    @RequestMapping(value = "followCancelOther.do", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse followCancelOther(@RequestParam(value = "userid") long userId,
                                            @RequestParam("otheruserid") long otheruserId) {
        ServerResponse response = iUserService.followCancelOther(userId, otheruserId);
        return response;
    }


}
