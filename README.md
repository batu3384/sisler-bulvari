# Sisler Bulvari - Kafe Siparis ve Yonetim Sistemi

Sisler Bulvari kafesi icin ozel olarak tasarlanmis dijital siparis ve isletme yonetim platformu. Siparis sureclerini dijitallestir, menu yonetimi ve satis istatistikleri sunar.

## Ozellikler

- Siparis Yonetimi: Gercek zamanli siparis giris ve takip arayuzu
- - Istatistik Paneli: Gunluk/aylik satis verileri ve trend analizleri
  - - Dinamik Menu: Kolay guncellenebilir menu yonetimi
    - - Yetkilendirme: Rol bazli giris sistemi (Admin/Garson)
      - - Modern UI: Kullanici dostu, hizli arayuz
       
        - ## Teknolojiler
       
        - | Kategori | Teknoloji |
        - |----------|----------|
        - | Frontend | HTML5, CSS3, JavaScript |
        - | Veritabani | MySQL |
       
        - ## Proje Yapisi
       
        - ```
          sisler-bulvari/
          |-- Login.html            # Giris ekrani
          |-- Siparis Ekrani.html   # Ana siparis arayuzu
          |-- js/                   # JavaScript modulleri
          |-- css/                  # Stil dosyalari
          |-- img/                  # Gorseller
          |-- sisler_cafe_son.sql   # Veritabani semasi
          ```

          ## Kurulum

          ```bash
          git clone https://github.com/batu3384/sisler-bulvari.git
          cd sisler-bulvari
          mysql -u root -p < sisler_cafe_son.sql
          # Tarayicida Login.html dosyasini acin
          ```

          ## Lisans

          MIT License
