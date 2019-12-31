<?php
use \Slim\App;
use \Slim\Container;

require __DIR__ . '/../vendor/autoload.php';
$container = new Container();
$app = new App($container);
$container = $app->getContainer();
$container['db'] = function ($container) {
    return new PDO('mysql:host=localhost;dbname=blog_db', 'root', 'root');
};

$app->post(
    '/sendNudes',
    function ($request, $response) {
        $args = $request->getParsedBody();
        if(isset($args['username']) && isset($args['password'])) {
            if(is_string($args['username']) && is_string($args['password'])) {
                $database = $this->get('db');
                $statement = $database
                    ->prepare(
                        'SELECT user_name, user_password from tbl_user'
                    );
                $statement->execute();
                $data = $statement->fetchAll(PDO::FETCH_ASSOC);
                foreach($data as $key => $user) {
                    if(md5($args['password']) == $user['user_password']
                        && $args['username'] == $user['user_name']) {
                        // the query supposed to be 'insert entry to database'
                        //$statement = $database
                        //    ->prepare('SELECT post_title FROM tbl_post');
                        //$statement->execute();
                        //$message = $statement->fetchAll(PDO::FETCH_ASSOC);
                        $message = 'You logged as ' . $user['user_name'];
                        $status_code = 200;
                        $error = false;
                        break; // stop comparing a string you little slut
                    }
                    else {
                        $message = 'Could\'t find username and password';
                        $status_code = 417;
                        $error = true;
                    }
                }
            }
            else {
                $message = 'Sorry we only accept string';
                $status_code = 417;
                $error = true;
            }
        }
        else {
            $message = 'Sorry username and password is empty';
            $status_code = 417;
            $error = true;
        }

        $data = [
            'error' => $error,
            'message' => $message
        ];

        return $response
            ->withJson($data, $status_code)
            ->withHeader('Allow', 'GET, POST');
    }
);

$app->run();
