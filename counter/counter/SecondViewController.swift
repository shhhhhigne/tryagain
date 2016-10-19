//
//  SecondViewController.swift
//  counter
//
//  Created by Signe Henderson on 10/14/16.
//  Copyright © 2016 Signe Henderson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var blueRect: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloWorldLabel.text = "hello world!"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

class blueElements: SecondViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueRect.backgroundColor = UIColor.blue
        print("HIIIII")
    }
    func testFunc() {
        
    }
}
