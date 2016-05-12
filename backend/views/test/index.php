<?php

use yii\helpers\Html;
use yii\grid\GridView;
use mdm\admin\components\Helper; 

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Tests');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="test-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?php 
        //没有创建权限不显示按钮 
        if(Helper::checkRoute('create')) { 
              Html::a(Yii::t('app', 'Create Test'), ['create'], ['class' => 'btn btn-success']);
        }; ?> 
    </p>
    
    
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            [
                'class' => 'yii\grid\SerialColumn',
                'template' => Helper::filterActionColumn('{view}{update}{delete}'),
            ],

            'id',
            'name',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
