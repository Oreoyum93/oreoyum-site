<?php
$filepath = "gebot.txt";
$startGebot = 1;

// Datei existiert? Wenn nicht: Startgebot reinschreiben
if (!file_exists($filepath)) {
    file_put_contents($filepath, $startGebot);
}

// Aktuelles Gebot holen
$aktuellesGebot = (int)file_get_contents($filepath);

// Neues Gebot
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
        body { background-color: #121212; color: white; font-family: Arial, sans-serif; text-align: center; padding: 2rem; }
        button { padding: 10px 20px; font-size: 18px; background: #58a6ff; border: none; color: white; border-radius: 8px; cursor: pointer; }
        button:hover { background: #417fc3; }
        #currentBid { font-size: 24px; margin: 1rem 0; }
    </style>
</head>
<body>
    <h1>Maël Autogramm Auktion</h1>
    <p id="currentBid">Aktuelles Gebot: <?= number_format($aktuellesGebot, 0, '.', "'") ?>.- CHF</p>
    <form method="post">
        <button type="submit">Gebot abgeben (+10'000)</button>
    </form>
</body>
</html>
