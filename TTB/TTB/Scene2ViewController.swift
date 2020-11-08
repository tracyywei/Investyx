//
//  Scene2ViewController.swift
//  TTB
//
//  Created by Tracy Wei on 11/7/20.
//  Copyright © 2020 TracyWei. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController {

    var counter2: Int?
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(counter2!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yesButton(_ sender: Any) {
        counter2! += 1
        yesButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func noButton(_ sender: Any) {
        noButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        performSegue(withIdentifier: "movetoCongrats", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movetoCongrats" {
            let controller = segue.destination as! CongratsViewController
            controller.counter = self.counter2!
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
}
