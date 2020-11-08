//
//  Scene1ViewController.swift
//  TTB
//
//  Created by Tracy Wei on 11/7/20.
//  Copyright © 2020 TracyWei. All rights reserved.
//

import UIKit

class Scene1ViewController: UIViewController {

    var counter1: Int?
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // yes is correct, no is wrong
    
    @IBAction func yesButton(_ sender: Any) {
        counter1! += 1
        yesButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func noButton(_ sender: Any) {
        noButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        performSegue(withIdentifier: "movetoScene2", sender: self)  // make sure to create a present modally (control drag from the next/check button to the next screen), movetoScene2 is the name of the segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movetoScene2" {
            let controller = segue.destination as! Scene2ViewController // make sure to rename to your current view controller name
            controller.counter2 = self.counter1!
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
