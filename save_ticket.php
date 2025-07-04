<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = trim(strip_tags($_POST["name"] ?? ""));
    if ($name) {
        $entry = $name . " - " . date("Y-m-d H:i:s") . PHP_EOL;
        file_put_contents("teilnehmer.txt", $entry, FILE_APPEND);
        echo "<p>Danke, $name! Dein Ticket wurde erfolgreich gespeichert.</p>";
    } else {
        echo "<p>Bitte gib einen gültigen Namen ein.</p>";
    }
} else {
    echo "<p>Ungültige Anfrage.</p>";
}
?>
