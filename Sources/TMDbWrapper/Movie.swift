//
//  Movie.swift
//  Alamofire
//
//  Created by Amadeu Cavalcante Filho on 14/05/18.
//

import Foundation
import Alamofire

class Movie: MovieProtocol {
    let config: Config
    let endpoint: String
    let parameters: Parameters
    
    init(config: Config) {
        self.config = config
        endpoint = "\(Config.Endpoint.v3.url)/movie"
        parameters = [
            "api_key": config.apiKey,
            "language": config.language
        ]
    }
    
    func getDetail(movieId: Int, completionHandler: @escaping (String) -> Void) {
        let path = "\(endpoint)/\(movieId)"
        
        Alamofire.request(path, parameters: parameters).responseJSON { response in
            if let json = response.result.value {
                completionHandler("Json: \(json)")
                print("Json: \(json)")
            }
        }
    }
    
    func getUpcoming(region: String? = nil, completionHandler: @escaping (Data) -> Void) {
        let path = "\(endpoint)/upcoming"
        
        Alamofire.request(path, parameters: parameters).responseJSON { response in
            if let json = response.result.value {
                if let data = try? JSONSerialization.data(withJSONObject: json) {
                    completionHandler(data)
                }
                
                print("Json: \(json)")
            }
        }
    }
    
    func getAccountStates() {
        
    }
    
    func getAlternativeTitles() {
        
    }
    
    func getChanges() {
        
    }
    
    func getCredits() {
        
    }
    
    func getExternalIDs() {
        
    }
    
    func getImages() {
        
    }
    
    func getKeywords() {
        
    }
    
    func getReleaseDates() {
        
    }
    
    func getVideos() {
        
    }
    
    func getTranslations() {
        
    }
    
    func getRecommendations() {
        
    }
    
    func getSimilarMovies() {
        
    }
    
    func getReviews() {
        
    }
    
    func getLists() {
        
    }
    
    func rateMovie() {
        
    }
    
    func deleteRating() {
        
    }
    
    func getLatest() {
        
    }
    
    func getNowPlaying() {
        
    }
    
    func getPopular() {
        
    }
    
    func getTopRated() {
        
    }
}
