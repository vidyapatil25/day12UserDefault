//
//  ViewController.swift
//  day12UserDefault
//
//  Created by Felix-ITS016 on 03/12/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func saveButton(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        defaults.set(saveText.text!, forKey: "Vidya")
    }
    
    @IBOutlet weak var saveText: UITextField!
    
    @IBAction func loadButton(_ sender: UIButton) {
        loadText.text = UserDefaults.standard.value(forKey: "Vidya") as? String
    }
    
    @IBOutlet weak var loadText: UITextField!
    
    @IBAction func nextButton(_ sender: UIButton) {
        let next = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        navigationController?.pushViewController(next, animated: true)
        performSegue(withIdentifier: "seg", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

