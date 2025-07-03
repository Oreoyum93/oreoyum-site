CREATE DATABASE IF NOT EXISTS stock;
USE stock;

CREATE TABLE IF NOT EXISTS merch_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    price DECIMAL(10,2),
    image VARCHAR(255),
    stock INT DEFAULT 0
);

INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum T-Shirt 1st Edition (White)', 24.99, './assets/images/yum_tshirt-removebg-preview.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum Hoddie 1st Edition (Black)', 39.99, './assets/images/yum_hoddie-removebg-preview.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum T-Shirt 2nd Edition (Blue)', 29.99, './assets/images/yumv2-removebg-preview.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('404yum T Shirt', 24.99, './assets/new merch without background/Oberteile/404yum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Anit Therapieyum Crop Hoddie', 24.99, './assets/new merch without background/Oberteile/Anit Therapieyum Crop Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Blumenyum Hoddie', 34.99, './assets/new merch without background/Oberteile/Blumenyum Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Blumenyum T Shirt', 29.99, './assets/new merch without background/Oberteile/Blumenyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Camerayum (front Design)', 24.99, './assets/new merch without background/Oberteile/Camerayum (Front Design).png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Camerayum (rücken Design)', 29.99, './assets/new merch without background/Oberteile/Camerayum (Rücken Design).png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Cookies T Shirt', 29.99, './assets/new merch without background/Oberteile/Cookies T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Der Beobachter Yum Hoddie', 29.99, './assets/new merch without background/Oberteile/Der Beobachter Yum Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Der Weg Hoddie', 34.99, './assets/new merch without background/Oberteile/Der Weg Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Faktenyum T Shirt', 24.99, './assets/new merch without background/Oberteile/Faktenyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Feueryum Shirt', 29.99, './assets/new merch without background/Oberteile/Feueryum Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Fingeryum T Shirt', 34.99, './assets/new merch without background/Oberteile/Fingeryum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Friedenyum Hoddie', 29.99, './assets/new merch without background/Oberteile/Friedenyum Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('I Love Dad Hoddie', 29.99, './assets/new merch without background/Oberteile/I Love Dad Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('I Love Daddy Hoddie', 34.99, './assets/new merch without background/Oberteile/I Love daddy hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Informatikeryum T Shirt 2nd Edition', 29.99, './assets/new merch without background/Oberteile/Informatikeryum T-Shirt 2nd Edition.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Lolyum T Shirt', 34.99, './assets/new merch without background/Oberteile/LOLyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Memeyum Polo Shirt', 34.99, './assets/new merch without background/Oberteile/Memeyum Polo Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Nachricht An Chef T Shirt', 24.99, './assets/new merch without background/Oberteile/Nachricht An Chef T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreo President Hoddie', 24.99, './assets/new merch without background/Oberteile/Oreo President Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Crop Hoddie', 34.99, './assets/new merch without background/Oberteile/Oreoyum Crop Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Hoddie', 34.99, './assets/new merch without background/Oberteile/Oreoyum Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum T Shirt', 34.99, './assets/new merch without background/Oberteile/Oreoyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Weste', 24.99, './assets/new merch without background/Oberteile/Oreoyum Weste.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Spiegelyum T Shirt', 29.99, './assets/new merch without background/Oberteile/Spiegelyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Symbolisches Yum T Shirt', 29.99, './assets/new merch without background/Oberteile/Symbolisches Yum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Team Oreoyum Crop Hoddie', 29.99, './assets/new merch without background/Oberteile/Team Oreoyum Crop Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Team Oreoyum Hoddie', 34.99, './assets/new merch without background/Oberteile/Team Oreoyum Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Teufelyum T Shirt', 29.99, './assets/new merch without background/Oberteile/Teufelyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Therapieyum Crop Hoddie', 24.99, './assets/new merch without background/Oberteile/Therapieyum Crop Hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Warheitsyum T Shirt', 24.99, './assets/new merch without background/Oberteile/Warheitsyum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum X Kadze T Shirt', 29.99, './assets/new merch without background/Oberteile/Yum x Kadze T-shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yumland T Shirt', 29.99, './assets/new merch without background/Oberteile/Yumland T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Grogu X Oreoyum Hoddie', 24.99, './assets/new merch without background/Oberteile/grogu x oreoyum hoddie.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Informatikeryum T Shirt', 34.99, './assets/new merch without background/Oberteile/informatikeryum T-Shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Schadenyum Shirt', 24.99, './assets/new merch without background/Oberteile/schadenyum shirt.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum Boxers', 34.99, './assets/new merch without background/Hosen/Yum Boxers.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum Jogging Hose', 39.99, './assets/new merch without background/Hosen/Yum Jogging Hose.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Yum Thigh Highs', 39.99, './assets/new merch without background/Hosen/Yum Thigh Highs.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Beanie (text)', 22.99, './assets/new merch without background/Kopfbedeckung/Oreoyum Beanie (Text).png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Cap', 22.99, './assets/new merch without background/Kopfbedeckung/Oreoyum Cap.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Fischerhut (grosses Logo)', 22.99, './assets/new merch without background/Kopfbedeckung/Oreoyum Fischerhut (Grosses Logo).png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Fischerhut (kleines Logo)', 22.99, './assets/new merch without background/Kopfbedeckung/Oreoyum Fischerhut (Kleines Logo).png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Lgbtqyum Tasche', 17.99, './assets/new merch without background/Taschen/LGBTQyum Tasche.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreo Tasche 2nd Edition', 14.99, './assets/new merch without background/Taschen/Oreo Tasche 2nd Edition.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreo Tasche', 14.99, './assets/new merch without background/Taschen/Oreo Tasche.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreolove Tasche', 14.99, './assets/new merch without background/Taschen/Oreolove Tasche.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Tasche (gold Logo)', 17.99, './assets/new merch without background/Taschen/Oreoyum Tasche (Gold Logo).png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Tasche', 14.99, './assets/new merch without background/Taschen/Oreoyum Tasche.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Team Oreoyum Tasche', 14.99, './assets/new merch without background/Taschen/Team Oreoyum Tasche.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Tasse', 12.99, './assets/new merch without background/Tassen/Oreoyum Tasse.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Team Oreoyum Tasse', 12.99, './assets/new merch without background/Tassen/Team Oreoyum Tasse.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Frogyum Plush', 17.99, './assets/new merch without background/Weiteres/Frogyum Plush.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Flasche', 17.99, './assets/new merch without background/Weiteres/Oreoyum Flasche.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Glass', 17.99, './assets/new merch without background/Weiteres/Oreoyum Glass.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Gold Sticker', 9.99, './assets/new merch without background/Weiteres/Oreoyum Gold Sticker.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Pins', 13.99, './assets/new merch without background/Weiteres/Oreoyum Pins.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Oreoyum Sticker', 13.99, './assets/new merch without background/Weiteres/Oreoyum Sticker.png', 10);
INSERT INTO merch_items (name, price, image, stock) VALUES ('Keksdose Removebg Preview', 9.99, './assets/new merch without background/Weiteres/keksdose-removebg-preview.png', 10);