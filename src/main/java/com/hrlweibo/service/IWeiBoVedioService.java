package com.hrlweibo.service;

import com.github.pagehelper.PageInfo;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.pojo.VedioCategory;
import com.hrlweibo.vo.WeiBoListVo;

import java.util.List;

public interface IWeiBoVedioService {



    ServerResponse<List<VedioCategory>> getVdieoCategory();

    ServerResponse<PageInfo> getVideoRecommendList( int pageNum, int pageSize);

    ServerResponse  getVideoDetailRecommendList( int videoid);
    ServerResponse<PageInfo> getVideoHotList( int pageNum, int pageSize);

    ServerResponse<List<String>> getVideoHotBannerAdList(  );

    ServerResponse<PageInfo> smallVideolist( int pageNum, int pageSize);


}
