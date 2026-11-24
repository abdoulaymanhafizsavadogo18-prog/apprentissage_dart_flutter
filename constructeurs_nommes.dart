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


    //constructeur nommé

    Transaction.salaire()
    :this(
        libelle :'salaire',
        montant :1000.0,
        categorie :'Travail',
        type :TypeTransaction.revenu,
    );
        


    Transaction.depenseAlimentation():
        this(
        libelle :'courses',
        montant :250.0,
        categorie :'Alimentation',
        type :TypeTransaction.depense,
        );

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
    final transaction1 = Transaction(libelle: 'salaire', montant: 200, categorie: 'Travail', type: TypeTransaction.revenu);

    final transaction2  = Transaction.salaire();

    final transaction3 = Transaction.depenseAlimentation();

    transaction1.afficherDetails();
    transaction2.afficherDetails();
    transaction3.afficherDetails();
      


    
}