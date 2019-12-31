<?php
require __DIR__ . '/../vendor/autoload.php';
$container = new \Slim\Container();
$app = new \Slim\App($container);
$container = $app->getContainer();
$container['db'] = function ($container) {
    return new PDO('mysql:host=localhost;dbname=blog_db', 'root', 'root');
};

$app->post(
    '/post',
    function ($request, $response) {
        $args = $request->getParsedBody();
        if (!isset($args['username'])) {
            $error[] = 'Incorrect Username';
        }

        if (!isset($args['password'])) {
            $error[] = 'Incorrect Password';
        }

        if (isset($error)) {
            $message = $error;
            $status = false;
            $status_code = 417;
        } else {
            $message = 'Postingan anda berhasil di publish';
            $status = true;
            $status_code = 200;
        }

        $data = [
            'status' => $status,
            'message' => $message
        ];
        return $response
            ->withJson($data, $status_code)
            ->withHeader('Allow', 'GET, POST');
    }
);

$app->get(
    '/post',
    function ($request, $response) {
        $database = $this->get('db');
        $statement = $database->prepare(
            'SELECT user_name, user_email FROM tbl_user'
        );
        $statement->execute();
        $data = $statement->fetchAll(PDO::FETCH_ASSOC);
        return $response->withJson($data)->withHeader('Allow', 'GET, POST');
    }
);

$app->run();
