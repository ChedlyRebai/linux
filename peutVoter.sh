
voter(){
    nom=$1
    age=$2
    if [ $age -ge 18 ]; then
        echo "$nom peut voter"
    else
        echo "$nom ne peut pas voter"
    fi
}

read -p "Nom:" nom
read -p "Age:" age

voter $nom $age