//
//  ChairTableViewController.swift
//  DesignBuild_01
//
//  Created by Mads Janner Pedersen on 25/03/2020.
//  Copyright © 2020 Mads Janner Pedersen. All rights reserved.
//

import UIKit

class ChairTableViewController: UITableViewController {

    var pens = [Pens]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillPens()

    }
    
    func fillPens() {
        let samplePens = [Pens(name: "epipen", manufactorer: "ALKJ", image: UIImage( named: "EpiPen")),
                          Pens(name: "Glucagon", manufactorer: "Dia", image: UIImage( named:"GlucagonPen"))]
        
        pens = samplePens.compactMap{$0}
        sortPens()
    }
    func sortPens() {
        pens.sort { (pen1, pen2) -> Bool in
            if pen1.manufactorer != pen2.manufactorer {
                return pen1.manufactorer < pen2.manufactorer
            }
            else {
                return pen1.name < pen2.name
            }
        }
    }
    
    // MARK: - Table view data source

        override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pens.count
    }

    
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "epiCell", for: indexPath)

        // Configure the cell...
        let pen = pens[indexPath.row]
        cell.textLabel?.text = pen.name
        cell.detailTextLabel?.text = pen.manufactorer
        cell.imageView?.image = pen.image
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
