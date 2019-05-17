package com.lee.film.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016092900619981";

    // 商户私钥，您的PKCS8格式RSA2私钥ok
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDRAczIITNezOslHJ9UvUwL5ydoD5nXW1e4wVO3qzGGLV3yay8LhI9paDAK9eLPpqy32n4mUlf9trKy2lE3Ib1xvZOzj0jLIjL7/TjbEP0rGpOJ/PkcIV+vDFmaoMAg0/vGmhdCdoyBHcINoGaAbQQdIsDdnV0RZ4z09O0sQn9UGjhV0R+K8OnrSe56OAMxx0euwWjC8MAEZ+ss7vq7cDl8N2Mf42FD7vDs4HSIVZu7D81NUrJJlqDms5ri00oOLZNti/cGAFEYh29JU/ujcXrl4vT9MZlV2Y4LTRtasGc9sQHmyEBp8i/gZUZjP7ZduZY5M716rTXv815kzG3xBymDAgMBAAECggEBAIUVQlHEYjNhA/Fzkjig+EU0ALGQDYNFVEv+PdJbnYM0a/eqLCCHXdHeV4kDHFLgbGX9KAo6sHCK3qpnvQL/5uL/tYbGG7HMqu4tRQCohqvllkBs5in1TjnmAUAmT3AXyt+gymK1na2xRxjqI5pu0AnFUU1LoDEu4GAxfLuL9AuWJnauUr0jGFDpixU6wTFvuQSQuZvukczTEjslB7UQFEiKggi5FtSfXYEnraB55rkfmMnxaOoHfFQTy06/DRIsckEEvTgOELI65HbWNchuxGlx1qH7LgR22DKlTlEYYJYGkhSPBfXx7VYcQ65c8iK9/Ll4vdKfqI9SN44J6nndwyECgYEA/2h5HBmJ2RoXjtEBrHVj0//yUc66dnYIoW5kec8r91lawRwLG7jOixoFZddXWZnMoeydc3gJRikfuUdZJ9N34fT75BV0R9he9xsfn1w93jQhvrhoPJgjvxbvtpDYzkBpgSiTr67luY2GXWKYlN+FBtlMpwYjpXhnFcxWQJdMZssCgYEA0X3MXgTFUnuR4No92FX7nRPvO/qUKWoGaiiaEXSOTtGiRrxbT6FxfC//Uh9uuV6VJ15WurSko7WEFQZdjzwpFXgtJQ59FmOn5Qkr5zASDNwFZ5FsDco7XlZZ1GZ37FUlMnhJrX8Qg/eNax17YzWkxDv7Nro+IypkvxEcAaxGuSkCgYEA/on9+RUynl00kS6XPmqXnNZ9hy5CAoFLxKaiGAtyQ8aXfdEW+P/LSDIcowxjj3aJy+5mVIeSpouhhCMpJVnJJjXjO8Jt6pQmwJoVf9qMBgFqiAp8R7dQGMchC497osHq47+uv+3MIIp9GGCEtAm3J8Y0cFjb+bLu+Xh1lVWz3NUCgYAScnxrjwn9MGpxHWayxSeJ9nZrlq4zU2XLNVYT0WqyoB0lE3MK+RFwOR3HkoMCicSimdkTSdLxo4tE+rGEamzHujRnffYf4ZioP32BNydvwHQtYY3dTQCbVwlD/d3zjq/e2N7MC1Nd+4+VbhwuaUvgB9QgRpgwKoyCkrQfpZb4uQKBgQD4JUTiPa1QNEmFuuOrexCLfX3zRoACZANdHL3fG2ERPJmi3Bb/gJfKh10OMiO4UQf00eoxisUMr9XAErtHbug4arctfnJKTpgH4UtIxaup1wj1yqPD0HxKoFhDEKv7yPh1Tk/M0Mw/lMPfYAIe4WQonmQ/h5KyQI+yhvnvPar0Hw==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqbh8c94VeBUzYD9jVDU+Fp9ivUunYpWV4dGqowQUShCW8l3ZpRTIFj/NFLaooGODVQZIDklkFImVqDVRVaDnpzl8q3ukoTdW1yTB2VEER6NhvujOTbmF2PFeqpdNu7qYP/KYQogfXMahFwgC3Rqd3ZwuWHqgLZ9KaQtlINnTWtx3bkoTfK54k0UBYtGsar8L9FYm0o9ptuU8JVkGtvPp4z7E6eKNKZ3IZPAWZg7zVPzY+lq43HmYSa2JviDLzqq2Er+YhWzdI3hm1SlFwjT7A9qmHj5rJUZ1taAHp0rWheb9nXTAm74v7q76pf5N7BreFlVrRAcLq/M+sRY0yJF2oQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/alipay_trade_page_pay_JAVA_UTF_8_Web_exploded/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//    public static String return_url = "http://localhost:8080/alipay_trade_page_pay_JAVA_UTF_8_Web_exploded/return_url.jsp";

    public static String return_url = "http://localhost:8080/pay/success.do";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

