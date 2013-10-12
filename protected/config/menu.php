<?php

return array(


    array(
        'module' => false,
        'text' => 'Felhasználók',
        'iconCls' => 'icon-group',
        'menu' => array(
            array(
                'module' => true,
                'text' => 'Felhasználók',
                'iconCls' => 'icon-user',
                'url' => 'user/user/index',
            ),
            array(
                'module' => true,
                'text' => 'Felhasználó csoportok',
                'iconCls' => 'icon-group',
                'url' => 'user/userGroup/index',
            ),
            array(
                'module' => true,
                'text' => 'Jogosultságok',
                'iconCls' => 'icon-shield',
                'url' => 'user/permission/index',
            ),
        ),
    ),

    array(
        'module' => false,
        'text' => 'Törzsadatok',
        'iconCls' => 'icon-history',
        'menu' => array(
            array(
                'module' => false,
                'text' => 'Helyiségek',
                'iconCls' => 'icon-history',
                /*'menu' => array(
                    array(
                        'module' => true,
                        'text' => 'Apartmanok',
                        'iconCls' => 'icon-history',
                        'url' => 'codetable/codetable/index?model_name=Apart',
                        'params' => array('model_name' => 'Apart', 'model_label' => 'Apartman'),
                    ),

                ),*/
            ),

        )
    ),



);
