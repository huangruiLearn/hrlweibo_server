package com.hrlweibo.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.dao.*;
import com.hrlweibo.pojo.*;
import com.hrlweibo.service.ICommentService;
import com.hrlweibo.service.IFindService;
import com.hrlweibo.util.TxFileUtil;
import com.hrlweibo.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("IFindService")
public class FindServiceImpl implements IFindService {


    @Autowired
    private FindKindMapper mKindMapper;

    @Autowired
    private FindHotSearchMapper mHotSearchMapper;


    @Autowired
    private TopicMapper mTopicMapper;

    @Autowired
    private WeiBoMapper weiBoMapper;

    @Resource(name = "IWeiBoService")
    WeiBoServiceImpl mWeiBoService;


    @Override
    public ServerResponse<FindHomeVo> getFindHomeInfo(int userId) {


        FindHomeVo mHomeVo = new FindHomeVo();
        ArrayList<FindKind> mKindList = mKindMapper.queryAllFindKind();
        mHomeVo.setFindkind(mKindList);
        ArrayList<FindHotSearch> mHotSerachTopList = mHotSearchMapper.queryFindHotSearchTop();
        ArrayList<FindHotSearchVo> mTopVoList = new ArrayList<>();
        for (int i = 0; i < mHotSerachTopList.size(); i++) {
            FindHotSearch mFind = mHotSerachTopList.get(i);
            FindHotSearchVo mFindVo = new FindHotSearchVo();
            mFindVo.setHotattitude(Integer.parseInt(mFind.getHotattitude()));
            mFindVo.setHotid(mFind.getHotid() + "");
            mFindVo.setHotdesc(mFind.getHotdesc() + "");
            mFindVo.setHotdiscuss(mFind.getHotdiscuss() + "");
            mFindVo.setHothost(mFind.getHothost());
            mFindVo.setHotread(mFind.getHotread() + "");
            mFindVo.setHottype(mFind.getHottype() + "");
            mFindVo.setHotid(mFind.getHotid() + "");
            mFindVo.setRecommendcoverimg(mFind.getRecommendcoverimg() + "");
            mTopVoList.add(mFindVo);
        }
        mHomeVo.setFindhottop(mTopVoList);
        ArrayList<FindHotSearch> mHotSerachCenterList = mHotSearchMapper.queryFindHotSearchCenter();
        FindHomeCenterHotVo mfindHomeCenterHotVo = new FindHomeCenterHotVo();
        mfindHomeCenterHotVo.setPage1(getHotCenterData(mHotSerachCenterList, 1));
        mfindHomeCenterHotVo.setPage2(getHotCenterData(mHotSerachCenterList, 2));
        mfindHomeCenterHotVo.setPage3(getHotCenterData(mHotSerachCenterList, 3));
        mfindHomeCenterHotVo.setPage4(getHotCenterData(mHotSerachCenterList, 4));
        mfindHomeCenterHotVo.setPage5(getHotCenterData(mHotSerachCenterList, 5));
        mHomeVo.setFindhotcenter(mfindHomeCenterHotVo);

        //获取热点数据
        List<WeiBo> productList1 = weiBoMapper.selectListByCatId(Long.parseLong(2 + ""));
        ArrayList<WeiBoListVo> productListVoList1 = Lists.newArrayList();
        for (WeiBo productItem : productList1) {
            WeiBoListVo productListVo = mWeiBoService.assembleProductListVo(productItem, userId);
            productListVoList1.add(productListVo);
        }
        mHomeVo.setFindhot(productListVoList1);
        //获取本地数据
        List<WeiBo> productList2 = weiBoMapper.selectListByCatId(Long.parseLong(3 + ""));
        ArrayList<WeiBoListVo> productListVoList2 = Lists.newArrayList();
        for (WeiBo productItem : productList2) {
            WeiBoListVo productListVo = mWeiBoService.assembleProductListVo(productItem, userId);
            productListVoList2.add(productListVo);
        }
        mHomeVo.setFindlocal(productListVoList2);
        //获取超话
        List<WeiBo> productList3 = weiBoMapper.selectListByCatId(Long.parseLong(4 + ""));
        ArrayList<WeiBoListVo> productListVoList3 = Lists.newArrayList();
        for (WeiBo productItem : productList3) {
            WeiBoListVo productListVo = mWeiBoService.assembleProductListVo(productItem, userId);
            productListVoList3.add(productListVo);
        }
        mHomeVo.setFindsupertopic(productListVoList3);
        //获取热门,正在热议,火热参与
        FindTopicVo mTopicVo = new FindTopicVo();
        List<Topic> mTopicList1 = mTopicMapper.selectTopicByTypeId(0);
        List<Topic> mTopicList2 = mTopicMapper.selectTopicByTypeId(6);
        List<Topic> mTopicList3 = mTopicMapper.selectTopicByTypeId(7);
        ArrayList<TopicVo> mTopicVoList1 = changeTopicToTopicVo(mTopicList1);
        ArrayList<TopicVo> mTopicVoList2 = changeTopicToTopicVo(mTopicList2);
        ArrayList<TopicVo> mTopicVoList3 = changeTopicToTopicVo(mTopicList3);
        mTopicVo.setTopic1(mTopicVoList1);
        mTopicVo.setTopic2(mTopicVoList2);
        mTopicVo.setTopic3(mTopicVoList3);


        List<WeiBo> productList4 = weiBoMapper.selectListByCatId(Long.parseLong(22 + ""));
        ArrayList<WeiBoListVo> productListVoList4 = Lists.newArrayList();
        for (WeiBo productItem : productList4) {
            WeiBoListVo productListVo = mWeiBoService.assembleProductListVo(productItem, userId);
            productListVoList4.add(productListVo);
        }
        mTopicVo.setTopiclist(productListVoList4);
        mHomeVo.setFindtopic(mTopicVo);

        return ServerResponse.createBySuccess(mHomeVo);


    }

    @Override
    public ServerResponse<List<FindHotSearchVo>> getHotSearchList() {


        ArrayList<FindHotSearch> mHotSerachTopList = mHotSearchMapper.queryAllFindHotSearch();
        List<FindHotSearchVo> mTopVoList = new ArrayList<>();
        for (int i = 0; i < mHotSerachTopList.size(); i++) {
            FindHotSearch mFind = mHotSerachTopList.get(i);
            FindHotSearchVo mFindVo = new FindHotSearchVo();
            mFindVo.setHotattitude(Integer.parseInt(mFind.getHotattitude()));
            mFindVo.setHotid(mFind.getHotid() + "");
            mFindVo.setHotdesc(mFind.getHotdesc() + "");
            mFindVo.setHotdiscuss(mFind.getHotdiscuss() + "");
            mFindVo.setHothost(mFind.getHothost());
            mFindVo.setHotread(mFind.getHotread() + "");
            mFindVo.setHottype(mFind.getHottype() + "");
            mFindVo.setHotid(mFind.getHotid() + "");
            mFindVo.setRecommendcoverimg(mFind.getRecommendcoverimg() + "");
            mTopVoList.add(mFindVo);
        }

        return ServerResponse.createBySuccess(mTopVoList);
    }


    ArrayList<TopicVo> changeTopicToTopicVo(List<Topic> mTopicList) {

        ArrayList<TopicVo> mTopicNewList = new ArrayList<>();

        for (int i = 0; i < mTopicList.size(); i++) {

            TopicVo mTopicVo = new TopicVo();
            mTopicVo.setTopictype(mTopicList.get(i).getTopictype() + "");
            mTopicVo.setTopicread(mTopicList.get(i).getTopicread() + "");
            mTopicVo.setTopicimg(TxFileUtil.baseTxUrl + mTopicList.get(i).getTopicimg() + "");
            mTopicVo.setTopichost(mTopicList.get(i).getTopichost() + "");
            mTopicVo.setTopicdiscuss(mTopicList.get(i).getTopicdiscuss() + "");
            mTopicVo.setTopicdesc(mTopicList.get(i).getTopicdesc() + "");
            mTopicVo.setTopicattitude(mTopicList.get(i).getTopicattitude() + "");
            mTopicVo.setTopicid(mTopicList.get(i).getTopicid() + "");
            mTopicVo.setTopicintro(mTopicList.get(i).getTopicintro() + "");
            mTopicNewList.add(mTopicVo);
        }


        return mTopicNewList;


    }


    ArrayList<FindHotSearchVo> getHotCenterData(ArrayList<FindHotSearch> mHotSerachCenterList, int mPage) {
        ArrayList<FindHotSearchVo> mCenterVoList = new ArrayList<>();
        mCenterVoList.add(new FindHotSearchVo());
        mCenterVoList.add(new FindHotSearchVo());
        mCenterVoList.add(new FindHotSearchVo());
        for (int i = 0; i < mHotSerachCenterList.size(); i++) {
            if (mHotSerachCenterList.get(i).getRecommendpage() == mPage) {
                FindHotSearch mFind = mHotSerachCenterList.get(i);
                FindHotSearchVo mFindVo = new FindHotSearchVo();
                mFindVo.setHotattitude(Integer.parseInt(mFind.getHotattitude()));
                mFindVo.setHotid(mFind.getHotid() + "");
                mFindVo.setHotdesc(mFind.getHotdesc() + "");
                mFindVo.setHotdiscuss(mFind.getHotdiscuss() + "");
                mFindVo.setHothost(mFind.getHothost() + "");
                mFindVo.setHotread(mFind.getHotread() + "");
                mFindVo.setHottype(mFind.getHottype() + "");
                mFindVo.setHotid(mFind.getHotid() + "");
                mFindVo.setRecommendcoverimg(mFind.getRecommendcoverimg() + "");
                if (mHotSerachCenterList.get(i).getRecommendpagepostion() == 1) {
                    mCenterVoList.set(0, mFindVo);
                } else if (mHotSerachCenterList.get(i).getRecommendpagepostion() == 2) {
                    mCenterVoList.set(1, mFindVo);
                } else if (mHotSerachCenterList.get(i).getRecommendpagepostion() == 3) {
                    mCenterVoList.set(2, mFindVo);
                }
            }
        }


        return mCenterVoList;
    }
}
