
function addToCart(product) {
    const maxLimits = {
        merch: 5,
        software: 1,
        hardware: 2
    };

    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const existingIndex = cart.findIndex(item => item.name === product.name);

    if (existingIndex !== -1) {
        const existingItem = cart[existingIndex];
        const limit = maxLimits[existingItem.category] || 99;

        if (existingItem.quantity < limit) {
            existingItem.quantity += 1;
        } else {
            alert("Maximale Anzahl für dieses Produkt erreicht.");
            return;
        }
    } else {
        const limit = maxLimits[product.category] || 99;
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
            <img src="${item.image}" alt="${item.name}" style="width:150px; height:auto; border-radius: 8px;"><br>
            <strong>${item.name}</strong><br>
            Menge: ${item.quantity}<br>
            Preis: ${item.price} €
        `;
        container.appendChild(div);
    });
}
