<?php
//1. DB接続
$dbn = 'mysql:dbname=gsf_d03_db30;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = 'root';

try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    exit('dbError:'.$e->getMessage());
}


//2. データ表示SQL作成
$sql = 'SELECT * FROM 07_30_yonedatomoyo';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//3. データ表示
$view='';
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
} else {
    //Selectデータの数だけ自動でループしてくれる
    //http://php.net/manual/ja/pdostatement.fetch.php
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {

        $view .='<div class="line_box">';
            $view .= '<img src="../img/line.png">';//ライン
        $view .='</div>';
        
        $view .='<br>';

        $view .= '<P>'."公園の名前：".$result['name1'].'</P>';//公園名をhtmlのviewで表示
        $view .= '<P>'."住所：".$result['address1'].'</P>';//住所をhtmlのviewで表示
        $view .= '<P>'."URL：".$result['url1'].'</P>';//URLをhtmlのviewで表示
        
        $view .='<div class="icon">';

            if($result['toilet']=="1"){//もしtoiletのvalueが1だったら
                $view .= '<img src="../img/b1.jpg" width="30" height="30">';//htmlのviewにあるときの画像を表示する
            }elseif($result['toilet']=="2"){//valueが2だったら
                $view .= '<img src="../img/g1.jpg" width="30" height="30">';//ないときの画像
            }

            if($result['slide']=="1"){//valueが1だったら
                $view .= '<img src="../img/b2.jpg" width="30" height="30">';//あるときの画像
            }elseif($result['slide']=="2"){//valueが2だったら
                $view .= '<img src="../img/g2.jpg" width="30" height="30">';//ないときの画像
            }

            if($result['sandbox']=="1"){//valueが1だったら
                $view .= '<img src="../img/b3.jpg" width="30" height="30">';//あるときの画像
            }elseif($result['sandbox']=="2"){//valueが2だったら
                $view .= '<img src="../img/g3.jpg" width="30" height="30">';//ないときの画像
            }

            if($result['swing']=="1"){//valueが1だったら
                $view .= '<img src="../img/b4.jpg" width="30" height="30">';//あるときの画像
            }elseif($result['swing']=="2"){//valueが2だったら
                $view .= '<img src="../img/g4.jpg" width="30" height="30">';//ないときの画像
            }

            //ボールが使用可能かどうか
            if($result['ball']=="1"){//valueが1だったら
                $view .= '<img src="../img/b5.jpg" width="30" height="30">';//使用可能
            }elseif($result['ball']=="2"){//valueが2だったら
                $view .= '<img src="../img/g5.jpg" width="30" height="30">';//使用不可
            }

            //自動販売機の有無
            if($result['drink']=="1"){//valueが1だったら
                $view .= '<img src="../img/b6.jpg" width="30" height="30">';//あるときの画像
            }elseif($result['drink']=="2"){//valueが2だったら
                $view .= '<img src="../img/g6.jpg" width="30" height="30">';//ないときの画像
            }

        $view .='</div>';

        $view .='<br>';

        $view .= '<P>'."トイレ情報：".$result['toilet_comment'].'</P>';//トイレのコメント
        $view .= '<P>'."コメント：".$result['comment'].'</P>';//全体コメント
        $view .= '<P>'."入力日：".$result['date1'].'</P>';//入力日時

        $view .='<iframe id="map" src="http://maps.google.co.jp/maps?q='.$result['name1'].'&output=embed&t=m&z=15&hl=ja" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" width="300" height="300"></iframe>';//名前で検索したグーグルマップが表示される

        // $view .= '<img src="../img/line.png">';//ライン
        
    }
}
?>



<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>公園共有APP</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css">
    <style>
        div {
            padding: 10px;
            font-size: 12px;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">公園にいこう</a>
                <div class="navbar-nav">
                        <a class="nav-link" href="index.php">登録</a>
                </div>
        </nav>
    </header>



    <div>
        <ul class="list-group">
            <?=$view?>
        </ul>
    </div>


</body>

</html>



<!-- 地図の表示参考URL
http://www.dataplan.jp/blog/google/3449 -->


<!-- つけたいメモ
星の評価CSS
https://cortyuming.hateblo.jp/entry/2017/03/22/131457 -->