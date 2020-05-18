package com.hrlweibo.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.dao.UserMapper;
import com.hrlweibo.dao.VedioCategoryMapper;
import com.hrlweibo.dao.VideoMapper;
import com.hrlweibo.dao.WeiBoMapper;
import com.hrlweibo.pojo.User;
import com.hrlweibo.pojo.VedioCategory;
import com.hrlweibo.pojo.Video;
import com.hrlweibo.pojo.WeiBo;
import com.hrlweibo.service.IWeiBoService;
import com.hrlweibo.service.IWeiBoVedioService;
import com.hrlweibo.util.TxFileUtil;
import com.hrlweibo.vo.VideoVo;
import com.hrlweibo.vo.WeiBoListVo;
import com.hrlweibo.vo.WeiBoUserVo;
import com.mysql.jdbc.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("IWeiBoVedioService")
public class IWeiBoVedioServiceImpl implements IWeiBoVedioService {


    @Autowired
    private VedioCategoryMapper mVedioCategoryMapper;


    @Autowired
    private VideoMapper mVideoMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public ServerResponse<PageInfo> getVideoRecommendList(int pageNum, int pageSize) {

        PageHelper.startPage(pageNum, pageSize);
        List<VideoVo> mListVo = getVideoList(1);
        PageInfo pageResult = new PageInfo(mListVo);
        pageResult.setList(mListVo);
        return ServerResponse.createBySuccess(pageResult);

    }

    private List<VideoVo> getVideoList(int type) {
        List<Video> mVideoList = mVideoMapper.queryByTypeId(type);
        List<VideoVo> mVideoVoList = new ArrayList<>();
        for (int i = 0; i < mVideoList.size(); i++) {
            VideoVo mVo = new VideoVo();
            User mUser = userMapper.selectByPrimaryKey(Integer.parseInt(mVideoList.get(i).getUserid() + ""));
            mVo.setId(mVideoList.get(i).getId());
            mVo.setCoverimg(mVideoList.get(i).getCoverimg() + "");
            mVo.setVideotime(mVideoList.get(i).getVideotime());
            mVo.setPlaynum(mVideoList.get(i).getPlaynum());
            mVo.setUserid(mVideoList.get(i).getUserid());
            mVo.setTag(mVideoList.get(i).getTag());
            mVo.setRecommengstr(mVideoList.get(i).getRecommengstr() + "");
            mVo.setType(mVideoList.get(i).getType());
            mVo.setIntroduce(mVideoList.get(i).getIntroduce() + "");
            mVo.setCreatetime(mVideoList.get(i).getCreatetime());
            mVo.setVideourl(mVideoList.get(i).getVideourl() + "");


            mVo.setUsername(mUser.getNick() + "");
            mVo.setUserisvertify(mUser.getIsmember());
            mVo.setUserheadurl(TxFileUtil.baseTxUrl + mUser.getHeadurl());
            mVo.setUserfancount(mUser.getFanCount());
            mVo.setUserdesc(mUser.getDecs());
            mVideoVoList.add(mVo);
        }

        return mVideoVoList;
    }

    @Override
    public ServerResponse getVideoDetailRecommendList(int videoid) {
        List<VideoVo> mListVo = getVideoList(2);
        List<VideoVo> mListNewVo = new ArrayList<>();
        for (int i = 0; i < mListVo.size(); i++) {
            if (videoid != mListVo.get(i).getId()) {
                mListNewVo.add(mListVo.get(i));
            }
        }
        return ServerResponse.createBySuccess(mListNewVo.subList(0, 9));
    }

    @Override
    public ServerResponse<PageInfo> getVideoHotList(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<VideoVo> mListVo = getVideoList(2);
        PageInfo pageResult = new PageInfo(mListVo);
        pageResult.setList(mListVo);
        return ServerResponse.createBySuccess(pageResult);
    }

    @Override
    public ServerResponse<List<String>> getVideoHotBannerAdList() {
        List<String> mStrList = new ArrayList<>();
        mStrList.add("https://mu1.sinaimg.cn/original/weiyinyue.music.sina.com.cn/weibo_media_admin/admin/phpCJhxuT1588066570.png");
        mStrList.add("https://wx2.sinaimg.cn/large/005EY2yCly1gcpzhvksxuj30fk078jvz.jpg");
        mStrList.add("https://wx4.sinaimg.cn/large/005EY2yCly1gdt4y42y2wj30dw0dwdhv.jpg");
        return ServerResponse.createBySuccess(mStrList);
    }

    @Override
    public ServerResponse<PageInfo> smallVideolist(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<VideoVo> mListVo = getVideoList(3);
        PageInfo pageResult = new PageInfo(mListVo);
        pageResult.setList(mListVo);
        return ServerResponse.createBySuccess(pageResult);
    }


    @Override
    public ServerResponse<List<VedioCategory>> getVdieoCategory() {

        List<VedioCategory> productList = mVedioCategoryMapper.queryAllVedioCategory();
        return ServerResponse.createBySuccess(productList);
    }


}
