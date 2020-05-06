//
//  PenViewController.swift
//  TabbedDemo101
//
//  Created by Mads Janner Pedersen on 01/05/2020.
//  Copyright © 2020 Ian Bridgwood. All rights reserved.
//

import UIKit

class PenViewController: UIViewController {
    
    @IBOutlet weak var epiPen: UIButton!
    @IBOutlet weak var glucagonPen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    @IBAction func didTapButton() {
        let vc = storyboard?.instantiateViewController(identifier: "hjem") as! ThirdViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBAction func didTapButton1() {
        let vc1 = storyboard?.instantiateViewController(identifier: "hjem") as! ThirdViewController
        vc1.modalPresentationStyle = .fullScreen
        present(vc1, animated: true)
    }

}
