package com.hrlweibo.service;

import com.github.pagehelper.PageInfo;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.vo.FindHomeVo;
import com.hrlweibo.vo.FindHotSearchVo;

import java.util.List;


public interface IMessageService {


    ServerResponse<PageInfo>  getMessageZan(int pageNum, int pageSize);
    ServerResponse<PageInfo>  getMessageComment(int pageNum, int pageSize);
}
