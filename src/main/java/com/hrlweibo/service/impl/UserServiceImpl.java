package com.hrlweibo.service.impl;


import cn.hutool.core.util.StrUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.dao.FeedBackMapper;
import com.hrlweibo.dao.UserFollowMapper;
import com.hrlweibo.dao.UserMapper;
import com.hrlweibo.dao.WeiBoMapper;
import com.hrlweibo.pojo.FeedBack;
import com.hrlweibo.pojo.User;
import com.hrlweibo.pojo.UserFollow;
import com.hrlweibo.pojo.WeiBo;
import com.hrlweibo.service.IUserService;
import com.hrlweibo.service.IWeiBoService;
import com.hrlweibo.util.*;
import com.hrlweibo.vo.*;
import com.mysql.jdbc.StringUtils;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.PutObjectResult;
import com.qcloud.cos.region.Region;
  import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service("iUserService")
public class UserServiceImpl implements IUserService {


    @Autowired
    private UserMapper userMapper;


    @Autowired
    private UserFollowMapper userFollowMapper;


    @Autowired
    private FeedBackMapper feedBackMapper;

    @Override
    public ServerResponse<UserVo> login(String username, String password) {
        int resultCount = userMapper.checkUsername(username);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("用户名不存在");
        }

        User user = userMapper.selectLogin(username, password);
        if (user == null) {
            return ServerResponse.createByErrorMessage("密码错误");
        }

        UserVo mUser = new UserVo();
        mUser.setId(user.getId() + "");
        mUser.setNick(user.getNick() + "");
        mUser.setDecs(user.getDecs() + "");
        mUser.setGender(user.getGender() + "");
        mUser.setHeadurl(TxFileUtil.baseTxUrl+user.getHeadurl() + "");
        mUser.setFanCount(user.getFanCount() + "");
        mUser.setFollowCount(user.getFollowCount() + "");
        mUser.setIsmember(user.getIsmember()  );
        mUser.setIsvertify(user.getIsvertify()  );


        return ServerResponse.createBySuccess("登录成功!", mUser);
    }

    @Override
    public ServerResponse<String> register(User user) {
        ServerResponse validResponse = this.checkValid(user.getUsername());
        if (!validResponse.isSuccess()) {
            return validResponse;
        }
        //MD5加密
        int resultCount = userMapper.insert(user);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("注册失败");
        }
        return ServerResponse.createBySuccessMessage("注册成功");
    }

    @Override
    public ServerResponse<User> updateInformation(User user) {
        //username是不能被更新的
        //email也要进行一个校验,校验新的email是不是已经存在,并且存在的email如果相同的话,不能是我们当前的这个用户的.
         /*User updateUser = new User();
        updateUser.setId(user.getId());
        updateUser.setNick(user.getEmail());
        updateUser.setHeadurl(user.getPhone());
        updateUser.setQuestion(user.getQuestion());
        updateUser.setAnswer(user.getAnswer());
         int updateCount = userMapper.updateByPrimaryKeySelective(updateUser);
        if(updateCount > 0){
            return ServerResponse.createBySuccess("更新个人信息成功",updateUser);
        }
        return ServerResponse.createByErrorMessage("更新个人信息失败");*/
        return ServerResponse.createByErrorMessage("更新个人信息失败");
    }

    @Override
    public ServerResponse<OtherUserVo> getInformation(String muserId,String otheruserid) {
        User user = userMapper.selectByPrimaryKey(Integer.parseInt(otheruserid));
        if (user == null) {
            return ServerResponse.createByErrorMessage("找不到当前用户");
        }
        OtherUserVo mUser = new OtherUserVo();
        mUser.setId(user.getId() + "");
        mUser.setNick(user.getNick() + "");
        mUser.setDecs(user.getDecs() + "");
        mUser.setGender(user.getGender() + "");
        mUser.setHeadurl(TxFileUtil.baseTxUrl+user.getHeadurl() + "");
        mUser.setFanCount(user.getFanCount() + "");
        mUser.setFollowCount(user.getFollowCount() + "");
        mUser.setIsmember(user.getIsmember()  );
        mUser.setIsvertify(user.getIsvertify()  );
        mUser.setCreatetime(user.getCreateTime());

         if (muserId!=otheruserid){

            List<Integer>  mRelationInt=  userFollowMapper.getFollowRelation(muserId+"",Integer.parseInt(otheruserid) );
            //https://blog.csdn.net/u013107634/article/details/89488163
            if ( mRelationInt.contains(1) && mRelationInt.contains(2)) {
                //A,B 相互关注
                mUser.setRelation(2);
            }else if( mRelationInt.contains(1)&& (!mRelationInt.contains(2)) ){
                //A 关注了 B
                mUser.setRelation(0);
            } else {
                //A 没关注 B
                mUser.setRelation(1);
            }

        }

        return ServerResponse.createBySuccess("获取个人用户信息成功",mUser);
    }

    @Override
    public ServerResponse feedback(MultipartFile[] multipartFile, FeedBack mFeed) {


        // 构建上传文件的存放路径
        //   String destionation = destination + File.separator + "upload";
        System.out.println("destionation = " + "接收到文件");
         // 如果文件不为空，写入上传路径，进行文件上传
        if (null != multipartFile && multipartFile.length > 0) {
            for (MultipartFile file : multipartFile) {
                // 测试MultipartFile接口的各个方法
                System.out.println("文件类型ContentType=" + file.getContentType());
                System.out.println("文件组件名称Name=" + file.getName());
                System.out.println("文件原名称OriginalFileName=" + file.getOriginalFilename());
                System.out.println("文件大小Size=" + file.getSize() + "byte or " + file.getSize() / 1024 + "KB");
                try {
                    saveFile(file, "C:\\Users\\huangrui\\Desktop\\weibo\\hrlweibo\\src\\main\\webapp\\img");
                } catch (Exception e) {
                    System.out.println("保存失败 = " + e.toString());
                    return ServerResponse.createByErrorMessage("反馈失败");
                }
             }
            return ServerResponse.createBySuccessMessage("反馈成功");
        } else {
            return ServerResponse.createByErrorMessage("反馈失败");
        }


    }


    @Override
    public ServerResponse<String> updateUserHead(MultipartFile mFile, long userId) {
        if (mFile == null) {
            return ServerResponse.createByErrorMessage("文件为空");
        }
        if(mFile.getSize() > (10 * 1024 * 1024)){
            return ServerResponse.createByErrorMessage("上传图片过大");
        }
        String oldFileName = mFile.getOriginalFilename();
        String eName = oldFileName.substring(oldFileName.lastIndexOf("."));
        String newFileName = UUID.randomUUID() + eName;
        System.out.println("文件的名字 oldFileName:" + oldFileName + "eName:" + eName + "newFileName:" + newFileName);
        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH)+1;
        int day = cal.get(Calendar.DATE);
        String  mFileNmae=TxFileUtil. saveFileToLoacle(mFile);
        int updateCount = userMapper.updateUserHeadByPrimaryKey(mFileNmae,userId);
        if(updateCount > 0){
            return ServerResponse.createBySuccess(TxFileUtil.baseTxUrl+mFileNmae);
        }else {
            return ServerResponse.createByErrorMessage("上传失败");
        }
       /* try {
            File localFile = File.createTempFile("temp", null);
            mFile.transferTo(localFile);
            // 指定要上传到 COS 上的路径
            String key = year + "" + month + "" + day + "" + newFileName;
            if (TxFileUtil.upload(key, localFile)) {
                int updateCount = userMapper.updateUserHeadByPrimaryKey(key,userId);
                if(updateCount > 0){
                    return ServerResponse.createBySuccess(TxFileUtil.baseTxUrl+key);
                }else {
                    return ServerResponse.createByErrorMessage("上传失败");
                }
             } else {
                return ServerResponse.createByErrorMessage("上传失败");
            }
        } catch (IOException e) {
            return ServerResponse.createByErrorMessage(e.getMessage() + "");
        }*/


    }

    @Override
    public ServerResponse<String> updatePersonSign(String mSign, long userId) {

        int updateCount = userMapper.updatePersonSignByPrimaryKey(mSign,userId);
        if(updateCount > 0){
            return ServerResponse.createBySuccess("更新成功");
        }else {
            return ServerResponse.createByErrorMessage("更新失败");
        }


    }

    @Override
    public ServerResponse<String> updateNick(String mNick, long userId) {
        int updateCount = userMapper.updatePersonNickByPrimaryKey(mNick,userId);
        if(updateCount > 0){
            return ServerResponse.createBySuccess("更新成功");
        }else {
            return ServerResponse.createByErrorMessage("更新失败");
        }

    }

    @Override
    public ServerResponse<PageInfo> getFanList( long userId,long otheruserId,int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Long> mOtherFollowUserIds=userFollowMapper.selectUserFan(otheruserId);
        ArrayList<UserFollowVo>  mFollowList=new ArrayList<>();
        for (int i=0;i<mOtherFollowUserIds.size();i++){
            User mUser=userMapper.selectByPrimaryKey(mOtherFollowUserIds.get(i).intValue());
            UserFollowVo mFollowUser=new UserFollowVo();
            mFollowUser.setId(mUser.getId() + "");
            mFollowUser.setNick(mUser.getNick() + "");
            mFollowUser.setDecs(mUser.getDecs() + "");
            mFollowUser.setHeadurl(TxFileUtil.baseTxUrl+mUser.getHeadurl() + "");
            List<Integer>  mRelationInt=  userFollowMapper.getFollowRelation(userId+"",mUser.getId());
            //https://blog.csdn.net/u013107634/article/details/89488163
            if ( mRelationInt.contains(1) && mRelationInt.contains(2)) {
                //A,B 相互关注
                mFollowUser.setRelation(2);
            }else if( mRelationInt.contains(1)&& (!mRelationInt.contains(2)) ){
                //A 关注了 B
                mFollowUser.setRelation(0);
            } else {
                //A 没关注 B
                mFollowUser.setRelation(1);
            }
            mFollowList.add(mFollowUser);
        }

        PageInfo pageResult = new PageInfo();
        pageResult.setList(mFollowList);
        System.out.println("总数量：" + pageResult.getTotal());
        System.out.println("当前页查询记录：" + pageResult.getList().size());
        System.out.println("当前页码：" + pageResult.getPageNum());
        System.out.println("每页显示数量：" + pageResult.getPageSize());
        System.out.println("总页：" + pageResult.getPages());
        return ServerResponse.createBySuccess( pageResult);
    }

    @Override
    public ServerResponse<PageInfo> getFollowList( long userId,long otheruserId,int pageNum,int pageSize) {
         PageHelper.startPage(pageNum,pageSize);
         List<Long> mOtherFollowUserIds=userFollowMapper.selectUserFollow(otheruserId);
         ArrayList<UserFollowVo>  mFollowList=new ArrayList<>();
         for (int i=0;i<mOtherFollowUserIds.size();i++){
            User mUser=userMapper.selectByPrimaryKey(mOtherFollowUserIds.get(i).intValue());
            UserFollowVo mFollowUser=new UserFollowVo();
            mFollowUser.setId(mUser.getId() + "");
            mFollowUser.setNick(mUser.getNick() + "");
            mFollowUser.setDecs(mUser.getDecs() + "");
            mFollowUser.setHeadurl(TxFileUtil.baseTxUrl+mUser.getHeadurl() + "");
            System.out.println("用户1是:"+userId+"------"+"用户2是:"+mUser.getId()+"");
            List<Integer>  mRelationInt=  userFollowMapper.getFollowRelation(userId+"",mUser.getId());
            //https://blog.csdn.net/u013107634/article/details/89488163
            if ( mRelationInt.contains(1) && mRelationInt.contains(2)) {
                //A,B 相互关注
                mFollowUser.setRelation(2);
            }else if( mRelationInt.contains(1)&& (!mRelationInt.contains(2)) ){
                //A 关注了 B
                mFollowUser.setRelation(0);
            } else {
                //A 没关注 B
                mFollowUser.setRelation(1);
            }
             mFollowList.add(mFollowUser);
         }
        PageInfo pageResult = new PageInfo(mOtherFollowUserIds);
        pageResult.setList(mFollowList);
        return ServerResponse.createBySuccess( pageResult);
    }



    @Override
    public ServerResponse<PageInfo> getFanFollowRecList(long userId, int pageNum, int pageSize) {
      //  PageHelper.startPage(pageNum,pageSize);
        List<User> mAllUser=userMapper.selectAllUser ();
      //  PageInfo pageResult = new PageInfo(mAllUser);

        ArrayList<UserFollowVo>  mFollowList=new ArrayList<>();
        for (int i=0;i<mAllUser.size();i++){
            User mUser =mAllUser.get(i)  ;
            UserFollowVo mFollowUser=new UserFollowVo();
            mFollowUser.setId(mUser.getId() + "");
            mFollowUser.setNick(mUser.getNick() + "");
            mFollowUser.setDecs(mUser.getDecs() + "");
            mFollowUser.setHeadurl(TxFileUtil.baseTxUrl+mUser.getHeadurl() + "");
            List<Integer>  mRelationInt=  userFollowMapper.getFollowRelation(userId+"",mUser.getId());
            //https://blog.csdn.net/u013107634/article/details/89488163
            if ( mRelationInt.contains(1) && mRelationInt.contains(2)) {
                //A,B 相互关注
                mFollowUser.setRelation(2);
            }else if( mRelationInt.contains(1)&& (!mRelationInt.contains(2)) ){
                //A 关注了 B
                mFollowUser.setRelation(0);
            } else {
                //A 没关注 B
                mFollowUser.setRelation(1);
                if (userId!=mUser.getId() ){
                    //不把自己返回去
                    mFollowList.add(mFollowUser);
                }
             }
         /*   System.out.println("关系是:"+Arrays.asList(mRelationInt));
            if (mRelationInt.size()==0){
                if (userId!=mUser.getId() ){
                    //把A,B 之前无任何关系，并且不把自己返回去
                    mFollowList.add(mFollowUser);
                }

            }*/

        }


        //创建Page类
        Page page = new Page(pageNum, pageSize);
        //为Page类中的total属性赋值
        int total = mFollowList.size();
        page.setTotal(total);
        //计算当前需要显示的数据下标起始值
        int startIndex = (pageNum - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize,total);
        //从链表中截取需要显示的子链表，并加入到Page
        if (startIndex>total){
            page.addAll(new ArrayList());
        }else {
            page.addAll(mFollowList.subList(startIndex,endIndex));
        }
        //以Page创建PageInfo
        PageInfo pageInfo = new PageInfo<>(page);
        return ServerResponse.createBySuccess( pageInfo);
    }

    @Override
    public ServerResponse<FollowVo> followOther(long userId, long otheruserId) {
        UserFollow  mFollow=new UserFollow();
        mFollow.setUid(userId);
        mFollow.setFocusUserId(otheruserId);


        int resultCount = userFollowMapper.selectRelation(userId,otheruserId);
        if (resultCount == 0) {
            int mInsertCount = userFollowMapper.insert(mFollow);
            if (mInsertCount == 0) {
                return ServerResponse.createByErrorMessage("关注失败");
            }else {
                FollowVo mRetunType=new FollowVo();
                List<Integer>  mRelationInt=  userFollowMapper.getFollowRelation(userId+"",otheruserId);
                //https://blog.csdn.net/u013107634/article/details/89488163
                if ( mRelationInt.contains(1) && mRelationInt.contains(2)) {
                    //A,B 相互关注
                    mRetunType.setRelation(2);
                }else if( mRelationInt.contains(1)&& (!mRelationInt.contains(2)) ){
                    //A 关注了 B
                    mRetunType.setRelation(0);
                } else {
                    //A 没关注 B
                    mRetunType.setRelation(1);
                }
                return ServerResponse.createBySuccess( mRetunType);
            }
        }else {
            return ServerResponse.createByErrorMessage("已关注");
        }



     }

    @Override
    public ServerResponse<FollowVo> followCancelOther(long userId, long otheruserId) {
         int resultCount = userFollowMapper.deleteRelation(userId,otheruserId);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("取消关注失败");
        }else {
            FollowVo mRetunType=new FollowVo();
            List<Integer>  mRelationInt=  userFollowMapper.getFollowRelation(userId+"",otheruserId);
            //https://blog.csdn.net/u013107634/article/details/89488163
            if ( mRelationInt.contains(1) && mRelationInt.contains(2)) {
                //A,B 相互关注
                mRetunType.setRelation(2);
            }else if( mRelationInt.contains(1)&& (!mRelationInt.contains(2)) ){
                //A 关注了 B
                mRetunType.setRelation(0);
            } else {
                //A 没关注 B
                mRetunType.setRelation(1);
            }
            return ServerResponse.createBySuccess( mRetunType);
        }
    }


    public ServerResponse<String> checkValid(String str) {
        if (org.apache.commons.lang3.StringUtils.isNotBlank(str)) {
            //开始校验
            int resultCount = userMapper.checkUsername(str);
            if (resultCount > 0) {
                return ServerResponse.createByErrorMessage("用户名已存在");
            }
        } else {
            return ServerResponse.createByErrorMessage("参数错误");
        }
        return ServerResponse.createBySuccessMessage("校验成功");
    }


    /**
     * 文件保存方法
     *
     * @param file
     * @param destination
     * @throws IOException
     * @throws IllegalStateException
     */
    private String saveFile(MultipartFile file, String destination) throws IllegalStateException, IOException {
        // 获取上传的文件名称，并结合存放路径，构建新的文件名称
        String filename = file.getOriginalFilename();
        File filepath = new File(destination, filename);

        // 判断路径是否存在，不存在则新创建一个
        if (!filepath.getParentFile().exists()) {
            filepath.getParentFile().mkdirs();
        }

        // 将上传文件保存到目标文件目录
        file.transferTo(new File(destination + File.separator + filename));

        return filename;
    }

}
