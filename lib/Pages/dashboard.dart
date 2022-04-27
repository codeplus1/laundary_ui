import 'package:flutter/material.dart';
import 'package:laundary_ui/widgets/drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      extendBodyBehindAppBar: true,
      drawer: myDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 40,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 29,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: NetworkImage(
                              'https://scontent.fktm9-2.fna.fbcdn.net/v/t39.30808-6/251043067_424923542571580_7402382691307409237_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=wRSZVa2W1lMAX8dEcFf&_nc_ht=scontent.fktm9-2.fna&oh=00_AT8z4OmqxIofMetWuMsoQf2mLT7SvXjNeJxBTbHz7rpyMA&oe=626F3B49'),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Saroj Yadav',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          ),
                          Text(
                            'BCA Student',
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                //! my balance container code
                Positioned(
                  left: 30,
                  right: 30,
                  top: 135,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 70,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(3, 3))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "My Balance: ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: "\$1000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Blood_drop.svg/800px-Blood_drop.svg.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Drop-off",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://www.saloodo.com/wp-content/uploads/2021/09/straight-truck-1-1.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Pick up",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://uploads-ssl.webflow.com/5c14e387dab576fe667689cf/5f76d7cb690e57c164388d32_Artboard%208.png'),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Shop",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://images.squarespace-cdn.com/content/v1/5606cd9ae4b0c1038377e239/1610910910782-5K4PAFSELFSVVPXMDWAT/Il+Bussetto+%7C+men%27s+snap+square+bifold+leather+wallet+with+coin+pouch+%7C+Ouvert+2+%7C+11-057.png?format=1000w'),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Top up",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: ListTile(
                title: const Text(
                  "Explore OLLO Life",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dense: true,
                subtitle: const Text(
                  "Discover more things and Grab Offers",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  height: 40,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.purple,
                      ],
                    ),
                  ),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.transparent,
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                image: NetworkImage(
                                    'https://www.suss.edu.sg/images/default-source/default-album/cel_t-shirt_front.png?sfvrsn=880238bf_0'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                      const Text(
                        "EveryDay Wear",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                  image: NetworkImage(
                                      'https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPUS-PEPPER-NEASHA322624B7835732/1563042168624_0..png'))),
                        ),
                      ),
                      const Text(
                        "T-Shirts",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                image: NetworkImage(
                                    'https://5.imimg.com/data5/SELLER/Default/2021/5/VA/YS/FN/1943367/ba-mon-04-500x500.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Text(
                        "Purses",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Image(
                                  image: NetworkImage(
                                      'https://www.footjoy.com/dw/image/v2/AAZW_PRD/on/demandware.static/-/Sites-footjoy-master/default/dw32139b6e/FJ_24194_02.png?sw=650&sh=650&sm=fit&sfrm=png'))),
                        ),
                      ),
                      const Text(
                        "Pants",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // !!Active Order Code start
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
              child: ListTile(
                title: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Active Orders",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: "(2)",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                dense: true,
                trailing: Container(
                  height: 40,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.purple,
                      ],
                    ),
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.transparent,
                    onPressed: () {},
                    child: const Text(
                      "Order History",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // !!Active Order Code End

            //Order number1 card Code start
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: SizedBox(
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 24,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.monetization_on),

                            // child: ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Order No. :#25644778",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "Order : Confirmed",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Order number2 card Code start
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: SizedBox(
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 24,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.monetization_on),

                            // child: ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Order No. :#25644778",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "Order : Pending",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //!promo code start
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: ListTile(
                title: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Promo",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 80),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width - 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwZIP6ejj9MZFxNoI0ezRsMm5a3omqEqzzAA&usqp=CAU'),
                                radius: 22,
                                backgroundColor: Colors.indigo,

                                // child: ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Get 20% off",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Jeans,Long Dress",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width - 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRWQqoo0tCQ9fbT7YmJnDPvxgHEhwVy00j_A&usqp=CAU'),
                                radius: 22,
                                backgroundColor: Colors.indigo,

                                // child: ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Get 30% off",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "pant,Long Dress",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width - 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://3.imimg.com/data3/OI/OJ/MY-8728688/coat-500x500.jpg"),
                                radius: 22,
                                backgroundColor: Colors.indigo,

                                // child: ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Get 20% off",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Coat,Long Dress",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
