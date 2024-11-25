import 'package:caffe/screen/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class productDetail extends StatefulWidget {
  const productDetail({super.key});

  @override
  State<productDetail> createState() => _productDetailState();
}

class _productDetailState extends State<productDetail> {
  Widget item(String text) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.amber.shade900],
        ),
      ),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }

  List<Container> product(int count) {
    return List.generate(
      count,
      (index) => Container(
        child: Image.network(
          "https://www.google.com/imgres?q=cafe&imgurl=https%3A%2F%2Fimages.deliveryhero.io%2Fimage%2Ffd-la%2FLH%2Fyt9r-listing.jpg&imgrefurl=https%3A%2F%2Fwww.foodpanda.la%2Frestaurant%2Fyt9r%2Fhan-cafe-da&docid=9cYMnfUlb8titM&tbnid=CIZQ55bScLK_AM&vet=12ahUKEwjQ48jTjNOJAxVmRmcHHWnPCNwQM3oECE4QAA..i&w=4000&h=2925&hcb=2&ved=2ahUKEwjQ48jTjNOJAxVmRmcHHWnPCNwQM3oECE4QAA",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ຊອກຫາກາເຟທີ່ດີທີ່ສຸດ\nສຳລັບທ່ານ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 55,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(31, 114, 114, 114),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  borderSide: BorderSide.none,
                ),
                hintText: 'ຄົ້ນຫາ ກາເຟ',
                prefixIcon: Icon(
                  Icons.search,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    backgroundColor: Colors.amber[900],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.all(2),
              ),
            ),
          ),
          Text(
            'ປະເພດ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: categories.map(
                    (category) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: item(category),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
          Container(
            child: GridView.count(
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
