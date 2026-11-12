class Transaction{
    //Déclaration des attributs
    final String _libelle;
    double _montant;
    final String _categorie;
    final String _type;

    //constructeur

    Transaction({
        required String libelle,
        required double montant,
        required String categorie,
        required String type,
        
    }):
    _libelle =libelle,
    _montant = montant>0 ? montant : throw ArgumentError('Montant invalide'),
    _categorie = categorie,
    _type=type;


    double get montant{
        return _montant;

    }

    String get libelle{
        return _libelle;

    }

    String get categorie{
        return _categorie;

    }

    String get type{
        return _type;

    }

    set montant(double new_montant){
        if (new_montant >0){
            _montant = new_montant;

        }
        else {
            throw ArgumentError('Le montant doit être positif');

        }
        
    }



    //Création des methodes
    bool estUneDepense(){
        return _type == 'depense';
        

        

    }
    void afficherDetails(){
        print('libelle: $_libelle');
        print('montant : $montant MAD');
        print('categorie : $_categorie');
        print('type : $_type');

    }
}

void main(){
    final revenu = Transaction(libelle: 'Mon salaire', montant: 8500, categorie: 'salaire', type: 'revenu');

    final depense = Transaction(libelle: 'Mes depenses', montant: 300, categorie: 'Alimentation', type: 'depense');

    revenu.afficherDetails();
    depense.afficherDetails();
    print(revenu.estUneDepense());
    print(depense.estUneDepense());
}