<?php

// define('BIND_MODULE','Admin');

// define('BUILD_CONTROLLER_LIST','Admin');

// define('BUILD_MODEL_LIST','Home','API','Admin');

define ( 'APP_DEBUG', TRUE ); // 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false

define ( 'APP_PATH', './Apps/' ); // 定义应用目录

define ( 'RUNTIME_PATH', './Runtime/' ); // 定义运行时目录

require './ThinkPHP/ThinkPHP.php'; // 引入ThinkPHP入口文件

?>
