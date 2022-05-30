import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xffC1D6F4),
                              size: 14.0,
                            ),
                            Text(
                              "Location",
                              style: GoogleFonts.montserrat(
                                fontSize: 12.0,
                                color: Colors.black.withOpacity(0.45),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Purbalingga, Jawa Tengah",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              offset: const Offset(4, 4),
                              blurRadius: 14.0),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.black.withOpacity(0.25),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      hintStyle: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.4)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Category",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ItemMenuWidget(
                        text: "House",
                      ),
                      ItemMenuWidget(
                        text: "Hotel",
                      ),
                      ItemMenuWidget(
                        text: "Apartment",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Anuncio(
                        houseType: "Minimalist House",
                        imageHouse:
                            'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                      ),
                      Anuncio(
                        houseType: "Natural House",
                        imageHouse:
                            "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network("https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,

                              ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Padanaron House",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star,
                                color: Color(0xffFDC111),
                                size: 15,),
                                Icon(Icons.star,
                                color: Color(0xffFDC111),
                                size: 15,),
                                Icon(Icons.star,
                                color: Color(0xffFDC111),
                                size: 15,),
                                Icon(Icons.star,
                                color: Color(0xffFDC111),
                                size: 15,),
                                Icon(Icons.star,
                                color: Color(0xffFDC111).withOpacity(0.3),
                                size: 15,),
                                const SizedBox(width: 8),
                                Text("4.5",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                    color: Color(0xff899099).withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Row(

                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff8A909A),
                                  size: 16,
                                ),

                                  Text(
                                    "Padamara, Jawa Tengah",
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xff8A909A),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff349DFD),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(2,2),
                    )]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home_filled,
                      color: Colors.white,
                      ),
                      Icon(Icons.shopping_cart,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      Icon(Icons.bookmark_rounded,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      Icon(Icons.person,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Anuncio extends StatelessWidget {
  String houseType;
  String imageHouse;
  Anuncio({
    required this.houseType,
    required this.imageHouse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 230,
      padding: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              imageHouse,
              width: 230,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  houseType,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 16.0,
                    color: Color(0xffFBBF12),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    "4.5",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$743",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff5CABF3),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "/Month",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff8A909A),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff8A909A),
                          size: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Padamara, Jawa Tengah",
                            style: GoogleFonts.montserrat(
                              color: Color(0xff8A909A),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.bookmark_rounded,
                color: Color(0xff8A909A),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {
  String text;
  ItemMenuWidget({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
        color: Color(0xffEFF4FD),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/building.png',
            height: 22.0,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
