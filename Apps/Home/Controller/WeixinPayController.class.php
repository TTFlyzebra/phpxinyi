<?php

namespace Home\Controller;

use Think\Controller;

class WeixinPayController extends Controller {
	public function index() {
		header('Content-Type: text/xml');
		$postData = "<xml>
				<appid>wxb4ba3c02aa476ea1</appid>
				<attach>支付测试</attach>
				<body>APP支付测试</body>
				<mch_id>1305176001</mch_id>
				<nonce_str>1add1a30ac87aa2db72f57a2375d8fec</nonce_str>
				<notify_url>http://wxpay.weixin.qq.com/pub_v2/pay/notify.v2.php</notify_url>
				<out_trade_no>1415659990</out_trade_no>
				<spbill_create_ip>14.23.150.211</spbill_create_ip>
				<total_fee>1</total_fee>
				<trade_type>APP</trade_type>
				<sign>ce187ed67e05c2d8879bf66bbfdfc8b9</sign>
				</xml> ";
		$data = vpost ("https://api.mch.weixin.qq.com/pay/unifiedorder", $postData);
// 		$data = vpost ("https://flyzebra.wicp.net/xinyi/API/Product", "");
		echo $data;
	}
}