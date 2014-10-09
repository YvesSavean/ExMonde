//
//  ViewController.swift
//  testAutoLayout
//
//  Created by Savean on 09/10/2014.
//  Copyright (c) 2014 Savean. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var txtViewNomVille: UITextView!
    @IBOutlet var txtViewNbChat: UITextView!
    @IBOutlet var txtViewNbHabitant: UITextView!
    @IBOutlet var lblResultat: UILabel!
    @IBOutlet var TableCreer: UITableView!
    var tableauPays : [Ville] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableauPays.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        cell.textLabel!.text = "\(tableauPays[indexPath.row].getPeople())"
        cell.detailTextLabel!.text = "\(tableauPays[indexPath.row].getMaire())"

        
        return cell
    }

    @IBAction func AjouterVille(sender: UIButton) {
        //valeur initiale d'un textView vide n'est pas = à nil mais ""
        if txtViewNbChat.text == "" {
            var nouvelleVille = Ville(nb: txtViewNbHabitant.text.toInt()!,nbMaison: txtViewNbHabitant.text.toInt()!,nomMaire: txtViewNomVille.text)
            lblResultat.text = "nouvelle ville créer"
            self.TableCreer!.reloadData()
        }else{
            var nouvelleCommuune = Commune(nb: txtViewNbHabitant.text.toInt()!, nbMaison: txtViewNbHabitant.text.toInt()!, nomMaire: txtViewNomVille.text, nbChat: txtViewNbChat.text.toInt()!)
            lblResultat.text = "nouvelle commune créer"
            self.TableCreer!.reloadData()
            
        }
    }

}

