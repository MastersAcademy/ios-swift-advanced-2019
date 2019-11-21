//
//  ApiClient.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RxSwift

protocol ApiRequest {
    var urlRequest: URLRequest { get }
}

protocol ApiClient: class {
    func execute<T: Codable>(request: ApiRequest) -> Observable<T>
}

protocol URLSessionDescribing {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionDescribing {}

class ApiClientImpl: ApiClient {
    let urlSession: URLSessionDescribing
    
    init(urlSessionConfiguration: URLSessionConfiguration,
         completionHandlerQueue: OperationQueue) {
        urlSession = URLSession(configuration: urlSessionConfiguration,
                                delegate: nil,
                                delegateQueue: completionHandlerQueue)
    }
    
    func execute<T: Codable>(request: ApiRequest) -> Observable<T> {
        return Observable<T>.create { observer in
            let task = self.urlSession
                .dataTask(with: request.urlRequest) { (data, response, error) in
                    do {
                        let model: T = try JSONDecoder()
                            .decode(T.self,
                                    from: data ?? Data())
                        observer.onNext(model)
                    } catch let error {
                        observer.onError(error)
                    }
                    observer.onCompleted()
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
}
