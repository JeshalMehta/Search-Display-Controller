//
//  ViewController.swift
//  Search Display Controller
//
//  Created by Jeshal Mehta on 01/08/16.
//  Copyright © 2016 Jeshal Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var friendsArray = [FriendItem] ()
    var filteredFriends = [FriendItem]()
    
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        self.friendsArray += [FriendItem(name: "Amravati")]
        self.friendsArray += [FriendItem(name: "Akola")]
        self.friendsArray += [FriendItem(name: "Banglore")]
        self.friendsArray += [FriendItem(name: "Bombay")]
        self.friendsArray += [FriendItem(name: "Bhubhneshwar")]
        self.friendsArray += [FriendItem(name: "Chennai")]
        self.friendsArray += [FriendItem(name: "Delhi")]
        self.friendsArray += [FriendItem(name: "Dehradun")]
        self.friendsArray += [FriendItem(name: "Jamshedpur")]
        self.friendsArray += [FriendItem(name: "Jaipur")]
        self.friendsArray += [FriendItem(name: "Jhansi")]
        self.friendsArray += [FriendItem(name: "Jabalpur")]
        self.friendsArray += [FriendItem(name: "Kota")]
        self.friendsArray += [FriendItem(name: "Kolkata")]
        self.friendsArray += [FriendItem(name: "Kanpur")]
        self.friendsArray += [FriendItem(name: "Lucknow")]
        self.friendsArray += [FriendItem(name: "Mumbai")]
        self.friendsArray += [FriendItem(name: "Nagpur")]
        self.friendsArray += [FriendItem(name: "Ooty")]
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MArk - table view
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        if (tableView == self.searchDisplayController?.searchResultsTableView)
        {
            return self.filteredFriends.count
        }
        else
        {
             return self.friendsArray.count
        }
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
 
        var friend : FriendItem
        if(tableView == self.searchDisplayController?.searchResultsTableView)
        {
            friend = self.filteredFriends[indexPath.row]
        }
        else
        {
            friend = self.friendsArray[indexPath.row]
        }
        
        cell.textLabel?.text
        return cell
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        tableView.deselectRowAtIndexPath(NSIndexPath, animated: true)
    
    
        var friend : FriendItem
        
        if(tableView == searchDisplayController?.searchResultsTableView)
        {
            friend = self.filteredFriends[indexPath.row]
            
        }
            
        else
        {
            friend = self.friendsArray[indexPath.row]
        }
        
        print(friend.name)

      }
    
    // Mark - search
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}