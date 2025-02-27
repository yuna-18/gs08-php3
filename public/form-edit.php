<?php

$id = $_GET['id'];
require_once('../includes/_funcs.php');
$pdo = connectDb();
$stmt = $pdo->prepare("SELECT * FROM userdata_table WHERE id = :id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();
$result = '';

if ($status === false) {
  $error = $stmt->errorInfo();
  exit('SQLError:' . print_r($error, true));
} else {
  $result = $stmt->fetch();
  $selectedMusicCategories = explode(', ', $result['music_category']);
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ユーザー情報変更</title>
  <link rel="stylesheet" href="./assets/css/reset.css">
  <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body id="form">
  <main class="form__wrapper">
    <h1>ユーザー情報変更</h1>
    <form action="./form-update.php" method="post" class="form__container">
      <div class="form__contents">
        <div class="form__outer">
          <label for="name">氏名</label>
          <input type="text" name="name" id="name" value="<?= $result['name'] ?>">
        </div>
        <div class="form__outer">
          <label for="furigana">フリガナ</label>
          <input type="text" name="furigana" id="furigana" value="<?= $result['furigana'] ?>">
        </div>
        <div class="form__outer">
          <label for="email">メール</label>
          <input type="text" name="email" id="email" value="<?= $result['email'] ?>">
        </div>
        <div class="form__outer">
          <p class="question">好きな音楽のカテゴリ</p>
          <ul class="input-check__list">
            <li class="input-check__item">
              <label for="orchestra"><input type="checkbox" name="categories[]" id="orchestra" value="オーケストラ" <?= in_array("オーケストラ", $selectedMusicCategories) ? 'checked' : '' ?>>オーケストラ</label>
            </li>
            <li class="input-check__item">
              <label for="wind-orchestra"><input type="checkbox" name="categories[]" id="wind-orchestra" value="吹奏楽" <?= in_array("吹奏楽", $selectedMusicCategories) ? 'checked' : '' ?>>吹奏楽</label>
            </li>
            <li class="input-check__item">
              <label for="chamber-music-ensemble"><input type="checkbox" name="categories[]" id="chamber-music-ensemble" value="室内楽・アンサンブル" <?= in_array("室内楽・アンサンブル", $selectedMusicCategories) ? 'checked' : '' ?>>室内楽・アンサンブル</label>
            </li>
            <li class="input-check__item">
              <label for="jazz"><input type="checkbox" name="categories[]" id="jazz" value="ジャズ" <?= in_array("ジャズ", $selectedMusicCategories) ? 'checked' : '' ?>>ジャズ</label>
            </li>
            <li class="input-check__item">
              <label for="solo"><input type="checkbox" name="categories[]" id="solo" value="ソロ" <?= in_array("ソロ", $selectedMusicCategories) ? 'checked' : '' ?>>ソロ</label>
            </li>
          </ul>
        </div>
        <div class="form__outer">
          <p class="question">メールで演奏会の通知を受け取れます。</p>
          <div class="input-check__item">
            <label for="subscribe_mail"><input type="checkbox" name="subscribe_mail" id="subscribe_mail" value="1" <?= $result['subscribe_mail'] === 1 ? 'checked' : '' ?>>受け取る</label>
          </div>
        </div>
      </div>
      <div class="btn__container">
        <button type="button" onclick="history.back()" class="back-btn btn">戻る</button>
        <input type="hidden" name="id" value="<?= $result['id'] ?>">
        <input type="submit" class="btn" value="更新">
      </div>
    </form>
  </main>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <script src="../js/index.js"></script>
</body>

</html>