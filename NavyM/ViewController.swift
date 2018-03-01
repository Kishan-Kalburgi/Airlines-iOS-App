//
//  ViewController.swift
//  NavyM
//
//  Created by Agrawal,Abhijeet P on 2/27/18.
//  Copyright © 2018 Agrawal,Abhijeet P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var homebaseTF: UITextField!
    
    @IBOutlet weak var citiesFlownTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "addAirline"{
        let name = nameTF.text!
        let base = homebaseTF.text!
        let cities = citiesFlownTF.text!
        let allcities = cities.components(separatedBy: ",")
        let airline = Airline(name: name, profits: 10.5, homebase: base, numEmployees: 15, citiesFlown: allcities)
        FAA.addNewAirline(airline)
        }
        if segue.identifier == "cancelAirline" {
            //Do nothing
        }
    }
    
}

