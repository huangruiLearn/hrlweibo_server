package com.hrlweibo.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.dao.*;
import com.hrlweibo.pojo.*;
import com.hrlweibo.service.IWeiBoService;
import com.hrlweibo.util.TxFileUtil;
import com.hrlweibo.vo.*;
import com.mysql.jdbc.StringUtils;
import org.apache.http.util.TextUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("IWeiBoService")
public class WeiBoServiceImpl implements IWeiBoService {


    @Autowired
    private WeiBoMapper weiBoMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private CommentMapper commentMapper;

     @Autowired
    private TopicMapper topicMapper;

    @Autowired
    private TopicTypeMapper topicTypeMapper;


    @Autowired
    private ZanMapper zanMapper;

    @Autowired
    private ForwardMapper forwardMapper;


    @Resource(name="ICommentService")
    CommentServiceImpl mCommentService;

    //获取微博列表
    @Override
    public ServerResponse<PageInfo> getProductList(int catid,int pageNum, int pageSize,int userId) {
        PageHelper.startPage(pageNum,pageSize);
        List<WeiBo> productList = weiBoMapper.selectListByCatId(Long.parseLong(catid+""));
        List<WeiBoListVo> productListVoList = Lists.newArrayList();
        for(WeiBo productItem : productList){
            WeiBoListVo productListVo = assembleProductListVo(productItem,userId);
            productListVoList.add(productListVo);
        }
        PageInfo pageResult = new PageInfo(productList);
        pageResult.setList(productListVoList);
        return ServerResponse.createBySuccess(pageResult);
    }

    //获取微博详情
    @Override
    public ServerResponse<WeiBoDetailVo> getWeiBoDetail(int weiboid) {
           WeiBoDetailVo mWeiBoDetail=new WeiBoDetailVo();
           List<WeiBoForwardVo> forwardList=new ArrayList<>();;
            List<Forward> mZfWeiBoList = forwardMapper.queryList( );
          for (int i=0;i<mZfWeiBoList.size();i++){
              WeiBoForwardVo mVo=new WeiBoForwardVo();
              User mUser= userMapper.selectByPrimaryKey(Integer.parseInt(mZfWeiBoList.get(i).getUserid()+""));
              mVo.setZfid(mZfWeiBoList.get(i).getForwardid()+"");
              mVo.setFromuid(mZfWeiBoList.get(i).getUserid()+"");
              mVo.setFromhead(TxFileUtil.baseTxUrl+mUser.getHeadurl()+"");
              mVo.setFromuname(mUser.getNick()+"");
              mVo.setFromuserismember(mUser.getIsmember());
              mVo.setFromuserisvertify(mUser.getIsvertify());
              mVo.setContent(mZfWeiBoList.get(i).getContent());
              mVo.setCreatetime(mZfWeiBoList.get(i).getCreatetime());
              forwardList.add(mVo);
          }
            if (forwardList.size()<11){
                mWeiBoDetail.setForward(forwardList);
            }else {
                mWeiBoDetail.setForward(forwardList.subList(0,10));
            }


         List<Comment> productList = commentMapper.queryListByWeiBoId(Long.parseLong(  "1"));
         List<CommentVo> commentList=    mCommentService.getCommonCommenttList(productList,weiboid );
         if (commentList.size()<11){
             mWeiBoDetail.setComment(commentList);
         }else {
             mWeiBoDetail.setComment(commentList.subList(0,10));
         }


        return ServerResponse.createBySuccess(mWeiBoDetail);
    }

    @Override
    public ServerResponse<PageInfo> getWeiBoForwardList(int weiboId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<WeiBoForwardVo> forwardList=new ArrayList<>();;
        List<Forward> mZfWeiBoList = forwardMapper.queryList( );
        for (int i=0;i<mZfWeiBoList.size();i++){
            WeiBoForwardVo mVo=new WeiBoForwardVo();
            User mUser= userMapper.selectByPrimaryKey(Integer.parseInt(mZfWeiBoList.get(i).getUserid()+""));
            mVo.setZfid(mZfWeiBoList.get(i).getForwardid()+"");
            mVo.setFromuid(mZfWeiBoList.get(i).getUserid()+"");
            mVo.setFromhead(TxFileUtil.baseTxUrl+mUser.getHeadurl()+"");
            mVo.setFromuname(mUser.getNick()+"");
            mVo.setFromuserismember(mUser.getIsmember());
            mVo.setFromuserisvertify(mUser.getIsvertify());
            mVo.setContent(mZfWeiBoList.get(i).getContent());
            mVo.setCreatetime(mZfWeiBoList.get(i).getCreatetime());
            forwardList.add(mVo);
        }
        PageInfo pageResult = new PageInfo(forwardList);
        pageResult.setList(forwardList);
        return ServerResponse.createBySuccess(pageResult);
    }

    //点赞微博
    @Override
    public ServerResponse zanWeiBo(int userid, int  weiboid, int status) {
        //点赞 1点赞 0取消点赞
        Zan mZan=zanMapper.selectRecordByUserAndWeiBo(Long.parseLong(userid+""),Long.parseLong(weiboid+""));
        if (status==0){
            if (mZan==null){
                //如果没有这条记录,取消点赞失败
                return  ServerResponse.createByErrorMessage("取消点赞失败");
            }else {
                //如果有这条记录,删除
                zanMapper.deleteByPrimaryKey(mZan.getZanid());
                WeiBo mWeiBo=weiBoMapper.selectByPrimaryKey(Long.parseLong(weiboid+""));
                mWeiBo.setLikeNum(mWeiBo.getLikeNum()-1);
                weiBoMapper.updateByPrimaryKey(mWeiBo);
                return  ServerResponse.createBySuccess("取消点赞成功");
            }


        }else {
            if (mZan==null){
                //如果没有这条记录, 点赞成功
                Zan mZanNew=new Zan();
                mZanNew.setUserid(Long.parseLong(userid+""));
                mZanNew.setWeiboid(Long.parseLong(weiboid+""));
                mZanNew.setTail("");
                zanMapper.insert(mZanNew);
                WeiBo mWeiBo=weiBoMapper.selectByPrimaryKey(Long.parseLong(weiboid+""));
                mWeiBo.setLikeNum(mWeiBo.getLikeNum()+1);
                weiBoMapper.updateByPrimaryKey(mWeiBo);

                return  ServerResponse.createBySuccess("点赞成功");
            }else {
                //如果有这条记录,点赞失败
                return  ServerResponse.createByErrorMessage("已经点过赞啦");
            }

         }


    }

    //发布微博
    @Override
    public ServerResponse  publishWeiBo(int userid, String content, MultipartFile[] multipartFile) {
        ArrayList<String> mListUrls=TxFileUtil. saveFileToLoacle(multipartFile);

        WeiBo mWeiBo=new WeiBo();
        mWeiBo.setUserId(Long.parseLong(userid+""));
        mWeiBo.setContent(content);
        mWeiBo.setCatId(10l);
        mWeiBo.setTail("hrl微博客户端");

        mWeiBo.setCommentNum(0l);
        mWeiBo.setZhuanfaNum(0l);
        mWeiBo.setIsZhunfa(0);
        mWeiBo.setZfWeiboid(0l);
        mWeiBo.setLikeNum(0l);

        if (mListUrls.size()==1){
            mWeiBo.setPic1(mListUrls.get(0));
        }
        if (mListUrls.size()==2){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));

        }
        if (mListUrls.size()==3){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
        }
        if (mListUrls.size()==4){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
            mWeiBo.setPic4(mListUrls.get(3));
        }
        if (mListUrls.size()==5){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
            mWeiBo.setPic4(mListUrls.get(3));
            mWeiBo.setPic5(mListUrls.get(4));
        }
        if (mListUrls.size()==6){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
            mWeiBo.setPic4(mListUrls.get(3));
            mWeiBo.setPic5(mListUrls.get(4));
            mWeiBo.setPic6(mListUrls.get(5));

        }
        if (mListUrls.size()==7){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
            mWeiBo.setPic4(mListUrls.get(3));
            mWeiBo.setPic5(mListUrls.get(4));
            mWeiBo.setPic6(mListUrls.get(5));
            mWeiBo.setPic7(mListUrls.get(6));
        }
        if (mListUrls.size()==8){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
            mWeiBo.setPic4(mListUrls.get(3));
            mWeiBo.setPic5(mListUrls.get(4));
            mWeiBo.setPic6(mListUrls.get(5));
            mWeiBo.setPic7(mListUrls.get(6));
            mWeiBo.setPic8(mListUrls.get(7));
        }
        if (mListUrls.size()==9){
            mWeiBo.setPic1(mListUrls.get(0));
            mWeiBo.setPic2(mListUrls.get(1));
            mWeiBo.setPic3(mListUrls.get(2));
            mWeiBo.setPic4(mListUrls.get(3));
            mWeiBo.setPic5(mListUrls.get(4));
            mWeiBo.setPic6(mListUrls.get(5));
            mWeiBo.setPic7(mListUrls.get(6));
            mWeiBo.setPic8(mListUrls.get(7));
            mWeiBo.setPic9(mListUrls.get(8));
        }
        int result=weiBoMapper.insert(mWeiBo);


        if (result == 0) {
            return  ServerResponse.createByErrorMessage("发布失败");
        }
        return  ServerResponse.createBySuccess("发布成功:"+mListUrls.get(0));

    }



    //转发微博
    @Override
    public  ServerResponse<WeiBoListVo> forwardWeiBo(int userid, String content, int zfweiboid) {
        WeiBo mWeiBo=new WeiBo();
        mWeiBo.setUserId(Long.parseLong(userid+""));
        mWeiBo.setContent(content);
        mWeiBo.setZfWeiboid(Long.parseLong(zfweiboid+""));
        mWeiBo.setCatId(10l);
        mWeiBo.setCommentNum(0l);
        mWeiBo.setZhuanfaNum(0l);
        mWeiBo.setTail("hrl微博客户端");
        mWeiBo.setIsZhunfa(1);
        mWeiBo.setLikeNum(0l);
         weiBoMapper.insert(mWeiBo);
        //WeiBo  rWeiBo = weiBoMapper.selectByPrimaryKey(Long.parseLong(mWeiBo.getWeiboId()+""));
        // WeiBoListVo   rWeiBoVo= assembleProductListVo(rWeiBo);
        return  ServerResponse.createBySuccess();
    }






    @Override
    public ServerResponse<WeiBoAtUser> getWeiBoAtUserList() {
        WeiBoAtUser mAtUsers=new WeiBoAtUser();
        List<User> mAllUser=userMapper.selectAllUser ();
        ArrayList<UserVo>  mUserListHot=new ArrayList<>();
        ArrayList<UserVo>  mUserListCommon=new ArrayList<>();
        for (int i=0;i<5;i++){
            User mUser =mAllUser.get(i)  ;
            UserVo mFollowUser=new UserVo();
            mFollowUser.setId(mUser.getId() + "");
            mFollowUser.setNick(mUser.getNick() + "");
            mFollowUser.setDecs(mUser.getDecs() + "");
            mFollowUser.setHeadurl(TxFileUtil.baseTxUrl+mUser.getHeadurl() + "");
            mUserListHot.add(mFollowUser);
         }

        for (int i=5;i<mAllUser.size();i++){
            User mUser =mAllUser.get(i)  ;
            UserVo mFollowUser=new UserVo();
            mFollowUser.setId(mUser.getId() + "");
            mFollowUser.setNick(mUser.getNick() + "");
            mFollowUser.setDecs(mUser.getDecs() + "");
            mFollowUser.setHeadurl(TxFileUtil.baseTxUrl+mUser.getHeadurl() + "");
            mUserListCommon.add(mFollowUser);
        }
        mAtUsers.setHotusers(mUserListHot);
        mAtUsers.setNormalusers(mUserListCommon);
         return ServerResponse.createBySuccess( mAtUsers);
    }

    // private TopicMapper topicMapper;

    // private TopicTypeMapper topicTypeMapper;
    @Override
    public ServerResponse<List<TopicType>> getTopicTypeList() {
         List<TopicType> mAllTopicType=topicTypeMapper.selectAllTopicType ();
         mAllTopicType=mAllTopicType.subList(0,6);
         return ServerResponse.createBySuccess( mAllTopicType);
    }

    @Override
    public ServerResponse<List<TopicVo>> getTopicList(int topicType) {
        List<TopicVo> mAllTopicVo=new ArrayList<>();



        List<Topic> mAllTopic=topicMapper.selectTopicByTypeId (topicType);

        for (int i=0;i<mAllTopic.size();i++){
            TopicVo mVo=new TopicVo();
            mVo.setTopicid(mAllTopic.get(i).getTopicid()+"");
            mVo.setTopicattitude(mAllTopic.get(i).getTopicattitude()+"");
            mVo.setTopicdesc(mAllTopic.get(i).getTopicdesc()+"");
            mVo.setTopicdiscuss(mAllTopic.get(i).getTopicdiscuss()+"");
            mVo.setTopichost(mAllTopic.get(i).getTopichost()+"");
            mVo.setTopicimg(TxFileUtil.baseTxUrl+mAllTopic.get(i).getTopicimg()+"");
            mVo.setTopicread(mAllTopic.get(i).getTopicread()+"");
            mVo.setTopictype(mAllTopic.get(i).getTopictype()+"");
            mAllTopicVo.add(mVo);

        }
        return ServerResponse.createBySuccess( mAllTopicVo);


    }



    public WeiBoListVo assembleProductListVo(WeiBo product,int mUserId){
        User mDbUser= userMapper.selectByPrimaryKey(Integer.parseInt(product.getUserId()+""));



        WeiBoUserVo mUser=new WeiBoUserVo();
        mUser.setId(mDbUser.getId());
        mUser.setDecs(mDbUser.getDecs());
        mUser.setHeadurl(TxFileUtil.baseTxUrl+mDbUser.getHeadurl());
        mUser.setNick(mDbUser.getNick());
        mUser.setIsmember(mDbUser.getIsmember());
        mUser.setIsvertify(mDbUser.getIsvertify());

        WeiBoListVo productListVo = new WeiBoListVo();
        productListVo.setWeiboId(product.getWeiboId()+"");
        productListVo.setCategoryId(product.getCatId()+"");
        System.out.println("取出的内容是:"+product.getContent()+"");
        productListVo.setContent(product.getContent()+"");
        productListVo.setUserInfo(mUser);
        productListVo.setTail(product.getTail()+"");
        productListVo.setCreatetime(product.getCreateTime());
        productListVo.setZhuanfaNum(product.getZhuanfaNum());
        productListVo.setLikeNum(product.getLikeNum());
        productListVo.setCommentNum(product.getCommentNum());

        if (!TextUtils.isEmpty(product.getVediourl())){
            productListVo.setVediourl(TxFileUtil.baseTxUrl+product.getVediourl()+"");
        }else {
            productListVo.setVediourl(product.getVediourl()+"");
        }

        System.out.println("用户id:"+mUserId+"微博id:"+Integer.parseInt(product.getWeiboId()+""));

        Zan mZan= zanMapper.selectRecordByUserAndWeiBo(Long.parseLong(mUserId+""),Long.parseLong(product.getWeiboId()+""));
        if (mZan!=null){
            productListVo.setZanStatus(1);
        }else {
            productListVo.setZanStatus(0);
        }


         if (product.getIsZhunfa()==1){
            //如果这个微博是转发微博
            WeiBo mZfWeiBo= weiBoMapper.selectByPrimaryKey(Long.parseLong(product.getZfWeiboid()+""));
            User mZfUser= userMapper.selectByPrimaryKey(Integer.parseInt(mZfWeiBo.getUserId()+""));
            productListVo.setZfContent(mZfWeiBo.getContent()+"");
            productListVo.setZfNick(mZfUser.getNick()+"");
            productListVo.setZfWeiBoId(mZfWeiBo.getWeiboId()+"");
            productListVo.setZfUserId(mZfUser.getId()+"");
            productListVo.setZfPicurl(getPicList(mZfWeiBo));

             if (!TextUtils.isEmpty(mZfWeiBo.getVediourl())){
                 productListVo.setZfVedioUrl(TxFileUtil.baseTxUrl+mZfWeiBo.getVediourl()+"");

             }else {
                 productListVo.setZfVedioUrl(mZfWeiBo.getVediourl()+"");

             }

              productListVo.setContainZf(true );
        }else {
             productListVo.setZfPicurl(new ArrayList<String>());
             productListVo.setContainZf(false );
         }
         List mListUrl = getPicList(product);
         productListVo.setPicurl(mListUrl);
        return productListVo;
    }

    private List getPicList(WeiBo product) {
        List mListUrl=new ArrayList();
        if (!StringUtils.isNullOrEmpty(product.getPic1())){
            mListUrl.add(product.getPic1());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic2())){
            mListUrl.add(product.getPic2());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic3())){
            mListUrl.add(product.getPic3());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic4())){
            mListUrl.add(product.getPic4());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic5())){
            mListUrl.add(product.getPic5());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic6())){
            mListUrl.add(product.getPic6());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic7())){
            mListUrl.add(product.getPic7());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic8())){
            mListUrl.add(product.getPic8());
        }
        if (!StringUtils.isNullOrEmpty(product.getPic9())){
            mListUrl.add(product.getPic9());
        }
        return mListUrl;
    }

}
