//
//  MovieDataHelper.swift
//  Quick&NimbleSampleProject
//
//  Created by HengVisal on 5/30/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

class MovieDataHelper {
    static func getMovie() -> [Movie] {
        return [ Movie(title: "Attack On Titan", genre: MovieGenre.Action) ,
                 Movie(title: "Naruto", genre: MovieGenre.Animation) ,
                 Movie(title: "Black Clover", genre: MovieGenre.Action)]
    }
}
