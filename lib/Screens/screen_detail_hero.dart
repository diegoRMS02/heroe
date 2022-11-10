import 'package:super_hero/Helpers/exportsClass.dart';

class ScreenDetailHero extends StatelessWidget {
  const ScreenDetailHero({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListView> power = [];

    final hereoRecibido =
        ModalRoute.of(context)?.settings.arguments as HeroFinal;
    final imgHeroe = hereoRecibido.images!.imgMD;
    final nameHero = hereoRecibido.name!;
    final idHero = hereoRecibido.id!;
    final heroSlug = hereoRecibido.slug!;
    final powerHero = hereoRecibido.powerstats!;
    final appearaceHero = hereoRecibido.appearance;
    final bioHero = hereoRecibido.biography;
    final workHero = hereoRecibido.work;
    print(hereoRecibido.work?.occupation);

    return Scaffold(
        appBar: AppBar(
          title: Text(hereoRecibido.name.toString()),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text(
                nameHero,
                textAlign: TextAlign.center,
                selectionColor: Colors.red,
              ),
            ),
            const ListTile(
              title: Text("Appearance"),
              textColor: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(heroSlug),
                  Text("Gender = ${appearaceHero!.gender}"),
                  Text("Race = ${appearaceHero.race}"),
                  Text("Height = ${appearaceHero.height}"),
                  Text("Weight = ${appearaceHero.weight}"),
                  Text("Eye color = ${appearaceHero.eyeColor}"),
                  Text("hair color = ${appearaceHero.hairColor}"),
                ],
              ),
            ),
            const ListTile(
              title: Text("PowerStats"),
              textColor: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Intelligence = ${powerHero!.intelligence}"),
                  Text("Strength = ${powerHero!.strength}"),
                  Text("Speed = ${powerHero!.speed}"),
                  Text("Durability = ${powerHero!.durability}"),
                  Text("Power = ${powerHero!.power}"),
                  Text("Combat = ${powerHero!.combat}"),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            const ListTile(
              title: Text("Biography"),
              textColor: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Full Name = ${bioHero!.fullName}"),
                  Text("Alter Ego = ${bioHero!.alterEgos}"),
                  Text("Aliases = ${bioHero.aliases}"),
                  Text("Place of Birth = ${bioHero!.placeOfBirth}"),
                  Text("First Appearance = ${bioHero!.firstAppearance}"),
                  Text("Publisher = ${bioHero!.publisher}"),
                  Text("Aligment = ${bioHero!.alignment}")
                ],
              ),
            ),
            const ListTile(
              title: Text("Work"),
              textColor: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ocuppation = ${workHero!.occupation}"),
                  Text("Base = ${workHero!.base}"),
                ],
              ),
            ),
            Container(
              height: 150,
              width: 10,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: FadeInImage(
                repeat: ImageRepeat.repeatY,
                image: NetworkImage(imgHeroe!),
                height: 200,
                width: 150,
                placeholder: const AssetImage("images/SpinnerImg.gif"),
              ),
            ),
          ],
        ));
  }
}
