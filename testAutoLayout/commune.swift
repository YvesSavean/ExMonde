//
//  commune.swift
//  testAutoLayout
//
//  Created by Savean on 09/10/2014.
//  Copyright (c) 2014 Savean. All rights reserved.
//

import Foundation

class Commune: Ville {
    
    var chat: Int? = nil
    
    init(nb: Int, nbMaison: Int, nomMaire: String,nbChat : Int){
        super.init(nb: nb, nbMaison: nbMaison,nomMaire: nomMaire)
        chat=nbChat
    }
    
    func getChat()->Int{
        return chat!
    }
    
    func setChat(nb : Int){
        chat = nb
    }
}