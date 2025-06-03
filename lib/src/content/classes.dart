import '../engine.dart';
import 'item/drops.dart';
import 'skill/discipline/mastery.dart';
import 'skill/skills.dart';
import 'skill/spell/spell.dart';

class Classes {
  static final adventurer = _class("Adventurer", parseDrop("item"),
      masteries: 0.5,
      spells: 0.2,
      description:
          "Adventurers are the jack of all trades. ");

  static final warrior = _class("Warrior", parseDrop("weapon"),
      masteries: 1.0,
      spells: 0.0,
      description: "Warriors don't cast spells, but their martial training gives "
          "them a more physical presence on the battlefield. ");

  static final mage = _class(
      "Mage", parseDrop("Spellbook \"Elemental Primer\""),
      masteries: 0.2,
      spells: 1.0,
      description:
          "Mages cast spells, but aren't well suited for physical combat.");
  static final List<HeroClass> all = [adventurer, warrior, mage];
}

HeroClass _class(String name, Drop startingItems,
    {required double masteries,
    required double spells,
    required String description}) {
  var proficiencies = <Skill, double>{};

  for (var skill in Skills.all) {
    var proficiency = 1.0;
    if (skill is MasteryDiscipline) proficiency *= masteries;
    if (skill is Spell) proficiency *= spells;

    proficiencies[skill] = proficiency;
  }

  return HeroClass(name, description, proficiencies, startingItems);
}
