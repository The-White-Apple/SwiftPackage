//
//  File.swift
//  
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 13/04/22.
//

import UIKit

public class ViewCodeComponent : UIView{
    let titleLabel: UILabel = {
        let component = UILabel()
        component.text = "Titulo"
        component.font = UIFont.boldSystemFont(ofSize: 36)
        component.adjustsFontSizeToFitWidth = true
        component.textAlignment = .center
        component.translatesAutoresizingMaskIntoConstraints = false
        return component
    } ()
    
    let imageView: UIImageView = {
        let component = UIImageView()
        component.image = UIImage(systemName: "pencil")
        component.contentMode = .scaleAspectFit
        component.translatesAutoresizingMaskIntoConstraints = false
        return component
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        buildLayout()
    }
    
    func buildLayout(){
        self.addSubview(titleLabel)
        self.addSubview(imageView)
        
        titleLabel.backgroundColor = .blue
        imageView.backgroundColor = .cyan
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            imageView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    public func configureComponentData(image : UIImage, text : String){
           titleLabel.text = text
           imageView.image = image
    }

}
