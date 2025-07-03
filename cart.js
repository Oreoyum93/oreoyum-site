const apiUrl = "http://" + window.location.hostname + ":3000";

async function checkStockAndCheckout() {
  try {
    const response = await fetch(apiUrl + "/stock");
    const stockData = await response.json();

    const cart = JSON.parse(localStorage.getItem("cart")) || [];

    const insufficientStockItems = [];

    cart.forEach(item => {
      const stockItem = stockData.find(s => s.name === item.name);
      if (!stockItem || stockItem.stock < item.quantity) {
        insufficientStockItems.push({
          name: item.name,
          available: stockItem ? stockItem.stock : 0,
          requested: item.quantity
        });
      }
    });

    if (insufficientStockItems.length > 0) {
      let message = "Folgende Artikel sind nicht ausreichend auf Lager:\n\n";
      insufficientStockItems.forEach(item => {
        message += `${item.name}: Verfügbar: ${item.available}, Angefragt: ${item.requested}\n`;
      });
      alert(message);
      return;
    }

    // Bestellung senden
    const checkoutResponse = await fetch(apiUrl + "/checkout", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(cart)
    });

    if (!checkoutResponse.ok) {
      const error = await checkoutResponse.text();
      throw new Error("Fehler bei Bestellung: " + error);
    }

    // Bestellung erfolgreich
    alert("Bestellung erfolgreich abgeschlossen!");
    localStorage.removeItem("cart");
    window.location.href = "history.html";
  } catch (error) {
    console.error("Fehler beim Checkout:", error);
    alert("Ein Fehler ist aufgetreten. Bitte versuche es erneut.");
  }
}

document.getElementById("checkout-btn")?.addEventListener("click", checkStockAndCheckout);
