//
//  TMDbProtocols.swift
//  TMDbWrapper
//
//  Created by Amadeu Cavalcante Filho on 14/05/18.
//

import Foundation

protocol MovieProtocol {
    func getDetail(movieId: Int, completionHandler: @escaping (String) -> Void)
    
    func getAccountStates()
    
    func getAlternativeTitles()

    func getChanges()
    
    func getCredits()
    
    func getExternalIDs()
    
    func getImages()
    
    func getKeywords()
    
    func getReleaseDates()
    
    func getVideos()
    
    func getTranslations()
    
    func getRecommendations()
    
    func getSimilarMovies()
    
    func getReviews()
    
    func getLists()
    
    func rateMovie()
    
    func deleteRating()
    
    func getLatest()
    
    func getNowPlaying()
    
    func getPopular()
    
    func getTopRated()
    
    func getUpcoming(region: String?, completionHandler: @escaping (Data) -> Void)
}
