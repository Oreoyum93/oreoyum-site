<?php
$filepath = "gebot.txt";
$startGebot = 1;

if (!file_exists($filepath)) {
    file_put_contents($filepath, $startGebot);
}

$aktuellesGebot = (int)file_get_contents($filepath);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $aktuellesGebot += 10000;
    file_put_contents($filepath, $aktuellesGebot);
    header("Location: " . $_SERVER['PHP_SELF']);
    exit;
}
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Maël Autogramm Auktion</title>
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            padding: 2rem;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background-color: #1e1e1e;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 0 20px rgba(88, 166, 255, 0.2);
        }

        h1 {
            color: #58a6ff;
            margin-bottom: 1rem;
        }

        img {
            max-width: 100%;
            border-radius: 12px;
            margin-bottom: 1.5rem;
        }

        #currentBid {
            font-size: 1.5rem;
            margin: 1rem 0;
            font-weight: bold;
        }

        button, a.button {
            background-color: #58a6ff;
            color: white;
            font-size: 16px;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            cursor: pointer;
            margin: 0.5rem;
            display: inline-block;
        }

        button:hover, a.button:hover {
            background-color: #417fc3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Maël Autogramm Auktion</h1>
        <img src="assets/Image (6).jfif" alt="Maël Autogramm">
        <p id="currentBid">Aktuelles Gebot: <?= number_format($aktuellesGebot, 0, '.', "'") ?>.- CHF</p>
        <form method="post">
            <button type="submit">Gebot abgeben (+10'000)</button>
        </form>
        <a href="index.html" class="button">Zurück zur Startseite</a>
    </div>
</body>
</html>
