import 'package:flutter/material.dart';


final List<Map<String, dynamic>> categories = [
 {
   'name': 'Semua',
   'icon': Icons.restaurant_menu,
 },
 {
   'name': 'Makanan',
   'icon': Icons.ramen_dining,
 },
 {
   'name': 'Minuman',
   'icon': Icons.local_drink,
 },
 {
   'name': 'Snack',
   'icon': Icons.fastfood,
 },
 {
   'name': 'Promo',
   'icon': Icons.local_offer,
 },
];

final List<Map<String, dynamic>> products = [
 {
   'name': 'Nasi Goreng',
   'category': 'Makanan',
   'price': 15000,
   'rating': 4.8,
   'available': true,
   'image':
       'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800',
 },
 {
   'name': 'Ayam Geprek',
   'category': 'Makanan',
   'price': 18000,
   'rating': 4.9,
   'available': true,
   'image':
       'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=800',
 },
 {
   'name': 'Mie Ayam',
   'category': 'Makanan',
   'price': 12000,
   'rating': 4.7,
   'available': true,
   'image':
       'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=800',
 },
 {
   'name': 'Es Teh Manis',
   'category': 'Minuman',
   'price': 5000,
   'rating': 4.6,
   'available': true,
   'image':
       'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=800',
 },
 {
   'name': 'Kopi Susu',
   'category': 'Minuman',
   'price': 10000,
   'rating': 4.8,
   'available': true,
   'image':
       'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=800',
 },
 {
   'name': 'Roti Bakar',
   'category': 'Snack',
   'price': 10000,
   'rating': 4.5,
   'available': false,
   'image':
       'https://images.unsplash.com/photo-1521305916504-4a1121188589?w=800',
 },
];

// Dynamic List untuk berita
final List<Map<String, dynamic>> news = [
 {
   'title': 'Promo Makan Hemat untuk Mahasiswa',
   'category': 'Promo',
   'date': '7 Oktober 2026',
   'image':
       'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800',
 },
 {
   'title': 'KantinKampus Tambah Menu Baru',
   'category': 'Informasi', 
   'date': '6 Oktober 2026',
   'image':
       'https://images.unsplash.com/photo-1498837167922-ddd27525d352?w=800',
 },
 {
   'title': 'Tips Memilih Makanan Sebelum Kuliah',
   'category': 'Tips',
   'date': '5 Oktober 2026',
   'image':
       'https://images.unsplash.com/photo-1547592180-85f173990554?w=800',
 },
];


class KantinApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          _banner(),
          SizedBox(height: 20,),
           _informasi(),
           SizedBox(height: 20,),
          //test grid view
          GridView.builder(
            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.72, //kotaknya jadi lebih tinggi
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final produk = products[index];
              final bool tersedia = produk['available'];

            return Container(
              clipBehavior: Clip.antiAlias, //gambar jadi melengkung
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                  color: Colors.black.withAlpha(25),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        produk['image'],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => 
                      Container(color: Colors.grey.shade300),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Container( //kotak isinya rating sama icon bintang
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 4,
                            children: [
                              Icon(Icons.star, color: Colors.amber,size: 16), //icon bintang
                              Text("${produk['rating']}", //angka rating
                              style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12
                              )
                              ),
                            ],
                          ),
                        ),
                        ),
                        Positioned(
                          bottom: 12,
                          right: 12,
                          child: Container( 
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: tersedia? Colors.green : Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tersedia? "Tersedia":"Habis",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                              ),
                            ),
                          ),
                    ],
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(produk['name'],
                        style:  
                        TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                          SizedBox(height: 4),
                          Text(produk['category'],
                          style: TextStyle(
                            fontSize: 12, color: Colors.grey)),
                            SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rp${produk['price']}",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                              color: Colors.orange)),
                              Container(
                                width: 40,
                                height:   40,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                      ],
                        ),
                        ),
                      ],
                    ),
            );
          },
          ),
          
        ],
      ),
    );
  }

  Padding _informasi() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            spacing: 10,
            
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                height: 100,
                decoration: BoxDecoration(
                  border: BoxBorder.all(color:  Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  spacing: 8,
                  children: [
                    Container(
                      width: 38, 
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.orange.withAlpha(150),
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(Icons.delivery_dining_outlined, 
                      color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                        "Gratis Ongkir", 
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.bold),),
                      Text("Min. pembelian Rp 30.000", 
                      style: TextStyle(
                        fontSize: 11, 
                        color: Colors.grey.shade500,
                      ),
                      ),
                    ],
                    ),
                  ],
          
                ),
              ),
              ),
                            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                height: 100,
                decoration: BoxDecoration(
                  border: BoxBorder.all(color:  Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  spacing: 8,
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.orange.withAlpha(150),
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(Icons.access_time_rounded, 
                      color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                        "Buka hari ini", 
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.bold),),
                      Text("18.00-21.00", 
                      style: TextStyle(
                        fontSize: 11, 
                        color: Colors.grey.shade500,
                      ),
                      ),
                    ],
                    ),
                  ],
          
                ),
              ),
              ),
            ],
          ),
        );
  }

  Container _banner() {
    return Container(
          height: 210,
          margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24)
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network("https://images.alodokter.com/dk0z4ums3/image/upload/v1594622094/attached_image/ini-makanan-sehat-yang-perlu-dikonsumsi-setiap-hari-0-alodokter.jpg",
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container( color: Colors.pink);
              }
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.75),
                      Colors.black.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Promo hari ini", style: TextStyle (color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11,
                  ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 65,
                child: Text("Diskon hingga \n30%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.orange,
                  ),
                  onPressed: () {}, 
                  child: Text("Lihat promo"),
                ),
              ),
            ],
          ),
        );
  }

  AppBar _appBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kantin Kampus", 
          style: TextStyle(
            fontWeight: FontWeight.bold),
          ),
          Text("Makan Enak, Harga Bersahabat", 
          style: TextStyle(
            fontSize: 11, 
            color: Colors.grey),)
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){},
           icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}

