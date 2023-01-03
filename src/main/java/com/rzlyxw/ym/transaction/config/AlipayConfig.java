package com.rzlyxw.ym.transaction.config;

import org.springframework.context.annotation.Configuration;

/**
 * 支付宝沙箱支付配置类
 */

@Configuration
public class AlipayConfig {

    /**
     * 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
     */
    public static String app_id = "2021000121601669";

    /**
     * 商户私钥，您的PKCS8格式RSA2私钥
     */
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC+n5GJafhoMfA0wU3GJTa5jPWMMW3dS8wUB8ayY0hF28rc0jKZxV8mIZLezweYeEmtt5vKWf1VVzsi2eIvJkjKii86BL0ROZktKTp8AdctmzAyn9A0GOdcUokezcTlM/llK9sW5w+wGwYkdLIBz+ShI7NMWI9cm0zF//v77yMvHbDBnvm3stHUmcPSAQ/jTHOEt5mdGkdQFQI0x1HMcGxdPYehondoJLDA2PSTEz/a4umUTcd3uC1Pm+jdxA1z2Svl0qXbctgyp8lnQ6RHY393gE+Rmbs9+qIB3T0fDSTrIu4/qPuxfvKrxRP+Tyxk7hD0KhAeGnn+1RW6MSQNSPALAgMBAAECggEBAKyf6ncrfSY2mymbPChFSRKtgSxNEvYFjzFQfXLMkAWbblGdFO/GGk14t/2INJOx0t87WBzec5lWHpqH/9m87MxmaTA8XE99/qY0IN9t90Q4tmQR78VODC7CG6TGqRj7gU1KcuSBqOZNArn+57jWYHBA2T05MdKmXNct4y8aN52Qz5sKxt4NwK17vcww9UwY+XyuIGaGEVXvzIN1Qy+FIv9Y3JO/uNj6o7VXb1o95D5OQXYcCmQWKqSn40/makxgvajVTo7DOb+9EeMosQ2lmjgHpwVpr18VkIZlcq8QNOLOhI/v/ziUG358hj5R4g3OPqv9Cm7weemyagQ4yNLAFckCgYEA7HEIKm3hREwiJFo+3a6L+XsFPmtHnBYDHaegK7ErrK1HQsKwl24fORqObZwiTC8s1rDyQsMlatwyvJizrWvkZd/y734NUgsNVYUp8nTVE8M6GuHKmMxWwkK7wTqEa10Z/pSW6FsR1NY5yS1W89XQiGFWQ7jjceM0dRHuBXjBZ8cCgYEAzmRGLJStFoToJ+CQX5rl3h266NQvJD7XCs1WmlRcN1PynI1rQw7sHTn3ZSKu29nWWSCGTS+o9TVKUIRKvWNrMxqPuMNIGGlfHkOiTjf/ZTSUMoi3qV2pEbFCQMZBBs3+RqokC3VvMOWp2IBeG5Ufa7TxnH12G6+d5xbSUD4/XZ0CgYApfTwdleJthZ6IGn3lkHdnc7rb1R9fuE0bqwpkIFa1mkJi6J7sM5qu/oX3neo2zCBmG+6m4G90bOdKSNFeoQwXBFEwzUGxH9dbJl7R+MZbDWroxK40Wcbvl54yrf4GiPPCxHgmlbRvUJgbQSV87AwHomzsvUjL9z6BPIAz3ZiyiQKBgFsZ59/FwKEwCUmQ1ildNhnVBau//Q8CrekWuiNlGU9SvsRbp/zxmUdNTuZVaNmiTfsJYD6xyuJxo1vnCRaPy8HC962WhTxBRrsVH49nKFSD4OZtcqRPs1Eb7SKqYAmg45xNfZuROoNa3J20C9Yg/L2OIRfySS/vVMOsTykcUNwBAoGAPWWR5UBfacQ2JpTp3pxs6MjPNhHJTHT8qcXvEOJw5WFPoY+Fa47HmOCtb1ABqiNGToptWCjgaH5bykbyFdIJMKDd92wnZ0XIzCzy5Mz1OfqCp4G7A6gQmbMAIJpiw7sJVuJoWGKoJZdDIHtgfiTlFF//xk27tOlzoipzkt7w7E8=";

    /**
     * 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥
     */
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvp+RiWn4aDHwNMFNxiU2uYz1jDFt3UvMFAfGsmNIRdvK3NIymcVfJiGS3s8HmHhJrbebyln9VVc7ItniLyZIyoovOgS9ETmZLSk6fAHXLZswMp/QNBjnXFKJHs3E5TP5ZSvbFucPsBsGJHSyAc/koSOzTFiPXJtMxf/7++8jLx2wwZ75t7LR1JnD0gEP40xzhLeZnRpHUBUCNMdRzHBsXT2HoaJ3aCSwwNj0kxM/2uLplE3Hd7gtT5vo3cQNc9kr5dKl23LYMqfJZ0OkR2N/d4BPkZm7PfqiAd09Hw0k6yLuP6j7sX7yq8UT/k8sZO4Q9CoQHhp5/tUVujEkDUjwCwIDAQAB";

    /**
     * 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
     */
    //public static String notify_url = "http://z2o7626444.qicp.vip/checkout/returnUrl";

    /**
     * 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
     */
    public static String return_url = "http://ppji7j.natappfree.cc/checkout/returnUrl";

    /**
     * 签名方式
     */
    public static String sign_type = "RSA2";

    /**
     * 字符编码格式
     */
    public static String charset = "utf-8";

    /**
     * 支付宝网关
     */
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
}

