<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>公園共有APP</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css">
    <style>
        div{
            padding: 10px;
            font-size:12px;
            }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">公園にいこう</a>

                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="select.php">一覧</a>
                    </li>
                </ul>


        </nav>
    </header>

    <form action="insert.php" method="post">
    <!-- postでおくる -->

    

        <div class="form-group">
            <label for="name">名前</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="address">住所</label>
            <input type="text" class="form-control" id="address" name="address">
        </div>
        <div class="form-group">
            <label for="url">URL</label>
            <input type="text" class="form-control" id="url" name="url">
        </div>
        <div class="form-group">
            <label for="toilet">トイレ</label><br>
                <input class="radio_box" type="radio" class="form-control" id="toilet" name="toilet" value="1">ある
                <input class="radio_box" type="radio" class="form-control" id="toilet" name="toilet" value="2">ない
        </div>
        <div class="form-group">
            <label for="toilet_comment">トイレ情報</label><br>
            <textarea class="form-control" id="toilet_comment" rows="1" name="toilet_comment"></textarea>
        </div>
        <div class="form-group">
            <label for="slide">すべりだい</label><br>
            <input class="radio_box" type="radio" class="form-control" id="slide" name="slide" value="1">ある
            <input class="radio_box" type="radio" class="form-control" id="slide" name="slide" value="2">ない
        </div>
        <div class="form-group">
            <label for="sandbox">砂場</label><br>
            <input class="radio_box" type="radio" class="form-control" id="sandbox" name="sandbox" value="1">ある
            <input class="radio_box" type="radio" class="form-control" id="sandbox" name="sandbox" value="2">ない
        </div>
        <div class="form-group">
            <label for="swing">ブランコ</label><br>
            <input class="radio_box" type="radio" class="form-control" id="swing" name="swing" value="1">ある
            <input class="radio_box" type="radio" class="form-control" id="swing" name="swing" value="2">ない
        </div>
        <div class="form-group">
            <label for="ball">ボール遊び</label><br>
            <input class="radio_box" type="radio" class="form-control" id="ball" name="ball" value="1">OK
            <input class="radio_box" type="radio" class="form-control" id="ball" name="ball" value="2">NG
        </div>
        <div class="form-group">
            <label for="drink">自動販売機</label><br>
            <input class="radio_box" type="radio" class="form-control" id="drink" name="drink" value="1">ある
            <input class="radio_box" type="radio" class="form-control" id="drink" name="drink" value="2">ない
        </div>
        <div class="form-group">
            <label for="date">更新日</label>
            <input type="date" class="form-control" id="date" name="date">
        </div>
        <div class="form-group">
            <label for="comment">コメント</label>
            <textarea class="form-control" id="comment" rows="3" name="comment"></textarea>
        </div>


        <div class="form-group">
            <button type="submit" class="btn btn-primary">送信</button>
        </div>
    </form>




</body>

</html>