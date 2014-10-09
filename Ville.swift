//
//  Ville.swift
//  testAutoLayout
//
//  Created by Savean on 09/10/2014.
//  Copyright (c) 2014 Savean. All rights reserved.
//

import Foundation

class Ville {
    
    var people = 0
    var maison :Int? = nil
    var maire : String? = nil
    
    init(nb :Int ){
        people = nb
    }
    
    init(nb :Int, nbMaison :Int ){
        people = nb
        maison = nbMaison
    }
    
    init(nb :Int, nbMaison :Int , nomMaire : String ){
        people = nb
        maison = nbMaison
        maire = nomMaire
    }
    
    func getPeople()->Int{
        return people
    }
    
    func setPeople(nb :Int){
        people = nb
    }
    
    func getMaison()->Int{
        return maison!
    }
    
    func setMaison(nb :Int){
        maison = nb
    }
    
    func getMaire()->String{
        return maire!
    }
    
    func setMaire(nom :String){
        maire = nom
    }

    
    
    
}
