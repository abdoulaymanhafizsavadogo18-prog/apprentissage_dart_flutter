void main(){
    final depenses = <double>[120.0,45.5,300.0,80.0,150.0,25.0,500.0];

depenses.forEach((montant){
    print("Depenses : $montant MAD");
});

final depensesElevees = depenses.where((montant)=> montant>100);
final result = depensesElevees.toList();
print("resultat : $result");

print(result.length);

bool estDepensEelevee(double montant)=> montant>100;
print(estDepensEelevee(150));
print(estDepensEelevee(45.5));
}