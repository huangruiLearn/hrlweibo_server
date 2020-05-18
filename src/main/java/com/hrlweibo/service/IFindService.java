package com.hrlweibo.service;

import com.github.pagehelper.PageInfo;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.pojo.FindHotSearch;
import com.hrlweibo.pojo.FindKind;
import com.hrlweibo.vo.FindHomeVo;
import com.hrlweibo.vo.FindHotSearchVo;
import com.hrlweibo.vo.WeiBoListVo;

import java.util.ArrayList;
import java.util.List;


public interface IFindService {



    ServerResponse<FindHomeVo> getFindHomeInfo(int userId);

    ServerResponse<List<FindHotSearchVo>> getHotSearchList( );

}
