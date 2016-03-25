//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by SEBASTIEN MONTIBELLER on 14/03/2016.
//  Copyright © 2016 SEBASTIEN MONTIBELLER. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var pokelbl: UILabel!
    @IBOutlet weak var weighLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    
     var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokelbl.text = pokemon.name
        let img = UIImage(named: "\(pokemon.pokedex)")
        mainImg.image = img
        currentEvoImg.image = img
        pokemon.downloadPokemonDetails { () -> () in
       // this will be code after download is done
            self.updateUI()
        }
    }

    func updateUI() {
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        pokedexLbl.text = "\(pokemon.pokedex)"
        weighLbl.text = pokemon.weight
        attackLbl.text = pokemon.attack
        
        
        if pokemon.nextEvolutionId == "" {
            evoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
             nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution:\(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLvl != "" {
                str += " - LVL \(pokemon.nextEvolutionLvl)"
            }
        }
       
        
            
        
    }
 
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

 
}
