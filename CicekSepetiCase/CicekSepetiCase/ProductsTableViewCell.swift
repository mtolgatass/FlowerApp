//
//  ProductsTableViewCell.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 18.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import UIKit
import AlamofireImage

class ProductsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var newPrice: UILabel!
    @IBOutlet weak var oldPrice: UILabel!
    
    @IBOutlet weak var installment: UILabel!
    
    
    func setupCell(product : Product?){
        if let product = product{
            label.text = product.name
            newPrice.text = String(product.price.current) + " TL"
            oldPrice.text = String(product.price.old) + " TL "
            product.installment ? (installment.text = product.installmentText) : (installment.text = "")
            oldPrice.attributedText = oldPrice.text?.strikeThroughAttribute()
            if let url = URL(string: product.image){
            productImage.af_setImage(withURL: url)
            }
        }
    }
    
    
}
