//
//  Pokemon.swift
//  Pokedex
//
//  Created by SEBASTIEN MONTIBELLER on 13/03/2016.
//  Copyright © 2016 SEBASTIEN MONTIBELLER. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexID: Int!
    
    var name: String {
        return _name
    }
    
    var pokedex: Int {
        return _pokedexID
    }
    
    init(name: String, pokedex: Int){
        self._name = name
        self._pokedexID = pokedex
    }
}