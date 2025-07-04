<?php
$teilnehmer = file_exists("teilnehmer.txt") ? file("teilnehmer.txt", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES) : [];
?>
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>Teilnehmer – Maël Verlosung</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
        background-color: #121212;
        color: #c9d1d9;
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 0;
        padding: 0;
    }
    h1 {
        color: #58a6ff;
        font-size: 3rem;
        margin-top: 40px;
    }
    .container {
        max-width: 800px;
        margin: auto;
        padding: 20px;
    }
    ul {
        list-style: none;
        padding: 0;
    }
    li {
        background: rgba(255, 255, 255, 0.05);
        margin: 10px auto;
        padding: 10px;
        border-radius: 8px;
        font-size: 1.2rem;
        width: 60%;
    }
    a.button {
        display: inline-block;
        margin-top: 30px;
        padding: 10px 20px;
        background-color: #58a6ff;
        color: #fff;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
    }
    a.button:hover {
        background-color: #4091e0;
    }
  </style>
</head>
<body>
  <h1>🎉 Teilnehmer der Maël Verlosung</h1>
  <div class="container">
    <?php if (count($teilnehmer) > 0): ?>
      <ul>
        <?php foreach ($teilnehmer as $name): ?>
          <li><?php echo htmlspecialchars($name); ?></li>
        <?php endforeach; ?>
      </ul>
    <?php else: ?>
      <p>Es wurden noch keine Teilnehmer registriert.</p>
    <?php endif; ?>
    <a class="button" href="gewinnspiel.html">Zurück zur Teilnahme</a>
  </div>
</body>
</html>
