import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .75,
                  height: 250,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network('https://d1ralsognjng37.cloudfront.net/842d8591-c8fc-4a20-baa1-15a2852aaddf.jpeg',
                        fit: BoxFit.cover,
                      ))),
              Positioned(
                  top: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))
                    ),
                    child: const Text('Top Restaurant'),
                  )),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Text('15mn'),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          SizedBox(
            width: MediaQuery.of(context).size.width * .75,
            child: const Text('Tube cafe TK Samai Square',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 1),
          ),
          const Text('Category '),
          const Text('\$\$ 0.68'),
        ],
      ),
    );
  }
}


