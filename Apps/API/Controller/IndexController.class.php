<?php

namespace API\Controller;

use Think\Controller;

class IndexController extends Controller {
	public function index() {
		header ( 'Cache-Control:max-age=600' );
		header ( 'Content-Type:text/html;charset=utf-8 ', true );
		header ( 'Last-Modified: ' . gmdate ( 'D, d M Y H:i:s', time () ) . ' GMT', true );
		echo 'Content-Type:text/html;charset=utf-8 <br>';
		echo 'Cache-Control, max-age=600<br>';
		echo 'Last-Modified: ' . gmdate ( 'D, d M Y H:i:s', time () ) . ' GMT<br>';
		echo __ACTION__ . "<hr>";
	}
}