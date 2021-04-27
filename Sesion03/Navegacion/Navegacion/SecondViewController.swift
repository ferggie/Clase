//
//  SecondViewController.swift
//  Navegacion
//
//  Created by Kenyi Rodriguez on 26/04/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func clickBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
