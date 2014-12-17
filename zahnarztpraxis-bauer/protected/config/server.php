<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Sanitätshaus Fürst',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		/*
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'Enter Your Password Here',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),
		*/
	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
		),
		// uncomment the following to enable URLs in path-format
		/*
		'urlManager'=>array(
			'urlFormat'=>'path',
			'rules'=>array(
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),
		*/
		//'db'=>array(
		//	'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		//),
		// uncomment the following to use a MySQL database
		
		'db'=>array(
			'connectionString' => 'mysql:host=localhost;dbname=fuerst_db1',
			'emulatePrepare' => true,
			'username' => 'fuerst1',
			'password' => 'llSkRje19$;',
			'charset' => 'utf8',
		),
		
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
		'urlManager' => array(
            'showScriptName' => false,
            'urlFormat' => 'path',
            'caseSensitive' => false,
            'rules' => array(
				### GII URLs (no GII for Server :(
//				'gii'=>'gii',
//				'gii/<controller:\w+>'=>'gii/<controller>',
//				'gii/<controller:\w+>/<action:\w+>'=>'gii/<controller>/<action>', 
				### SEITEN URLs
				'site' => 'site/index',
                'site/<action:\w+>' => 'site/<action>',
                'site/<action:\w+>/<id:\d+>' => 'site/<action>',
				### ADMIN URLs
                'admin' => 'admin/index',
                'admin/<action:\w+>' => 'admin/<action>',
                'admin/<action:\w+>/<id:\d+>' => 'admin/<action>',
                'admin/<action:\w+>/<id:\d+>/<id2:\d+>' => 'admin/<action>',
                'admin/<action:\w+>/<id:\d+>/<id2:\d+>/<id3:\d+>' => 'admin/<action>',
				### MAGIC URLs
                '\w+' => 'site/dynamic',
            ),
        ),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params' => array(
        // offline zugangsdaten
        'admin_user' => "fuerst",
        'admin_pw' => "ddG3!s8G",
    ),
);