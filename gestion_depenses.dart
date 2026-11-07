void main(){
    final depenses = <double>[120.0, 45.5, 300.0, 80.0];

print(depenses);

double total =0;
 
for (final s in depenses){
    total += s;
}
print("montant total :$total");
print("Nombre de dépenses : ${depenses.length}");


int nombreDepensesElevees = 0;
for (final s in depenses){
    if (s >100){
        nombreDepensesElevees++;
    }
}print(nombreDepensesElevees);

depenses.add(50);
print(depenses);
}