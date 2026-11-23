class Transaction{
    //Déclaration des attributs
    final String _libelle;
    double _montant;
    final String _categorie;
    final  TypeTransaction _type;

    //constructeur

    Transaction({
        required String libelle,
        required double montant,
        required String categorie,
        required  TypeTransaction type,
        
    }):
    _libelle =libelle,
    _montant = montant>0 ? montant : throw ArgumentError('Montant invalide'),
    _categorie = categorie,
     _type= type;


    double get montant{
        return _montant;

    }

    String get libelle{
        return _libelle;

    }

    String get categorie{
        return _categorie;

    }

   TypeTransaction get type{
        return _type;

    }

    set montant(double newMontant){
        if (newMontant >0){
            _montant = newMontant;

        }
        else {
            throw ArgumentError('Le montant doit être positif');

        }
        
    }



    //Création des methodes
    bool estUneDepense(){
        return  _type == TypeTransaction.depense;
        

        

    }

    String obtenirLibelleType(){
        if (type == TypeTransaction.depense) {
            return'Cette transaction est une dépense';
        }
        else {
            return'cette transaction est un revenu';
        }
    }

    void afficherDetails(){
        print('libelle: $_libelle');
        print('montant : $montant MAD');
        print('categorie : $_categorie');
        print('type : $_type');
        print('type : ${obtenirLibelleType()}');

    }
}

enum TypeTransaction{
        revenu,
        depense
    }

  

void main(){
    final revenuSalaire = Transaction(libelle: 'salaire', montant: 8500, categorie: 'Travail', type: TypeTransaction.revenu);

    final depenseAlimentation = Transaction(libelle: 'courses', montant: 250, categorie: 'Alimentation', type: TypeTransaction.depense);

    
    final depenseTransport = Transaction(libelle: 'Transport', montant: 100, categorie: 'Deplacement', type: TypeTransaction.depense);

    final revenuFreelance = Transaction(libelle: 'freelance', montant: 1500, categorie: 'Travail', type: TypeTransaction.revenu);

    
    final depenseresto = Transaction(libelle: 'restaurant', montant: 180, categorie: 'Alimentation', type: TypeTransaction.depense);

      final revenuprime= Transaction(libelle: 'prime', montant: 500, categorie: 'Travail', type: TypeTransaction.revenu);



    final transaction = <Transaction>[revenuSalaire,depenseAlimentation,depenseTransport,revenuFreelance,depenseresto,revenuprime];

    final depenses = transaction.where((transaction)=>transaction.estUneDepense()).toList();
    
    depenses.forEach((transaction){transaction.afficherDetails();});

    final travail = transaction.where((transaction)=>transaction.categorie == 'Travail').toList();
    travail.forEach((transaction){transaction.afficherDetails();});

    final montants = transaction.map((transaction)=>transaction.montant).toList();
    print(montants);

    final totalrevenu = transaction.where((transaction)=>transaction.type == TypeTransaction.revenu).fold(
      0.0,(total,transaction)=>total + transaction.montant);
      print("total revenu :$totalrevenu");

    final totaldepense = transaction.where((transaction)=>transaction.estUneDepense()).fold(0.0,(totalDepense, transaction)=>totalDepense +transaction.montant);
     print("total depense : $totaldepense");

    final soldeDispo =totalrevenu - totaldepense ;
    print("solde disponible :$soldeDispo");

    final nombreAlimentation = transaction.where((transaction)=> transaction.categorie =='Alimentation').length;
    print("Transaction Alimentation: $nombreAlimentation");
      


    
}