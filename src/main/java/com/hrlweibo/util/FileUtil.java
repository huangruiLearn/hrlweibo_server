package com.hrlweibo.util;

import com.hrlweibo.common.ServerResponse;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.model.GetObjectRequest;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.region.Region;
import com.qcloud.cos.transfer.Download;
import com.qcloud.cos.transfer.TransferManager;
import com.qcloud.cos.transfer.Upload;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


//https://cloud.tencent.com/document/product/436/6273
//https://cloud.tencent.com/document/product/436/10199
public class FileUtil {


    static String bucketName = ""; //桶的名称
    static String region = "";//区域北京则  beijing
    static COSCredentials cred = null;
    static TransferManager transferManager = null;
    static COSClient cosClient = null;
    static long appId = 0;
    static String secretId = "";
    static String secretKey = "";

    //   public static String baseTxUrl = "https://" + bucketName + "-" + appId + ".cos.ap-beijing.myqcloud.com/";
    // public static String baseTxUrl = "http://192.168.56.1:8080/hrlweibo/file/";
    //    public static String baseTxUrl = "http://192.168.78.2:8080/hrlweibo/file/";

    public static String baseTxUrl = "http://212.64.95.5:8080/hrlweibo/file/";
    public static String uploadTxUrl = "http://212.64.95.5:8080/hrlweibo/img";

    static {
        // 1 初始化用户身份信息(secretId, secretKey)
        //SecretId 是用于标识 API 调用者的身份
    /*    String SecretId = secretId;
        //SecretKey是用于加密签名字符串和服务器端验证签名字符串的密钥
        String SecretKey = secretKey;
        cred = new BasicCOSCredentials(SecretId, SecretKey);
         // 2 设置bucket的区域,
        ClientConfig clientConfig = new ClientConfig(new Region(region));
        // 3 生成cos客户端
        cosClient = new COSClient(cred, clientConfig);*/
      /*  // 指定要上传到 COS 上的路径
        ExecutorService threadPool = Executors.newFixedThreadPool(32);
        // 传入一个 threadpool, 若不传入线程池, 默认 TransferManager 中会生成一个单线程的线程池。
        transferManager = new TransferManager(cosClient, threadPool);*/
    }


    static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm ss");

    /**
     * 上传
     */
    public static boolean upload(final String key, final File mFile) {
        try {

            cred = new BasicCOSCredentials(secretId, secretKey);
            // 2 设置bucket的区域,
            ClientConfig clientConfig = new ClientConfig(new Region(region));
            // 3 生成cos客户端
            cosClient = new COSClient(cred, clientConfig);
            ExecutorService threadPool = Executors.newFixedThreadPool(32);
            // 传入一个 threadpool, 若不传入线程池, 默认 TransferManager 中会生成一个单线程的线程池。
            transferManager = new TransferManager(cosClient, threadPool);
            String bucket = bucketName + "-" + appId;
            //本地文件路径
            PutObjectRequest putObjectRequest = new PutObjectRequest(bucket, key, mFile);
            // 本地文件上传
            Upload upload = transferManager.upload(putObjectRequest);
            // 异步（如果想等待传输结束，则调用 waitForUploadResult）
            //UploadResult uploadResult = upload.waitForUploadResult();
            //同步的等待上传结束waitForCompletion
            upload.waitForCompletion();
            String etag = putObjectRequest.getKey();
            String url = baseTxUrl + etag;
            System.out.println("上传成功:url:" + url);
            return true;
        } catch (Throwable tb) {
            System.out.println("上传失败:" + tb.toString());
            tb.printStackTrace();
            return false;
        } finally {
            // 关闭 TransferManger
            transferManager.shutdownNow();
            cosClient.shutdown();

        }


    }


    public static ArrayList<String> saveFileToLoacle(MultipartFile[] multipartFile) {
        ArrayList<String> mListPics = new ArrayList<>();
        // 如果文件不为空，写入上传路径，进行文件上传
        if (null != multipartFile && multipartFile.length > 0) {
            for (MultipartFile file : multipartFile) {
                // 测试MultipartFile接口的各个方法
                System.out.println("文件类型ContentType=" + file.getContentType());
                System.out.println("文件组件名称Name=" + file.getName());
                System.out.println("文件原名称OriginalFileName=" + file.getOriginalFilename());
                System.out.println("文件大小Size=" + file.getSize() + "byte or " + file.getSize() / 1024 + "KB");
                try {
                    // String mFileNmae=saveFile(file, "C:\\Users\\huangrui\\Desktop\\weibo\\hrlweibo\\src\\main\\webapp\\img");
                    String mFileNmae = saveFile(file, "/usr/apache-tomcat-8.5.40-windows-x64/apache-tomcat-8.5.40/webapps/hrlweibo/img");
                    mListPics.add(mFileNmae);
                    return mListPics;
                } catch (Exception e) {
                    return mListPics;
                }
            }
            return mListPics;
        } else {
            return mListPics;
        }
    }

    public static String saveFileToLoacle(MultipartFile multipartFile) {
        String mFileNmae = "";
        // 如果文件不为空，写入上传路径，进行文件上传
        try {
            mFileNmae = saveHeadFile(multipartFile, "/usr/apache-tomcat-8.5.40-windows-x64/apache-tomcat-8.5.40/webapps/hrlweibo/file");
            return mFileNmae;
        } catch (Exception e) {
            return mFileNmae;
        }


    }


    /**
     * 文件保存方法
     *
     * @param file
     * @param destination
     * @throws IOException
     * @throws IllegalStateException
     */
    private static String saveHeadFile(MultipartFile file, String destination) throws IllegalStateException, IOException {
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

    /**
     * 文件保存方法
     *
     * @param file
     * @param destination
     * @throws IOException
     * @throws IllegalStateException
     */
    private static String saveFile(MultipartFile file, String destination) throws IllegalStateException, IOException {
        // 获取上传的文件名称，并结合存放路径，构建新的文件名称
        String filename = file.getOriginalFilename();
        File filepath = new File(destination, filename);

        // 判断路径是否存在，不存在则新创建一个
        if (!filepath.getParentFile().exists()) {
            filepath.getParentFile().mkdirs();
        }

        // 将上传文件保存到目标文件目录
        file.transferTo(new File(destination + File.separator + filename));

        return uploadTxUrl + File.separator + filename;
    }


}
