//
//  ViewController.swift
//  LoginDemoUI
//
//  Created by Kenyi Rodriguez on 10/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var cnsVerticalContent: NSLayoutConstraint!
    
    @IBAction func tapToCloseKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func clickBtnLogin(_ sender: Any) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.registerKeyboardNotification()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.unregisterKeyboardNotification()
    }
}


//MARK: - Keyboard Events
/*
    Keyboard will show
    Keyboard did  show
    Keyboard will hide
    Keyboard did  hide
 
 */
extension ViewController {
 
    func registerKeyboardNotification() {
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboardWillShow(_:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboardWillHide(_:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    func unregisterKeyboardNotification() {
        
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        
        let keyboardAnimationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
        
        let finalPosYViewContent = self.viewContent.frame.origin.y + self.viewContent.frame.height
        
        if finalPosYViewContent > keyboardFrame.origin.y {
        
            UIView.animate(withDuration: keyboardAnimationDuration) {
                self.cnsVerticalContent.constant = keyboardFrame.origin.y - finalPosYViewContent
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        
        let keyboardAnimationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        
        UIView.animate(withDuration: keyboardAnimationDuration) {
            self.cnsVerticalContent.constant = 0
            self.view.layoutIfNeeded()
        }
    }
}
