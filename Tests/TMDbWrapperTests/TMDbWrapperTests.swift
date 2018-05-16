import XCTest
@testable import TMDbWrapper

final class TMDbWrapperTests: XCTestCase {
    var movie: Movie?
    
    override func setUp() {
        let config = Config(apiKey: "", language: "pt-BR")
        movie = Movie(config: config)
    }
    
    func testGetMovieDetail() {
        movie?.getDetail(movieId: 1) { response in
            print(response)
        }
    }
    
    
    func testGetMovieUpcoming() {
        let expectation = XCTestExpectation(description: "Upcoming movies")
        movie?.getUpcoming { response in
            print(response)
            let encodedJson = try? JSONDecoder().decode(MovieUpcomingResponse.self, from: response)
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
