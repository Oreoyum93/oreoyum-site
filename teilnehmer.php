<?php
$teilnehmer = file_exists("teilnehmer.txt") ? file("teilnehmer.txt", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES) : [];
?>
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>Teilnehmerliste – Maël Verlosung</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f9f9f9;
      padding: 2em;
      margin: 0;
    }
    .container {
      max-width: 600px;
      margin: auto;
      background: #fff;
      padding: 2em;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h1 {
      text-align: center;
      color: #333;
    }
    ul {
      list-style: none;
      padding: 0;
    }
    li {
      padding: 0.5em 1em;
      border-bottom: 1px solid #eee;
    }
    .back-link {
      display: block;
      text-align: center;
      margin-top: 2em;
    }
    .back-link a {
      color: #007bff;
      text-decoration: none;
    }
    .back-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🎉 Teilnehmer der Maël Verlosung</h1>
    <ul>
      <?php foreach ($teilnehmer as $name): ?>
        <li><?php echo htmlspecialchars($name); ?></li>
      <?php endforeach; ?>
    </ul>
    <div class="back-link">
      <a href="gewinnspiel.html">Zurück zum Gewinnspiel</a>
    </div>
  </div>
</body>
</html>
