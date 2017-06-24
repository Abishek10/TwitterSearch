//
//  ListTimeLineViewController.swift
//  Frainz
//
//  Created by Abishek on 6/21/17.
//  Copyright © 2017 Abishek. All rights reserved.
//

import UIKit
import TwitterKit

class ListTimeLineViewController: TWTRTimelineViewController {

    //MARK: Property
    
    var hashtag: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataSource = TWTRSearchTimelineDataSource(searchQuery: hashtag,apiClient: TWTRAPIClient())
        dataSource.resultType = "recent"
        self.dataSource = dataSource
        // Show Tweet actions
        self.showTweetActions = true
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
