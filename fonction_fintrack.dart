 final depenses = <double>[120.0,45.5,300.0,88.0];
 final revenus = <double>[2000.0,3500.0,1500.0];

 double calculerTotal(List<double> depenses){
    double total = 0;
    for (final montant in depenses){
        total +=montant;
    }
   return total;
 }

 double calculerSolde(double revenus, double depenses){
    return revenus - depenses;
 }

 String analyserSituation(double solde){
    if (solde>0){return "situation positive";}
    else if (solde ==0){return"Equilibre financier";}
    else {return"deficit financier";}
 }

 int compterDepensesElevees(List<double> depenses){
    int nombredepense = 0;
    for (final s in depenses){
        if (s>100){nombredepense++;}
    }
    return nombredepense;
 } 
 

 void main(){
    double totaldepenses = calculerTotal(depenses);
    print("totaldepensest :$totaldepenses");

    double totalrevenus = calculerTotal(revenus);
    print("totalrevenus :$totalrevenus");

    double solde = calculerSolde(totalrevenus,totaldepenses);
    print("solde : $solde");

    String analyse = analyserSituation(solde);
    print("analyse:$analyse");

    int nombrededepense = compterDepensesElevees(depenses);
    print("nombrededepense :$nombrededepense");
 }

 

 