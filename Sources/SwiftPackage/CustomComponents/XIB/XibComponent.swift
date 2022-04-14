//
//  CustomView.swift
//  XIBMedium
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 16/03/22.
//

import UIKit
import Foundation


public class XibComponent: UIView {
    static let identifier = "XibComponent"

    @IBOutlet var mainView: UIView!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {
        
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: XibComponent.identifier, bundle: bundle)

        guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                            UIView else {fatalError("Unable to convert nib")}

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(view)

    }
    
    func configureImageAndText(image : UIImage, text : String){
        textLabel.text = text
        imageView.image = image
    }

}
