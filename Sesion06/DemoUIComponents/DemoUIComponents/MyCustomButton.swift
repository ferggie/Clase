//
//  MyCustomButton.swift
//  DemoUIComponents
//
//  Created by Kenyi Rodriguez on 17/05/21.
//

import UIKit

@IBDesignable class MyCustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        //Cada vez que se pinta la vista previo cambio fuerte en UI
        
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemBlue.cgColor
        self.layer.cornerRadius = 8
        
        self.layer.shadowColor = UIColor.red.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 6
        self.layer.shadowOpacity = 1
    
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        self.setTitleColor(.black, for: .normal)
        
        self.addTarget(self, action: #selector(self.touchDown), for: .touchDown)
        self.addTarget(self, action: #selector(self.touchUpInside), for: .touchUpInside)
        self.addTarget(self, action: #selector(self.touchUpInside), for: .touchCancel)
        self.addTarget(self, action: #selector(self.touchUpInside), for: .touchDragExit)
        
        print("draw")
    }
    
    @objc private func touchDown() {
        self.backgroundColor = .darkGray
    }
    
    @objc private func touchUpInside() {
        self.backgroundColor = .clear
    }
       
    override func awakeFromNib() {
        super.awakeFromNib()
        //Se ejecuta cuando la vista necesita pintar su layout desde Storyboard
        print("awakeFromNib")
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        //Se ejecuta cuando la vista intenta refrescar su contenido en el Storyboard
        print("awakeFromNib")
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        //Se ejecuta cuando la vista tiene un cambio en sus layer (animación de canvas)
        print("setNeedsLayout")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //Se ejecuta cuando la vista esta agregando a sus hijos
        print("layoutSubviews")
    }
}
