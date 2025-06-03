import '../engine.dart';

class Races {
  static final dwarf = _race("Dwarf",
      strength: 35,
      agility: 25,
      fortitude: 45,
      intellect: 20,
      will: 35,
      description:
          "Dwarves are uncomfortable in sunlight and prefer to live underground. "
          "They are unmatched metalworkers and miners. They tend to be stronger "
          "than humans, pound for pound, but when it comes to battle, they are "
          "most feared for their incredible constitutions.");
  static final elf = _race("Elf",
      strength: 25,
      agility: 40,
      fortitude: 20,
      intellect: 35,
      will: 25,
      description:
          "Elves are typically taller and more slender than humans, which makes  "
          "them more agile but not as strong or hardy. Preferring to live among  "
          "the trees, they also tend to be slightly more intelligent than humans. ");
  static final gnome = _race("Halfling",
      strength: 20,
      agility: 45,
      fortitude: 35,
      intellect: 25,
      will: 40,
      description:
          "Halflings are similar in stature to dwarves, though smaller in girth."
          "They are capable of being extremely quiet, which, combined with their "
          "cat-like agility, makes them an excellent choice as thieves or rogues."
          "Although halflings avoid war almost to the point of pacifism, they "
          "can be fierce in battle, when angered.");

  static final human = _race("Human",
      strength: 30,
      agility: 30,
      fortitude: 30,
      intellect: 30,
      will: 30,
      description:
          "Humans, being by far the most numerous of the races, are the "
          "benchmark against which other races are compared.");

  /// All of the known races.
  static final List<Race> all = [
    dwarf,
    elf,
    gnome,
    human,
  ];

  static Race _race(String name,
      {required int strength,
      required int agility,
      required int fortitude,
      required int intellect,
      required int will,
      required String description}) {
    return Race(name, description, {
      Stat.strength: strength,
      Stat.agility: agility,
      Stat.fortitude: fortitude,
      Stat.intellect: intellect,
      Stat.will: will,
    });
  }
}
