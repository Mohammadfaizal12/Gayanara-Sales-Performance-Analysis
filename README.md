# Gayanara Fashion Retail: 2024 End-to-End Sales Performance Analysis

## Table of Contents

1. [Project Overview](#1-project-overview)
2. [Business Questions](#2-business-questions)

   * [2.1 Business Performance & Sales Trend](#21-business-performance--sales-trend)
   * [2.2 Geographic Performance](#22-geographic-performance)
   * [2.3 Product & Brand Performance](#23-product--brand-performance)
3. [Dataset & Data Preparation](#3-dataset--data-preparation)

   * [Data Source](#data-source)
   * [Data Transformation & Cleaning](#data-transformation--cleaning)
   * [Date Table — Time Intelligence](#date-table--time-intelligence)
   * [Data Cleaning & Standardisasi](#data-cleaning--standardisasi)
   * [Penanganan Missing Values](#penanganan-missing-values)
   * [Koreksi Tipe Data](#koreksi-tipe-data)
   * [Data Modeling](#data-modeling)
   * [DAX Calculations](#dax-calculations)
   
4. [Analysis & Dashboard](#4-analysis--dashboard)
   - [Executive Overview](#executive-overview)
   - [Product & Brand Performance](#product--brand-performance)   
6. [Business Recommendations](#6-business-recommendations)

   * [Recommendation 1 — Revenue Planning](#recommendation-1--revenue-planning)
   * [Recommendation 2 — Geographic Strategy](#recommendation-2--geographic-strategy)
   * [Recommendation 3 — Return Reduction](#recommendation-3--return-reduction)
   * [Recommendation 4 — Category & Brand Performance](#recommendation-4--category--brand-performance)
   * [Recommendation 5 — Kembangkan Kategori Kemeja](#recommendation-5--kembangkan-kategori-kemeja)
   * [Recommendation 6 — Evaluasi Pertumbuhan Celana](#recommendation-6--evaluasi-pertumbuhan-celana)
   * [Recommendation 7 — Evaluasi Cancellation & Return](#recommendation-7--evaluasi-cancellation--return)
7. [Tools & Skills](#7-tools--skills)

   * [Tools](#tools)
   * [Skills Applied](#skills-applied)


## 1. Project Overview

Gayanara adalah bisnis e-commerce/retail fashion di Indonesia. Proyek ini bertujuan untuk menganalisis kinerja penjualan sepanjang tahun 2024, mencakup tren revenue dan order, performa wilayah, serta kontribusi kategori produk dan brand.

Analisis dilakukan untuk mengidentifikasi pola penjualan, kategori dan brand dengan kontribusi revenue terbesar, serta area yang memiliki tingkat cancellation dan return yang lebih tinggi. Hasil analisis kemudian disajikan dalam bentuk dashboard interaktif menggunakan Power BI untuk membantu menghasilkan insight dan mendukung pengambilan keputusan berbasis data (*data-driven decision making*).

---

## 2. Business Questions

Proyek ini bertujuan untuk menganalisis performa penjualan Gayanara pada tahun 2024 dan menjawab beberapa pertanyaan bisnis utama melalui analisis **Sales Overview, Geographic Performance, dan Product & Brand Performance**.

### 2.1 Business Performance & Sales Trend

* Bagaimana performa revenue dan jumlah order Gayanara pada tahun 2024?
* Bagaimana tren revenue dan order sepanjang tahun 2024?
* Seberapa besar cancellation dan return rate yang terjadi pada transaksi?

### 2.2 Geographic Performance

* Provinsi dan kota mana yang memiliki kontribusi revenue terbesar pada tahun 2024?
* Wilayah mana yang menunjukkan pertumbuhan revenue tertinggi dibandingkan tahun sebelumnya?

### 2.3 Product & Brand Performance

* Kategori produk mana yang memiliki volume order dan revenue terbesar?
* Bagaimana distribusi revenue antar kategori produk? Apakah terdapat kategori yang terlalu dominan?
* Brand mana yang memberikan kontribusi revenue terbesar?
* Kategori mana yang menunjukkan pertumbuhan revenue tertinggi dibandingkan tahun sebelumnya?
* Kategori mana yang memiliki AOV tertinggi?
* Kategori mana yang memiliki Cancellation Rate dan Return Rate tertinggi?

---

## 3. Dataset & Data Preparation

### Data Source

Dataset transaksi internal Gayanara terdiri dari tabel:

* `Orders`
* `Order Items`
* `Products`
* `Customers`
* `Date Table`
* `Reviews`

### Data Transformation & Cleaning

Data transformation dan cleaning dilakukan menggunakan **Power Query**.

#### Date Table — Time Intelligence

Membuat tabel kalender khusus (`Date Table`) yang mencakup rentang tanggal, tahun, bulan, kuartal, dan nama hari. Tabel kemudian ditandai sebagai Date Table di Power BI untuk mendukung kalkulasi Time Intelligence, seperti YoY (*Year-over-Year*).

#### Data Cleaning & Standardisasi

* Menstandarkan kategori produk yang memiliki penamaan berbeda, seperti `Jacket` & `Jaket`, `Accessories` & `Aksesoris`, `T-shirt` & `Kaos`, serta `Shirt` & `Kemeja`.
* Menyesuaikan kapitalisasi dan penamaan kategori agar konsisten untuk kebutuhan analisis.

#### Penanganan Missing Values

Mengubah nilai kosong (`null`) pada kolom `discount_amount_idr` di tabel `Orders` menjadi `0`, dengan asumsi bahwa nilai kosong menunjukkan tidak adanya diskon.

#### Koreksi Tipe Data

Memastikan setiap kolom memiliki tipe data yang sesuai, seperti:

* Tanggal menjadi `Date`
* Harga dan revenue menjadi `whole Number`
* Kategori dan atribut teks menjadi `Text`

### Data Modeling

Membangun model data di Power BI menggunakan relasi **1-to-Many (1:)** antar tabel untuk mendukung analisis dan filtering pada dashboard.

* Menghubungkan `Orders`, `Order Items`, `Products`, `Customers`, dan `Reviews` sesuai kebutuhan analisis.
* Menghubungkan `Date Table` dengan `Orders` melalui `order_date` untuk mendukung analisis waktu dan kalkulasi Time Intelligence.

### DAX Calculations

Membuat custom measures menggunakan DAX untuk menghasilkan metrik utama, meliputi:

* `Total Revenue`
* `Total Orders`
* `YoY Growth %`
* `Cancellation Rate %`
* `Return Rate %`
* `AOV (Average Order Value)`

---

## 4. Analysis & Dashboard

Analisis dilakukan menggunakan **Power BI** dan mencakup tiga area analisis utama:
**Sales Overview, Geographic Performance, dan Product & Brand Performance**.

Hasil analisis disajikan dalam dua halaman dashboard:

### Executive Overview

Halaman **Executive Overview** memberikan gambaran umum mengenai performa penjualan Gayanara sepanjang tahun 2024, mencakup performa sales dan geographic performance.

<p align="center">
  <img 
    src="assets/overview - dashboard.png" 
    alt="Gayanara Fashion Retail — Executive Overview Dashboard"
    width="100%"
  />
</p>

#### Sales Overview

Menganalisis performa penjualan Gayanara sepanjang tahun 2024, meliputi:

* Total Revenue
* Total Orders
* YoY Revenue Growth
* Cancellation Rate
* Return Rate
* Tren revenue dan order bulanan

**Focus:** Mengidentifikasi tren penjualan, perubahan performa dibandingkan tahun sebelumnya, serta periode dengan performa penjualan yang lebih tinggi atau rendah.

#### Geographic Performance

Menganalisis distribusi dan performa penjualan berdasarkan wilayah, meliputi:

* Revenue berdasarkan provinsi
* Revenue berdasarkan kota
* Pertumbuhan revenue berdasarkan wilayah
* Distribusi penjualan secara geografis

**Focus:** Mengidentifikasi wilayah dengan kontribusi revenue terbesar serta wilayah yang menunjukkan perubahan performa yang signifikan.

---

### Product & Brand Performance

Halaman **Product & Brand Performance** berfokus pada kontribusi dan performa kategori produk serta brand.

<p align="center">
  <img 
    src="assets/Gayanara - Product.png" 
    alt="Gayanara Fashion Retail — Product & Brand Performance Dashboard"
    width="100%"
  />
</p>

Menganalisis kontribusi dan performa kategori produk serta brand, meliputi:

* Order volume berdasarkan kategori
* Revenue berdasarkan kategori
* Revenue berdasarkan brand
* YoY Revenue Growth
* AOV berdasarkan kategori
* Cancellation Rate & Return Rate berdasarkan kategori

**Focus:** Mengidentifikasi kategori dan brand dengan kontribusi revenue terbesar, pertumbuhan kategori, serta kategori dengan tingkat cancellation dan return yang lebih tinggi.

---

## 5. Key Insights

### Executive Overview

#### 1. Sales Performance

Revenue 2024 berhasil mencapai **Rp360,15M (+18,19% YoY)** dari **727 delivered orders**.

Secara bulanan, penjualan berfluktuasi di awal tahun dengan dua puncak utama di Februari (**36M**) dan Mei (**36M**). Setelah sempat melandai di bulan Juli (**26M**), kinerja perusahaan mencatatkan rebound positif secara konsisten sepanjang H2 hingga mencapai puncaknya di November (**34M**).

#### 2. Geographic Performance

Dari sisi geografis, **Jawa Barat** menjadi kontributor revenue terbesar dengan **Rp69,40M**.

Di tingkat kota, **Banjarmasin** mencatatkan tingkat revenue tertinggi dengan total revenue **Rp26,31M** dan pertumbuhan YoY sebesar **106,73%**, menunjukkan peningkatan signifikan dibandingkan tahun sebelumnya.

Sebaliknya, **Banten (Rp14,23M), DI Yogyakarta (Rp13,69M), DKI Jakarta (Rp12,31M), dan Bali (Rp9,93M)** merupakan empat provinsi dengan kontribusi revenue terendah.

#### 3. Cancellation & Return Performance

Performa operasional perusahaan menunjukkan penurunan **Cancellation Rate menjadi 9,60% (turun -2,75% YoY)**.

Di sisi lain, **Return Rate tercatat sebesar 5,00% (naik +0,47% YoY)**.

Kedua metrik ini krusial untuk terus dipantau karena mewakili potensi omzet yang tidak terealisasi (*unrealized revenue*) akibat pesanan batal maupun pengembalian barang dari pembeli.

---

### Product Performance

#### 1. Order Volume by Category

Volume pesanan 2024 relatif merata antar kategori. **Jaket, Aksesori, dan Celana** menjadi tiga kontributor terbesar dengan total **53,4%** dari seluruh pesanan, menunjukkan tidak adanya ketergantungan volume yang dominan pada satu kategori.

#### 2. Revenue by Category

Empat kategori dengan revenue tertinggi yaitu **Aksesori, Jaket, Celana, dan Kemeja**, masing-masing menghasilkan sekitar **Rp60M–Rp61M** pada tahun 2024.

Aksesori berada di posisi teratas dengan **Rp61,85M**, sementara Kemeja sebesar **Rp60,53M**.

Dengan selisih yang sangat tipis (**Rp1,32M**), revenue Gayanara terdistribusi relatif merata di antara kategori utama, mengindikasikan kategori produk yang sehat tanpa ketergantungan pada satu kategori dominan.

#### 3. Revenue by Brand

**Riang Apparel** mencatat revenue tertinggi sebesar **Rp50,3M**, disusul **Nusa Brand (Rp46,8M)** dan **Cendana Co (Rp42,1M)**.

Sementara itu, **Ratu Mode (Rp30,4M), BajuKita (Rp27,2M), dan Kanvas Lokal (Rp24,6M)** berada di kelompok dengan revenue terendah.

Revenue Riang Apparel sekitar **2,04x** lebih tinggi dibandingkan Kanvas Lokal, menunjukkan adanya perbedaan kontribusi revenue yang cukup besar antar brand.

#### 4. Category Performance Detail

| Category | Revenue Growth |       AOV | Cancellation Rate | Return Rate |
| -------- | -------------: | --------: | ----------------: | ----------: |
| Kemeja   |        +33,51% | Rp373.642 |             8,81% |       3,73% |
| Celana   |        +22,55% |         - |                 - |           - |
| Dress    |         +5,65% |         - |                 - |           - |
| Kaos     |              - |         - |            11,14% |       6,02% |
| Jaket    |              - |         - |            10,32% |       5,29% |

**Insight:**

1. Kemeja menunjukkan performa paling kuat dengan pertumbuhan revenue **+33,51% YoY** dan AOV tertinggi **Rp373.642**. Kategori ini juga memiliki Cancellation Rate (**8,81%**) dan Return Rate (**3,73%**) terendah, menunjukkan pertumbuhan yang diikuti oleh transaksi yang relatif stabil.

2. Celana mencatat pertumbuhan revenue **+22,55% YoY**, menjadi kategori dengan pertumbuhan tertinggi kedua. Sebaliknya, Dress hanya tumbuh **+5,65% YoY**, menunjukkan peningkatan revenue yang relatif lebih rendah.

3. Kaos dan Jaket memiliki risiko transaksi yang lebih tinggi. Kaos mencatat Cancellation Rate **11,14%** dan Return Rate **6,02%**, sementara Jaket masing-masing **10,32%** dan **5,29%**. Pada Jaket, kondisi ini perlu diperhatikan karena kategori tersebut juga memiliki volume order tertinggi (**203 orders**).

**Kesimpulan:** Kemeja dan Celana menunjukkan momentum pertumbuhan yang positif, sedangkan Kaos dan Jaket perlu mendapat perhatian dari sisi pembatalan dan retur untuk mengurangi potensi kehilangan revenue dan beban operasional.

---

## 6. Business Recommendations

### Recommendation 1 — Revenue Planning

Evaluasi faktor pendorong revenue pada bulan dengan performa tinggi dan identifikasi strategi yang dapat direplikasi pada periode dengan performa lebih rendah, khususnya sekitar pertengahan tahun.

### Recommendation 2 — Geographic Strategy

Pertahankan Jawa Barat sebagai **core market**, sementara lakukan analisis lebih lanjut terhadap Banjarmasin untuk mengidentifikasi faktor pendorong pertumbuhan **+106,73%** dan mengevaluasi potensi replikasi strateginya ke wilayah lain.

### Recommendation 3 — Return Reduction

Lakukan **diagnostic analysis** terhadap return berdasarkan produk, kategori, wilayah, dan alasan pengembalian untuk mengidentifikasi sumber utama kenaikan return rate sebelum menentukan tindakan perbaikan.

### Recommendation 4 — Category & Brand Performance

Pertahankan diversifikasi kategori sambil memperhatikan performa brand.

Volume order dan revenue relatif tersebar antar kategori, sehingga tidak terlihat ketergantungan volume pada satu kategori. Namun, terdapat perbedaan kontribusi yang lebih besar antar brand, dengan Riang Apparel (**Rp50,3M**) sekitar **2,04x** revenue Kanvas Lokal (**Rp24,6M**).

Perbedaan ini dapat menjadi dasar untuk mengevaluasi faktor yang membuat performa beberapa brand lebih tinggi dibandingkan lainnya.

### Recommendation 5 — Kembangkan Kategori Kemeja

Kemeja menunjukkan kombinasi pertumbuhan revenue tertinggi (**+33,51%**) dan AOV tertinggi (**Rp373.642**), dengan tingkat cancellation dan return yang relatif rendah.

Kategori ini dapat menjadi salah satu fokus untuk mempertahankan pertumbuhan revenue.

### Recommendation 6 — Evaluasi Pertumbuhan Celana

Celana mencatat pertumbuhan revenue **+22,55% YoY**, tertinggi kedua.

Analisis lebih lanjut terhadap produk, brand, atau faktor penjualan yang berkontribusi terhadap pertumbuhan ini dapat membantu mengidentifikasi peluang untuk mempertahankan tren tersebut.

### Recommendation 7 — Evaluasi Cancellation & Return

Prioritaskan evaluasi cancellation dan return pada **Kaos dan Jaket**.

Kaos memiliki Cancellation Rate **11,14%** dan Return Rate **6,02%**, sementara Jaket masing-masing **10,32%** dan **5,29%**.

Khusus Jaket, prioritas evaluasi menjadi lebih relevan karena kategori ini juga memiliki volume order tertinggi (**18,19%**).

Perusahaan dapat menelusuri penyebab pembatalan dan retur untuk mengurangi potensi kehilangan revenue dan beban operasional.

---

## 7. Tools & Skills

### Tools

* **PostgreSQL** — Data querying, data preparation, dan pembuatan Date Table
* **Power Query** — Data cleaning, transformation, dan standardisasi data
* **Power BI** — Data modeling, DAX, Time Intelligence, dan interactive dashboard

### Skills Applied

* **SQL Querying & Data Preparation**
* **Data Cleaning & Data Transformation**
* **Data Modeling & Relationships**
* **DAX & Time Intelligence**
* **Data Visualization & Dashboarding**
* **Exploratory Data Analysis (EDA)**
* **Business Insight & Recommendation**
