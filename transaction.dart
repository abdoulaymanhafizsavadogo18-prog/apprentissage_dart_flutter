class Transaction{
    //Déclaration des attributs
    final String libelle;
    final double montant;
    final String categorie;
    final String type;

    //constructeur

    Transaction({
        required this.libelle,
        required this.montant,
        required this.categorie,
        required this.type,
    });

    //Création des methodes
    bool estUneDepense(){
        return type == 'depense';
        

        

    }
    void afficherDetails(){
        print('libelle: $libelle');
        print('montant : $montant MAD');
        print('categorie : $categorie');
        print('type : $type');

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