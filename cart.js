async function addToCart(product) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const existingIndex = cart.findIndex(item => item.name === product.name);

    if (existingIndex !== -1) {
        cart[existingIndex].quantity += 1;
    } else {
        product.quantity = 1;
        cart.push(product);
    }

    localStorage.setItem('cart', JSON.stringify(cart));
    alert(product.name + " wurde dem Warenkorb hinzugefügt!");
}

function loadCartItems() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const container = document.getElementById('cart-items');
    container.innerHTML = '';

    if (cart.length === 0) {
        container.innerHTML = '<p>Der Warenkorb ist leer.</p>';
        return;
    }

    cart.forEach((item, index) => {
        const div = document.createElement('div');
        div.style.marginBottom = '20px';
        div.innerHTML = `
            <img src="${item.image}" alt="${item.name}" style="width:150px; height:auto; border-radius:8px;"><br>
            <h3>${item.name}</h3>
            <p>${item.price} CHF</p>
            <p>Menge: 
                <button onclick="updateQuantity(${index}, -1)">➖</button>
                ${item.quantity}
                <button onclick="updateQuantity(${index}, 1)">➕</button>
            </p>
            <p><strong>Total:</strong> ${(item.price * item.quantity).toFixed(2)} CHF</p>
            <button onclick="removeFromCart(${index})">Entfernen</button>
            <hr>
        `;
        container.appendChild(div);
    });

    const total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
    const totalDiv = document.createElement('div');
    totalDiv.innerHTML = `<h2>Gesamtsumme: ${total.toFixed(2)} CHF</h2>
        <button onclick="checkStockAndCheckout()">🧾 Bestellung abschicken</button>`;
    container.appendChild(totalDiv);
}

function updateQuantity(index, delta) {
    let cart = JSON.parse(localStorage.getItem('cart'));
    cart[index].quantity += delta;
    if (cart[index].quantity <= 0) {
        cart.splice(index, 1);
    }
    localStorage.setItem('cart', JSON.stringify(cart));
    loadCartItems();
}

function removeFromCart(index) {
    let cart = JSON.parse(localStorage.getItem('cart'));
    cart.splice(index, 1);
    localStorage.setItem('cart', JSON.stringify(cart));
    loadCartItems();
}

async function checkStockAndCheckout() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    if (cart.length === 0) {
        alert("Dein Warenkorb ist leer.");
        return;
    }

    const response = await fetch("http://localhost:3000/stock");
    const stockList = await response.json();

    const insufficient = cart.filter(item => {
        const found = stockList.find(p => p.name === item.name);
        return !found || found.stock < item.quantity;
    });

    if (insufficient.length > 0) {
        alert("Einige Artikel haben nicht genügend Lagerbestand.");
        return;
    }

    // Bestellung abschicken
    await fetch("http://localhost:3000/checkout", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(cart)
    });

    // Bestellung lokal speichern
    localStorage.setItem('lastOrder', JSON.stringify(cart));
    let history = JSON.parse(localStorage.getItem('orderHistory')) || [];
    history.push({ timestamp: new Date().toISOString(), items: cart });
    localStorage.setItem('orderHistory', JSON.stringify(history));
    localStorage.removeItem('cart');

    window.location.href = 'payment.html';
}