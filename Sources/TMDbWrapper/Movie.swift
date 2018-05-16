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
    
    func getDetail(movieId: Int, completionHandler: @escaping (MovieDetailsResponse?) -> Void) {
        let path = "\(endpoint)/\(movieId)"
        
        Alamofire.request(path, parameters: parameters).debugLog().responseJSON { response in
            if let json = response.result.value {
                if let data = try? JSONSerialization.data(withJSONObject: json) {
                    let movieDetailResponse = try? JSONDecoder().decode(MovieDetailsResponse.self, from: data)
                    completionHandler(movieDetailResponse)
                }
                print("Json: \(json)")
            }
        }
    }
    
    func getUpcoming(region: String? = nil, completionHandler: @escaping (MovieUpcomingResponse?) -> Void) {
        let path = "\(endpoint)/upcoming"
        
        Alamofire.request(path, parameters: parameters).responseJSON { response in
            if let json = response.result.value {
                if let data = try? JSONSerialization.data(withJSONObject: json) {
                    let movieUpcomingResponse = try? JSONDecoder().decode(MovieUpcomingResponse.self, from: data)
                    completionHandler(movieUpcomingResponse)
                }
                
                print("Json: \(json)")
            }
        }
    }
    
    func getAccountStates(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func getAlternativeTitles() {
        
    }
    
    func getChanges() {
        
    }
    
    func getCredits() {
        
    }
    
    func getExternalIDs() {
        
    }
    
    func getImages(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func getKeywords() {
        
    }
    
    func getReleaseDates() {
        
    }
    
    func getVideos() {
        
    }
    
    func getTranslations() {
        
    }
    
    func getRecommendations(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func getSimilarMovies(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func getReviews(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func getLists(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func rateMovie() {
        
    }
    
    func deleteRating() {
        
    }
    
    func getLatest() {
        
    }
    
    func getNowPlaying() {
        
    }
    
    func getPopular(completionHandler: @escaping (Data) -> Void) {
        
    }
    
    func getTopRated() {
        
    }
}
