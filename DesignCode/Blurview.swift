//
//  Blurview.swift
//  DesignCode
//
//  Created by Eren  Çelik on 23.01.2021.
//

import SwiftUI

struct BlurView: UIViewRepresentable{
    
    var style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        
        //Dark Mode adaptive .systemMaterial
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<BlurView>) {
        
        
        
        
    }
}
