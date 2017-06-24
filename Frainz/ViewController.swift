//
//  ViewController.swift
//  Frainz
//
//  Created by Abishek on 6/21/17.
//  Copyright © 2017 Abishek. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet var hashtag: UITextField!
    @IBOutlet var plainView: UIView!
    //MARK: Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func searchbuttonclick(_ sender: Any) {
        self.performSegue(withIdentifier: "timelineview", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get reference to the destination view controller
        let detailVC  = segue.destination as? ListTimeLineViewController
        // Set the property to the selected location so when the view for
        // detail view controller loads, it can access that property to get the feeditem obj
        detailVC?.hashtag = hashtag.text
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

