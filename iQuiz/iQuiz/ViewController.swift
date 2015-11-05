//
//  ViewController.swift
//  iQuiz
//
//  Created by Jooneil Ahn on 11/3/15.
//  Copyright © 2015 Jooneil Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let cellIdentifier = "quizCell"
    
    let quizzess = [
        ["Mathematics", "Test your math skills with this test", "math.png"],
        ["Marvel Super Heroes", "How much do you know about Marvel super heroes?", "marvel.png"],
        ["Science", "Check your knowledge of science", "science.png"]
    
    ]
    
    @IBOutlet weak var quizTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizzess.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
                as! quizCell
            let quiz = quizzess[indexPath.row]
            cell.cellTitle = quiz[0]
            cell.descript = quiz[1]
            cell.imageSource?.image = UIImage(named: quiz[2])
            return cell
    }
    
    @IBAction func settingsAlert(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Alert", message: "Settings go here", preferredStyle: UIAlertControllerStyle.Alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(ok);
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

