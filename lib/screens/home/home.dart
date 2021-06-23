import 'package:flutter/material.dart';
import 'package:projectfinal/models/hotel.dart';
import 'package:projectfinal/provider/hoteis.dart';
import 'package:projectfinal/style.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: azulEscuro,
        title: Center(
          child: Text(
            "Booking",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: ListView.builder(
          itemBuilder: builder,
          itemCount: listHoteis.length),
    );
  }

  Widget builder(BuildContext context, int index) {
    Hotel hotel = listHoteis.elementAt(index);
    return ListTile(
      title: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              children: [
                Image.asset(
                hotel.image,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.15,
                fit: BoxFit.cover,
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          hotel.name,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          hotel.pontuacao < 9.0?null:Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          hotel.pontuacao < 9.1?null:Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          hotel.pontuacao < 9.9?null:Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: azulEscuro,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 45,
                          height: 30,
                          child: Center(
                            child: Text(
                            hotel.pontuacao.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          )
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(
                              hotel.icon1 == "Ambiente\nclimatizado"?Icons.ac_unit:Icons.room_service,
                              size: 30,
                              ),
                            SizedBox(height: 5,),
                            Text(
                              hotel.icon1,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                        SizedBox(width: 40,),
                        Column(
                          children: [
                            Icon(
                              hotel.icon2 == "Refeições\ninclusas"?Icons.coffee:Icons.pool,
                              size: 30,
                              ),
                            SizedBox(height: 5,),
                            Text(
                              hotel.icon2,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                        SizedBox(width: 40,),
                        Column(
                          children: [
                            Icon(
                              hotel.icon3 == "Wi-fi\ngratuito"?Icons.wifi:hotel.icon3 == "Área de\nnatação"?Icons.pool:Icons.directions_bus,
                              size: 30,
                              ),
                            SizedBox(height: 5,),
                            Text(
                              hotel.icon3,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      hotel.description,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text(
                          "4 diária ",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        
                        Text("R\$ " + hotel.price,
                          style: TextStyle(
                            color: hotel.price == "1,780.00"?Colors.red:Colors.black,
                            fontSize: hotel.price == "1,780.00"?15:18,
                            decoration: hotel.price == "1,780.00"?TextDecoration.lineThrough:TextDecoration.none, 
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          hotel.price == "1,780.00"?"1456.00":"",
                          style: TextStyle(
                            fontSize: 24,
                            color: green,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: laranja,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.black,
                              )
                          ),
                          height: hotel.price == "1,780.00"?30:0,
                          width: 90,
                          child: Center(
                            child: Text(
                              hotel.price == "1,780.00"?"Só no APP":"",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
