enum TypeTransaction{
    revenu,
    depense
}

class Transaction {
    String libelle;
    double montant;
    String categorie;
    TypeTransaction type;


    Transaction({
    required  this.libelle,
    required  this.montant,
    required  this.categorie,
    required  this.type,
    });

    factory Transaction.depuisType({

    
    required String libelle,
    required double montant,
    required String categorie,
    required String type ,
    }){
        final typeNormal = type.trim().toLowerCase(); //trim() supprime les espaces de debut et de fin
        if (typeNormal == 'revenu'){
            return Transaction(libelle: libelle, montant: montant, categorie: categorie, type: TypeTransaction.revenu);
        }

        if (typeNormal == 'depense'){
            return Transaction(libelle: libelle, montant: montant, categorie: categorie, type: TypeTransaction.depense);
        }

        throw FormatException('Type inconnu');
    }

    void afficherDetails() {
  print('Libellé : $libelle');
  print('Montant : $montant MAD');
  print('Catégorie : $categorie');
  print('Type : ${type.name}');
}

}



void main(){
    final transactionSalaire = Transaction.depuisType(libelle: 'salaire', montant: 8500, categorie: 'Travail', type:'revenu');

    final transactionCourses = Transaction.depuisType(libelle: 'courses', montant: 250, categorie: 'Alimentation', type:'depense');

    final transactionFreelance = Transaction.depuisType(libelle: 'Freelance', montant: 1500, categorie: 'Travail', type:'revenu');

    
    
    transactionSalaire.afficherDetails();
    transactionCourses.afficherDetails();
    transactionFreelance.afficherDetails();
    
    try{
        final transactionTransfert = Transaction.depuisType(libelle: 'Freelance', montant: 1500, categorie: 'Travail', type:'transfert');
        transactionTransfert.afficherDetails();

    } on FormatException catch(e){
        print('erreur :${e.message}');
    }
}