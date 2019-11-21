//
//  ImagesApiRequest.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

struct ImagesApiRequest: ApiRequest {
    var urlRequest: URLRequest {
        let url: URL! = URL(string: "https://gist.githubusercontent.com/MSavisko/f00990136a4d267f8a454fd01bff5ba2/raw/036878aadcde25c6cfe3809e46925702857dfdbf/volleyball_images.json")
        var request = URLRequest(url: url)
        request.setValue("application/json",
                         forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        
        return request
    }
}
