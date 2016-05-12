<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'language'=>'zh-CN',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
//         'i18n' => [
//             'translations' => [
//                 'frontend*' => [
//                     'class' => 'yii\i18n\PhpMessageSource',
//                     'basePath' => '@common/messages',
//                 ],
//                 'backend*' => [
//                     'class' => 'yii\i18n\PhpMessageSource',
//                     'basePath' => '@common/messages',
//                 ],
//                 'common*' => [
//                     'class' => 'yii\i18n\PhpMessageSource',
//                     'basePath' => '@common/messages',
//                 ],
//             ],
//         ],
    ],
    'timeZone'=>'Asia/Chongqing',//设置时区
];
