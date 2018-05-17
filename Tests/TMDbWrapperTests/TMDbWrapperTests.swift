import XCTest
@testable import TMDbWrapper

final class TMDbWrapperTests: XCTestCase {
    var movie: Movie?
    
    override func setUp() {
        let config = Config(apiKey: "", language: "en-US")
        movie = Movie(config: config)
    }
    
    func testGetMovieDetail() {
        let expectation = XCTestExpectation(description: "Movie Detail")
        movie?.getDetail(movieId: 102) { response in
            print(response)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }
    
    
    func testGetMovieUpcoming() {
        let expectation = XCTestExpectation(description: "Upcoming movies")
        movie?.getUpcoming { response in
            print(response)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testGetLatest() {
        movie?.getLatest()
    }

    static var allTests = [
        ("testGetMovieDetail", testGetMovieDetail),
        ("testGetMovieUpcoming", testGetMovieUpcoming),
        ("testGetLatest", testGetLatest),
    ]
}
