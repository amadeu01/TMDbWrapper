//
//  TMDbProtocols.swift
//  TMDbWrapper
//
//  Created by Amadeu Cavalcante Filho on 14/05/18.
//

import Foundation

protocol MovieProtocol {
    func getDetail(movieId: Int, completionHandler: @escaping (MovieDetailsResponse?) -> Void)
    
    func getAccountStates(completionHandler: @escaping (Data) -> Void)
    
    func getAlternativeTitles()

    func getChanges()
    
    func getCredits()
    
    func getExternalIDs()
    
    func getImages(completionHandler: @escaping (Data) -> Void)
    
    func getKeywords()
    
    func getReleaseDates()
    
    func getVideos()
    
    func getTranslations()
    
    func getRecommendations(completionHandler: @escaping (Data) -> Void)
    
    func getSimilarMovies(completionHandler: @escaping (Data) -> Void)
    
    func getReviews(completionHandler: @escaping (Data) -> Void)
    
    func getLists(completionHandler: @escaping (Data) -> Void)
    
    func rateMovie()
    
    func deleteRating()
    
    func getLatest()
    
    func getNowPlaying()
    
    func getPopular(completionHandler: @escaping (Data) -> Void)
    
    func getTopRated()
    
    func getUpcoming(region: String?, completionHandler: @escaping (MovieUpcomingResponse?) -> Void)
}
