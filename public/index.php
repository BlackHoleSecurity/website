<?php
require __DIR__ . '/../vendor/autoload.php';
$app = new Slim\App(
    [
        'settings' => [
            'displayErrorDetails' => true
        ]
    ]
);

$app->get(
    '/post/{username}/{password}/{title}/{slug}/{content}/{meta}',
    function ($request, $response, $args) {
        if(true) {
            $data = [
                'status' => true,
                'message' => 'Postingan anda telah di publish'
            ];
            $status_code = 200;
        }
        else {
            $error[]='Incorrect Password';
            $error[]='Incorrect Username';
            $error[]='Can\'t Parse content';
            $error[]='Can\'t Parse slug';
            $error[]='Can\'t Parse title';
            $error[]='Can\'t Parse meta';

            $data = [
                'status' => false,
                'message' => $error
            ];
            $status_code = 417;
        }

        return $response->withJson($data, $status_code);
    }
);

$app->run();
