// Menü Verileri
const menu = {
    kahvalti: [
        { id: 1, ad: "Serpme Kahvaltı", fiyat: 675 },
        { id: 2, ad: "Tek Kişilik Kahvaltı Tabağı", fiyat: 365 },
        { id: 3, ad: "Sahanda Yumurta", fiyat: 120 },
        { id: 4, ad: "Sucuklu Yumurta", fiyat: 140 },
        { id: 5, ad: "Beyaz Peynirli Omlet", fiyat: 135 },
        { id: 6, ad: "Kaşarlı Omlet", fiyat: 135 },
        { id: 7, ad: "Menemen", fiyat: 170 },
        { id: 8, ad: "Kaşarlı Sucuklu Menemen", fiyat: 195 },
        { id: 9, ad: "Burger Tabağı", fiyat: 280 },
        { id: 10, ad: "Sosis Tava", fiyat: 135 },
    ],
    gozlemeler: [
        { id: 11, ad: "Patates Tabağı", fiyat: 115 },
        { id: 12, ad: "Sisler Atıştırmalık Tabağı", fiyat: 180 },
        { id: 13, ad: "Sigara Böreği", fiyat: 120 },
        { id: 14, ad: "Paçanga Böreği", fiyat: 190 },
        { id: 15, ad: "Tortilla", fiyat: 200 },
        { id: 16, ad: "Kurabiye Tabağı", fiyat: 80 },
        { id: 17, ad: "Kestane", fiyat: 170 },
        { id: 18, ad: "Beyaz Peynirli Gözleme", fiyat: 170 },
        { id: 19, ad: "Kaşar Peynirli Gözleme", fiyat: 170 },
        { id: 20, ad: "Kaşarlı Yumurtalı Gözleme", fiyat: 195 },
        { id: 21, ad: "Kaşarlı Mantarlı Gözleme", fiyat: 195 },
        { id: 22, ad: "Karışık Gözleme", fiyat: 195 },
        { id: 23, ad: "Kavurmalı Gözleme", fiyat: 210 },
    ],
    tostVeSandvic: [
        { id: 24, ad: "Kaşarlı Tost", fiyat: 115 },
        { id: 25, ad: "Karışık Tost", fiyat: 135 },
        { id: 26, ad: "Beyaz Peynirli Tost", fiyat: 115 },
        { id: 27, ad: "Kavurmalı Tost", fiyat: 180 },
        { id: 28, ad: "Sisler Bulvarı Spesyal Tost", fiyat: 210 },
        { id: 29, ad: "Ton Balıklı Sandviç", fiyat: 160 },
        { id: 30, ad: "Beyaz Peynirli Sandviç", fiyat: 125 },
        { id: 31, ad: "Kaşarlı Sandviç", fiyat: 125 },
        { id: 32, ad: "Kaşarlı Salamlı Sandviç", fiyat: 135 },
    ],
    makarnaVeTavuk: [
        { id: 33, ad: "Mantı", fiyat: 220 },
        { id: 34, ad: "Tikka Masala Soslu Penne", fiyat: 230 },
        { id: 35, ad: "Krema Soslu Penne", fiyat: 230 },
        { id: 36, ad: "Köri Soslu Penne", fiyat: 230 },
        { id: 37, ad: "Pesto Soslu Penne", fiyat: 230 },
        { id: 38, ad: "Penne Arabiata", fiyat: 210 },
        { id: 39, ad: "Tavuk Pirzola", fiyat: 250 },
        { id: 40, ad: "Tavuk Biftek", fiyat: 250 },
        { id: 41, ad: "Köri Soslu Tavuk", fiyat: 250 },
        { id: 42, ad: "Krema Soslu Tavuk", fiyat: 250 },
        { id: 43, ad: "Tikka Masala Soslu Tavuk", fiyat: 265 },
    ],
    tatlilar: [
        { id: 44, ad: "Dondurma Top", fiyat: 30 },
        { id: 45, ad: "Mozaik Pasta", fiyat: 160 },
        { id: 46, ad: "Yanardağ Pasta", fiyat: 180 },
        { id: 47, ad: "Marlenka", fiyat: 180 },
        { id: 48, ad: "Tiramisu", fiyat: 170 },
        { id: 49, ad: "Limonlu Cheesecake", fiyat: 180 },
        { id: 50, ad: "Frambuazlı Cheesecake", fiyat: 180 },
        { id: 51, ad: "Magnolia", fiyat: 160 },
        { id: 52, ad: "Sufle", fiyat: 180 },
    ],
    sicakIcecekler: [
        { id: 53, ad: "Sıcak Çikolata", fiyat: 95 },
        { id: 54, ad: "Sıcak Süt", fiyat: 60 },
        { id: 55, ad: "Ballı Süt", fiyat: 85 },
        { id: 56, ad: "Çay", fiyat: 25 },
        { id: 57, ad: "Fincan Çay", fiyat: 50 },
        { id: 58, ad: "Sütlü Çay", fiyat: 60 },
        { id: 59, ad: "Salep", fiyat: 95 },
        { id: 60, ad: "Fındıklı Salep", fiyat: 105 },
        { id: 61, ad: "Pumpkin Latte", fiyat: 100 },
        { id: 62, ad: "Chai Tea Latte", fiyat: 95 },
        { id: 63, ad: "Türk Kahvesi", fiyat: 75 },
        { id: 64, ad: "Büyük Türk Kahvesi", fiyat: 115 },
        { id: 65, ad: "Sütlü Türk Kahvesi", fiyat: 80 },
        { id: 66, ad: "Büyük Sütlü Türk Kahvesi", fiyat: 120 },
        { id: 67, ad: "Sütlü Dibek Kahvesi", fiyat: 80 },
        { id: 68, ad: "Büyük Sütlü Dibek Kahvesi", fiyat: 120 },
        { id: 69, ad: "Damla Sakızlı Türk Kahvesi", fiyat: 80 },
        { id: 70, ad: "Büyük Damla Sakızlı Türk Kahvesi", fiyat: 120 },
        { id: 71, ad: "Osmanlı Kahvesi", fiyat: 80 },
        { id: 72, ad: "Büyük Osmanlı Kahvesi", fiyat: 120 },
    ],
    sogukIcecekler: [
        { id: 73, ad: "Filtre Kahve", fiyat: 85 },
        { id: 74, ad: "İlave Süt", fiyat: 15 },
        { id: 75, ad: "Sade Nescafe", fiyat: 80 },
        { id: 76, ad: "Sütlü Nescafe", fiyat: 85 },
        { id: 77, ad: "Espresso", fiyat: 75 },
        { id: 78, ad: "Double Espresso", fiyat: 90 },
        { id: 79, ad: "Americano", fiyat: 85 },
        { id: 80, ad: "Macchiato", fiyat: 85 },
        { id: 81, ad: "Latte", fiyat: 90 },
        { id: 82, ad: "Fındık Aromalı Latte", fiyat: 100 },
        { id: 83, ad: "Vanilya Aromalı Latte", fiyat: 100 },
        { id: 84, ad: "Mocha", fiyat: 100 },
        { id: 85, ad: "White Chocolate Mocha", fiyat: 100 },
        { id: 86, ad: "Karamel Macchiato", fiyat: 100 },
        { id: 87, ad: "Kappucino", fiyat: 95 },
        { id: 88, ad: "Affagato", fiyat: 125 },
        { id: 89, ad: "Adaçayı", fiyat: 85 },
        { id: 90, ad: "Ihlamur", fiyat: 85 },
        { id: 91, ad: "Papatya Çayı", fiyat: 85 },
        { id: 92, ad: "Yeşil Çay", fiyat: 85 },
        { id: 93, ad: "Melisa Çayı", fiyat: 85 },
        { id: 94, ad: "Elma Çayı", fiyat: 85 },
        { id: 95, ad: "Kış Çayı", fiyat: 90 },
        { id: 96, ad: "Hasta Çayı", fiyat: 90 },
        { id: 97, ad: "Çikolatalı Milkshake", fiyat: 110 },
        { id: 98, ad: "Karamelli Milkshake", fiyat: 110 },
        { id: 99, ad: "Çilekli Milkshake", fiyat: 110 },
        { id: 100, ad: "Orman Meyveli Milkshake", fiyat: 110 },
        { id: 101, ad: "Frambuazlı Milkshake", fiyat: 110 },
        { id: 102, ad: "Vanilyalı Milkshake", fiyat: 110 },
        { id: 103, ad: "Karpuz Çilekli Milkshake", fiyat: 110 },
        { id: 104, ad: "Karpuzlu Milkshake", fiyat: 110 },
        { id: 105, ad: "Kivili Milkshake", fiyat: 110 },
        { id: 106, ad: "Muzlu Milkshake", fiyat: 110 },
        { id: 107, ad: "Oreolu Milkshake", fiyat: 165 },
        { id: 108, ad: "Brownieli Milkshake", fiyat: 165 },
        { id: 109, ad: "Iced Americano", fiyat: 100 },
        { id: 110, ad: "Iced Latte", fiyat: 110 },
        { id: 111, ad: "Iced Mocha", fiyat: 120 },
        { id: 112, ad: "Frappe", fiyat: 100 },
        { id: 113, ad: "Cold Brew", fiyat: 125 },
        { id: 114, ad: "Limonata", fiyat: 95 },
        { id: 115, ad: "Çilekli Limonata", fiyat: 105 },
        { id: 116, ad: "Karadut", fiyat: 95 },
        { id: 117, ad: "Sıkma Portakal Suyu", fiyat: 110 },
        { id: 118, ad: "Smoothie +", fiyat: 110 },
        { id: 119, ad: "Frozen +", fiyat: 105 },
        { id: 120, ad: "Blue Lagoon", fiyat: 105 },
        { id: 121, ad: "Ice Tea", fiyat: 65 },
        { id: 122, ad: "Pepsi", fiyat: 65 },
        { id: 123, ad: "Yedigün", fiyat: 65 },
        { id: 124, ad: "SevenUp", fiyat: 65 },
        { id: 125, ad: "Meyve Suyu", fiyat: 65 },
        { id: 126, ad: "Soda", fiyat: 45 },
        { id: 127, ad: "Meyveli Soda", fiyat: 50 },
        { id: 128, ad: "Sıkma Limon Soda", fiyat: 60 },
        { id: 129, ad: "Churchill", fiyat: 65 },
        { id: 130, ad: "Ayran", fiyat: 50 },
        { id: 131, ad: "Su", fiyat: 20 },
    ],
};

// Tabloları Doldurma
function populateTable(category, tableId) {
    const tableBody = document.getElementById(tableId);
    tableBody.innerHTML = ""; // Tablonun içeriğini temizle
    menu[category].forEach((urun, index) => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${urun.id}</td>
            <td>${urun.ad}</td>
            <td>${urun.fiyat} ₺</td>
            <td>
                <button class="btn btn-danger btn-sm" onclick="urunSil('${category}', ${index})">Sil</button>
            </td>
        `;
        tableBody.appendChild(row);
    });
}

// Ürün Ekleme
function urunEkle(category) {
    const urunAd = prompt("Ürün Adı:");
    const urunFiyat = parseFloat(prompt("Ürün Fiyatı:"));
    if (urunAd && !isNaN(urunFiyat)) {
        const newId = menu[category].length > 0 
            ? menu[category][menu[category].length - 1].id + 1 
            : 1;
        menu[category].push({ id: newId, ad: urunAd, fiyat: urunFiyat });
        populateTable(category, `${category}-table`);
    } else {
        alert("Lütfen geçerli bir ürün adı ve fiyat girin.");
    }
}

// Ürün Silme
function urunSil(category, index) {
    menu[category].splice(index, 1); // İlgili kategoriden ürünü kaldır
    populateTable(category, `${category}-table`);
}

document.addEventListener("DOMContentLoaded", () => {
    populateTable("kahvalti", "kahvalti-table");
    populateTable("gozlemeler", "gozleme-table");
    populateTable("tostVeSandvic", "tostVeSandvic-table");
    populateTable("makarnaVeTavuk", "makarnaVeTavuk-table");
    populateTable("tatlilar", "tatlilar-table");
    populateTable("sicakIcecekler", "sicakIcecekler-table");
    populateTable("sogukIcecekler", "sogukIcecekler-table");
});
