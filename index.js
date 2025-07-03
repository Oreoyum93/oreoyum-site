const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

// MySQL Verbindung
const db = mysql.createConnection({
    host: 'your-db-hostname',
    user: 'your-db-username',
    password: 'your-db-password',
    database: 'stock'
});

db.connect(err => {
    if (err) {
        console.error('MySQL Verbindung fehlgeschlagen:', err);
        return;
    }
    console.log('Mit MySQL verbunden.');
});

// Route: Produkte mit Lagerbestand
app.get('/stock', (req, res) => {
    db.query('SELECT name, stock FROM merch_items', (err, results) => {
        if (err) {
            res.status(500).json({ error: 'Fehler beim Abrufen des Lagerbestands' });
            return;
        }
        res.json(results);
    });
});

// Route: Bestellung ausführen und Lagerbestand aktualisieren
app.post('/checkout', (req, res) => {
    const items = req.body;

    const queries = items.map(item => {
        return new Promise((resolve, reject) => {
            db.query(
                'UPDATE merch_items SET stock = stock - ? WHERE name = ? AND stock >= ?',
                [item.quantity, item.name, item.quantity],
                (err, result) => {
                    if (err) return reject(err);
                    resolve(result);
                }
            );
        });
    });

    Promise.all(queries)
        .then(() => res.json({ status: 'success' }))
        .catch(err => res.status(500).json({ error: 'Fehler beim Aktualisieren des Lagerbestands' }));
});

app.listen(PORT, () => {
    console.log(`Server läuft auf http://localhost:${PORT}`);
});