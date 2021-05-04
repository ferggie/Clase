//
//  HomeViewController.swift
//  Constraints
//
//  Created by Kenyi Rodriguez on 3/05/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var cnsAltura: NSLayoutConstraint!

    @IBAction func clickBtnModificar(_ sender: Any) {
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.8, options: [.curveEaseInOut]) {
            
            let random = CGFloat.random(in: 96...480)
            self.cnsAltura.constant = random
            self.view.layoutIfNeeded()
            
        } completion: { (_) in
            
            print("Terminó la animación")
        }

        
        
//        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseOut, .repeat, .autoreverse]) {
//
//            let random = CGFloat.random(in: 96...480)
//            self.cnsAltura.constant = random
//            self.view.layoutIfNeeded()
//
//        } completion: { (_) in
//
//            print("Terminó la animación")
//        }

        
        
//        Animar y termina la animación
//        UIView.animate(withDuration: 0.5) {
//
//            let random = CGFloat.random(in: 96...480)
//            self.cnsAltura.constant = random
//            self.view.layoutIfNeeded()
//
//        } completion: { (isSuccess) in
//            print("Terminó la animación")
//        }

        //Animación básica
//        UIView.animate(withDuration: 0.5) {
//            let random = CGFloat.random(in: 96...480)
//            self.cnsAltura.constant = random
//            self.view.layoutIfNeeded()
//        }
    }
}
