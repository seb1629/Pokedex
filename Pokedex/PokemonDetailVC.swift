//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by SEBASTIEN MONTIBELLER on 14/03/2016.
//  Copyright © 2016 SEBASTIEN MONTIBELLER. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var pokelbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokelbl.text = pokemon.name

    }

 

 
}
