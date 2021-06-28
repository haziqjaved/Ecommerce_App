import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppEcommerce extends StatefulWidget {
  const AppEcommerce({Key? key}) : super(key: key);

  @override
  _AppEcommerceState createState() => _AppEcommerceState();
}

class _AppEcommerceState extends State<AppEcommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Center(
            child: Text('Ecomm App UI',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),
          actions: [
            IconButton(
                color: Colors.black,
                icon: Icon(Icons.notifications_none_rounded),
                onPressed: () {})
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          //Floating action button on Scaffold
          onPressed: () {},
          child: Icon(Icons.search), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          //bottom navigation bar on scaffold
          color: Colors.white,
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
              5, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.purple[500],
                ),
                onPressed: () {},
              ),
              // ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Items',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontStyle: FontStyle.italic),
                ),
                trailing: Text(
                  'View More',
                  style: TextStyle(fontSize: 17, color: Colors.purpleAccent),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        // 1st
                        Container(
                            // margin: EdgeInsets.symmetric(vertical: 5.0),
                            decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://i.ytimg.com/vi/a28VFj1zGLA/maxresdefault.jpg'),
                          ),
                        )),

                        //2nd Image of Slider
                        Container(
                          // margin: EdgeInsets.symmetric(vertical: 5.0),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.slashgear.com/wp-content/uploads/2017/08/Acer_IFA_Aspire_S_24_05-Copy.jpg'),
                            ),
                          ),
                        ),
                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://techcrunch.com/wp-content/uploads/2020/05/00100trPORTRAIT_00100_BURST20200506153653558_COVER.jpg')),
                          ),
                        ),
                        //4th
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.imore.com/sites/imore.com/files/styles/large/public/field/image/2020/12/caviar-airpods-max-black.jpg')),
                          ),
                        ),
                        //5th
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.pakistangulfeconomist.com/wp-content/uploads/2019/08/Competitive-home-appliance-industry-of-Pakistan.jpg')),
                          ),
                        )
                      ],
                      options: CarouselOptions(
                        height: 220.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text(
                      'More Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  )
                ],
              ),

              //cards

              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 08)),
                        Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_drink,
                                color: Colors.purple[600],
                                size: 40,
                              ),
                              Padding(padding: EdgeInsets.only(left: 08)),
                              Column(
                                children: [
                                  Text(
                                    'Clothes',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '5 items',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        //2nd
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bolt,
                                color: Colors.purple[600],
                                size: 40,
                              ),
                              Padding(padding: EdgeInsets.only(left: 05)),
                              Column(
                                children: [
                                  Text(
                                    'Electronics',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '25 items',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        //3rd
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bedroom_parent_rounded,
                                color: Colors.purple[600],
                                size: 40,
                              ),
                              Padding(padding: EdgeInsets.only(left: 05)),
                              Column(
                                children: [
                                  Text(
                                    'Households',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '07 items',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        //4th
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bolt,
                                color: Colors.purple[600],
                                size: 40,
                              ),
                              Padding(padding: EdgeInsets.only(left: 05)),
                              Column(
                                children: [
                                  Text(
                                    'Appliances',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '05 items',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        //5th
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.double_arrow,
                                color: Colors.purple[600],
                                size: 40,
                              ),
                              Padding(padding: EdgeInsets.only(left: 05)),
                              Column(
                                children: [
                                  Text(
                                    'Others',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '05 items',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  'Popular Items',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                trailing: Text(
                  'View More',
                  style: TextStyle(fontSize: 15, color: Colors.purpleAccent),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            0,
                            0,
                          ),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://xclusivecompetitions.com/wp-content/uploads/2020/12/iphone-12-pro-max-graphite-hero.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Iphone 12',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('5.0(23 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //2nd
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://img.pngio.com/macbook-clipart-png-macbook-pro-png-transparent-free-download-png-for-macbook-pro-inch-461_372.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Mackbook Pro',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star_half_outlined,
                                color: Colors.yellow, size: 18),
                            Text('4.5(23 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //3rd
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://trutone.ca/files/image/attachment/10519/BC7B041338532AB5BCCBB98D442FFD9A30547A82_134A2EEFE22C3000F28CF57296B6BCB5FMTPNGALPHASCL1_gallery.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Headphones',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('3.0(15 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),

                  //4th
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'http://www.promo.in.th/wp-content/uploads/2019/09/Xiaomi-Redmi-AirDots-Detail-3.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Mi Airdots',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('3.0(15 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //5th
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://webstockreview.net/images/see-clipart-smart-watch-13.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Smart Watch',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('4.0(15 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //6th
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'http://www.pngmart.com/files/2/Digital-SLR-Camera-PNG-Transparent-Image.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Dslr Camera',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('3.0(15 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //7th
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://ac-foto.com/storage/img/uploads/products/10367/86321807.png.pagespeed.ce.0Q2NSQBrCb.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Tamron 70-200mm',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('4.0(40 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //8th
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://www.fridgefactory.com.au/wp-content/uploads/2020/03/EHE6899SA-33230.EC-ProductCarousel.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Refrigeratior',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('3.0(15 Reviews)')
                          ],
                        )
                      ],
                    ),
                  ),
                  //9th
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'http://www.pngmart.com/files/6/Microwave-Oven-PNG-Transparent-Image.png'),
                          height: 160,
                          width: 250,
                        ),
                        Text('Microwave Oven',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text('3.0(30 Reviews)')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
