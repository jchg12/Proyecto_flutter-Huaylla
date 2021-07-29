import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TarjetasPage extends StatelessWidget {
  List<String> images = [
    "https://picsum.photos/350",
    "https://img.ecologiahoy.com/2017/06/paisajes-naturales-26-1024x640.jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAcQnV8iR73Yl8bU6od8eBzud6eA96XgKAg6EOPVsBVRhmUyY4MdTEpiq4ryASnhNiguM&usqp=CAU",
    "https://laderasur.com/content/uploads/2017/02/OP1A0670Nahuelbuta.Andel_.Paulmann.jpg",
    "https://fondosmil.com/fondo/13048.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _carTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _carTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Descripcion'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              TextButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _carTipo2() {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );

    /*  return Card(
      child: Column(
        children: [
          Image.network("https://picsum.photos/350"),

          /* FadeInImage(
            placeholder: AssetImage(
                'assets/jar-Android Emulator - Pixel_API_28_5554 01_06_2021 19_34_45.png'),
            image: NetworkImage(
              'https://img.ecologiahoy.com/2017/06/paisajes-naturales-26-1024x640.jpeg',
            ),
          ), */
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Descripcion de la imagen')),
        ],
      ),
    ); */
  }
}
