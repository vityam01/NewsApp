//
//  ImgViewExt.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022
//

import UIKit

extension UIImageView {
    
    func loadImgFromUrl(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) {data,_,err in
            DispatchQueue.main.async {
                if let err = err {
                    print("Failed to get data from url:", err)
                }
                
                guard let data = data else { return }
                
                self.image = UIImage(data: data)
            }
        }.resume()
    }
    
}
