//
//  NextViewController.swift
//  day12UserDefault
//
//  Created by Felix-ITS016 on 03/12/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        labelText.text = UserDefaults.standard.value(forKey: "Vidya") as? String
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
