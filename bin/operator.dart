void main() {
  // Creating an instance of the Animal class
  Animal animal1 = Animal("Cat", 5);
  Animal animal2 = Animal("Cat", 3);

  Animal totalSpecies = animal1 + animal2; // Using the operator overload.

  print(
    "Total spesies ${totalSpecies.species} = ${totalSpecies.quantity}",
  ); // Output: Total Cat = 8
}

// Method operator for the class animal
class Animal {
  String species;
  int quantity;

  Animal(this.species, this.quantity);

  // Method Operator
  Animal operator +(Animal other) {
    if (species == other.species) {
      return Animal(species, quantity + other.quantity);
    } else {
      throw Exception("Cannot add different species of animals.");
    }
  }
}
