//
//  Archive.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

public struct Archive: Codable {
   
   public var country: String?
   public var league: String?
   public var bookmaker: String?
   public var season: String?
   public var championship: String?
   public var data: [String]?
   public var time: [String]?
   public var ht: [String]?
   public var at: [String]?
   public var referee: [String]?
   public var round: [String]?
   public var htGoalsCount1half: [Int]?
   public var atGoalsCount1half: [Int]?
   public var win1half: [String]?
   public var htGoalsCount2half: [Int]?
   public var atGoalsCount2half: [Int]?
   public var win2half: [String]?
   public var htGoalsCountFt: [Int]?
   public var atGoalsCountFt: [Int]?
   public var winFt: [String]?
   public var htGoalsTime: [[Int]]?
   public var atGoalsTime: [[Int]]?
   public var ht1x2FtOpening: [Double]?
   public var ht1x2FtClosing: [Double]?
   public var d1x2FtOpening: [Double]?
   public var d1x2FtClosing: [Double]?
   public var at1x2FtOpening: [Double]?
   public var at1x2FtClosing: [Double]?
   public var ht1x21halfOpening: [Double]?
   public var ht1x21halfClosing: [Double]?
   public var d1x21halfOpening: [Double]?
   public var d1x21halfClosing: [Double]?
   public var at1x21halfOpening: [Double]?
   public var at1x21halfClosing: [Double]?
   public var ht1x22halfOpening: [Double]?
   public var ht1x22halfClosing: [Double]?
   public var d1x22halfOpening: [Double]?
   public var d1x22halfClosing: [Double]?
   public var at1x22halfOpening: [Double]?
   public var at1x22halfClosing: [Double]?
   public var htHaFtOpening: [Double]?
   public var htHaFtClosing: [Double]?
   public var atHaFtOpening: [Double]?
   public var atHaFtClosing: [Double]?
   public var htHa1halfOpening: [Double]?
   public var htHa1halfClosing: [Double]?
   public var atHa1halfOpening: [Double]?
   public var atHa1halfClosing: [Double]?
   public var htHa2halfOpening: [Double]?
   public var htHa2halfClosing: [Double]?
   public var atHa2halfOpening: [Double]?
   public var atHa2halfClosing: [Double]?
   public var over05FtOpening: [Double]?
   public var over05FtClosing: [Double]?
   public var under05FtOpening: [Double]?
   public var under05FtClosing: [Double]?
   public var over1FtOpening: [Double]?
   public var over1FtClosing: [Double]?
   public var under1FtOpening: [Double]?
   public var under1FtClosing: [Double]?
   public var over15FtOpening: [Double]?
   public var over15FtClosing: [Double]?
   public var under15FtOpening: [Double]?
   public var under15FtClosing: [Double]?
   public var over2FtOpening: [Double]?
   public var over2FtClosing: [Double]?
   public var under2FtOpening: [Double]?
   public var under2FtClosing: [Double]?
   public var over25FtOpening: [Double]?
   public var over25FtClosing: [Double]?
   public var under25FtOpening: [Double]?
   public var under25FtClosing: [Double]?
   public var over3FtOpening: [Double]?
   public var over3FtClosing: [Double]?
   public var under3FtOpening: [Double]?
   public var under3FtClosing: [Double]?
   public var over35FtOpening: [Double]?
   public var over35FtClosing: [Double]?
   public var under35FtOpening: [Double]?
   public var under35FtClosing: [Double]?
   public var over4FtOpening: [Double]?
   public var over4FtClosing: [Double]?
   public var under4FtOpening: [Double]?
   public var under4FtClosing: [Double]?
   public var over45FtOpening: [Double]?
   public var over45FtClosing: [Double]?
   public var under45FtOpening: [Double]?
   public var under45FtClosing: [Double]?
   public var over5FtOpening: [Double]?
   public var over5FtClosing: [Double]?
   public var under5FtOpening: [Double]?
   public var under5FtClosing: [Double]?
   public var over55FtOpening: [Double]?
   public var over55FtClosing: [Double]?
   public var under55FtOpening: [Double]?
   public var under55FtClosing: [Double]?
   public var over051halfOpening: [Double]?
   public var over051halfClosing: [Double]?
   public var under051halfOpening: [Double]?
   public var under051halfClosing: [Double]?
   public var over11halfOpening: [Double]?
   public var over11halfClosing: [Double]?
   public var under11halfOpening: [Double]?
   public var under11halfClosing: [Double]?
   public var over151halfOpening: [Double]?
   public var over151halfClosing: [Double]?
   public var under151halfOpening: [Double]?
   public var under151halfClosing: [Double]?
   public var over21halfOpening: [Double]?
   public var over21halfClosing: [Double]?
   public var under21halfOpening: [Double]?
   public var under21halfClosing: [Double]?
   public var over251halfOpening: [Double]?
   public var over251halfClosing: [Double]?
   public var under251halfOpening: [Double]?
   public var under251halfClosing: [Double]?
   public var over31halfOpening: [Double]?
   public var over31halfClosing: [Double]?
   public var under31halfOpening: [Double]?
   public var under31halfClosing: [Double]?
   public var over351halfOpening: [Double]?
   public var over351halfClosing: [Double]?
   public var under351halfOpening: [Double]?
   public var under351halfClosing: [Double]?
   public var over41halfOpening: [Double]?
   public var over41halfClosing: [Double]?
   public var under41halfOpening: [Double]?
   public var under41halfClosing: [Double]?
   public var over451halfOpening: [Double]?
   public var over451halfClosing: [Double]?
   public var under451halfOpening: [Double]?
   public var under451halfClosing: [Double]?
   public var over51halfOpening: [Double]?
   public var over51halfClosing: [Double]?
   public var under51halfOpening: [Double]?
   public var under51halfClosing: [Double]?
   public var over551halfOpening: [Double]?
   public var over551halfClosing: [Double]?
   public var under551halfOpening: [Double]?
   public var under551halfClosing: [Double]?
   public var over052halfOpening: [Double]?
   public var over052halfClosing: [Double]?
   public var under052halfOpening: [Double]?
   public var under052halfClosing: [Double]?
   public var over12halfOpening: [Double]?
   public var over12halfClosing: [Double]?
   public var under12halfOpening: [Double]?
   public var under12halfClosing: [Double]?
   public var over152halfOpening: [Double]?
   public var over152halfClosing: [Double]?
   public var under152halfOpening: [Double]?
   public var under152halfClosing: [Double]?
   public var over22halfOpening: [Double]?
   public var over22halfClosing: [Double]?
   public var under22halfOpening: [Double]?
   public var under22halfClosing: [Double]?
   public var over252halfOpening: [Double]?
   public var over252halfClosing: [Double]?
   public var under252halfOpening: [Double]?
   public var under252halfClosing: [Double]?
   public var over32halfOpening: [Double]?
   public var over32halfClosing: [Double]?
   public var under32halfOpening: [Double]?
   public var under32halfClosing: [Double]?
   public var over352halfOpening: [Double]?
   public var over352halfClosing: [Double]?
   public var under352halfOpening: [Double]?
   public var under352halfClosing: [Double]?
   public var over42halfOpening: [Double]?
   public var over42halfClosing: [Double]?
   public var under42halfOpening: [Double]?
   public var under42halfClosing: [Double]?
   public var over452halfOpening: [Double]?
   public var over452halfClosing: [Double]?
   public var under452halfOpening: [Double]?
   public var under452halfClosing: [Double]?
   public var over52halfOpening: [Double]?
   public var over52halfClosing: [Double]?
   public var under52halfOpening: [Double]?
   public var under52halfClosing: [Double]?
   public var over552halfOpening: [Double]?
   public var over552halfClosing: [Double]?
   public var under552halfOpening: [Double]?
   public var under552halfClosing: [Double]?
   public var dc1xFtOpening: [Double]?
   public var dc1xFtClosing: [Double]?
   public var dc12FtOpening: [Double]?
   public var dc12FtClosing: [Double]?
   public var dcX2FtOpening: [Double]?
   public var dcX2FtClosing: [Double]?
   public var dc1x1halfOpening: [Double]?
   public var dc1x1halfClosing: [Double]?
   public var dc121halfOpening: [Double]?
   public var dc121halfClosing: [Double]?
   public var dcX21halfOpening: [Double]?
   public var dcX21halfClosing: [Double]?
   public var dc1x2halfOpening: [Double]?
   public var dc1x2halfClosing: [Double]?
   public var dc122halfOpening: [Double]?
   public var dc122halfClosing: [Double]?
   public var dcX22halfOpening: [Double]?
   public var dcX22halfClosing: [Double]?
   public var htft11Opening: [Double]?
   public var htft11Closing: [Double]?
   public var htft1XOpening: [Double]?
   public var htft1XClosing: [Double]?
   public var htft12Opening: [Double]?
   public var htft12Closing: [Double]?
   public var htftX1Opening: [Double]?
   public var htftX1Closing: [Double]?
   public var htftXXOpening: [Double]?
   public var htftXXClosing: [Double]?
   public var htftX2Opening: [Double]?
   public var htftX2Closing: [Double]?
   public var htft21Opening: [Double]?
   public var htft21Closing: [Double]?
   public var htft2XOpening: [Double]?
   public var htft2XClosing: [Double]?
   public var htft22Opening: [Double]?
   public var htft22Closing: [Double]?
   public var cs66Opening: [Double]?
   public var cs66Closing: [Double]?
   public var cs65Opening: [Double]?
   public var cs65Closing: [Double]?
   public var cs64Opening: [Double]?
   public var cs64Closing: [Double]?
   public var cs63Opening: [Double]?
   public var cs63Closing: [Double]?
   public var cs62Opening: [Double]?
   public var cs62Closing: [Double]?
   public var cs61Opening: [Double]?
   public var cs61Closing: [Double]?
   public var cs60Opening: [Double]?
   public var cs60Closing: [Double]?
   public var cs56Opening: [Double]?
   public var cs56Closing: [Double]?
   public var cs55Opening: [Double]?
   public var cs55Closing: [Double]?
   public var cs54Opening: [Double]?
   public var cs54Closing: [Double]?
   public var cs53Opening: [Double]?
   public var cs53Closing: [Double]?
   public var cs52Opening: [Double]?
   public var cs52Closing: [Double]?
   public var cs51Opening: [Double]?
   public var cs51Closing: [Double]?
   public var cs50Opening: [Double]?
   public var cs50Closing: [Double]?
   public var cs46Opening: [Double]?
   public var cs46Closing: [Double]?
   public var cs45Opening: [Double]?
   public var cs45Closing: [Double]?
   public var cs44Opening: [Double]?
   public var cs44Closing: [Double]?
   public var cs43Opening: [Double]?
   public var cs43Closing: [Double]?
   public var cs42Opening: [Double]?
   public var cs42Closing: [Double]?
   public var cs41Opening: [Double]?
   public var cs41Closing: [Double]?
   public var cs40Opening: [Double]?
   public var cs40Closing: [Double]?
   public var cs36Opening: [Double]?
   public var cs36Closing: [Double]?
   public var cs35Opening: [Double]?
   public var cs35Closing: [Double]?
   public var cs34Opening: [Double]?
   public var cs34Closing: [Double]?
   public var cs33Opening: [Double]?
   public var cs33Closing: [Double]?
   public var cs32Opening: [Double]?
   public var cs32Closing: [Double]?
   public var cs31Opening: [Double]?
   public var cs31Closing: [Double]?
   public var cs30Opening: [Double]?
   public var cs30Closing: [Double]?
   public var cs26Opening: [Double]?
   public var cs26Closing: [Double]?
   public var cs25Opening: [Double]?
   public var cs25Closing: [Double]?
   public var cs24Opening: [Double]?
   public var cs24Closing: [Double]?
   public var cs23Opening: [Double]?
   public var cs23Closing: [Double]?
   public var cs22Opening: [Double]?
   public var cs22Closing: [Double]?
   public var cs21Opening: [Double]?
   public var cs21Closing: [Double]?
   public var cs20Opening: [Double]?
   public var cs20Closing: [Double]?
   public var cs16Opening: [Double]?
   public var cs16Closing: [Double]?
   public var cs15Opening: [Double]?
   public var cs15Closing: [Double]?
   public var cs14Opening: [Double]?
   public var cs14Closing: [Double]?
   public var cs13Opening: [Double]?
   public var cs13Closing: [Double]?
   public var cs12Opening: [Double]?
   public var cs12Closing: [Double]?
   public var cs11Opening: [Double]?
   public var cs11Closing: [Double]?
   public var cs10Opening: [Double]?
   public var cs10Closing: [Double]?
   public var cs00Opening: [Double]?
   public var cs00Closing: [Double]?
   public var cs06Opening: [Double]?
   public var cs06Closing: [Double]?
   public var cs05Opening: [Double]?
   public var cs05Closing: [Double]?
   public var cs04Opening: [Double]?
   public var cs04Closing: [Double]?
   public var cs03Opening: [Double]?
   public var cs03Closing: [Double]?
   public var cs02Opening: [Double]?
   public var cs02Closing: [Double]?
   public var cs01Opening: [Double]?
   public var cs01Closing: [Double]?
   public var oddFtOpening: [Double]?
   public var oddFtClosing: [Double]?
   public var evenFtOpening: [Double]?
   public var evenFtClosing: [Double]?
   public var odd1halfOpening: [Double]?
   public var odd1halfClosing: [Double]?
   public var even1halfOpening: [Double]?
   public var even1halfClosing: [Double]?
   public var odd2halfOpening: [Double]?
   public var odd2halfClosing: [Double]?
   public var even2halfOpening: [Double]?
   public var even2halfClosing: [Double]?
   public var btsYesFtOpening: [Double]?
   public var btsYesFtClosing: [Double]?
   public var btsNoFtOpening: [Double]?
   public var btsNoFtClosing: [Double]?
   public var btsYes1halfOpening: [Double]?
   public var btsYes1halfClosing: [Double]?
   public var btsNo1halfOpening: [Double]?
   public var btsNo1halfClosing: [Double]?
   public var btsYes2halfOpening: [Double]?
   public var btsYes2halfClosing: [Double]?
   public var btsNo2halfOpening: [Double]?
   public var btsNo2halfClosing: [Double]?
   public var yellowCardHt: [Int]?
   public var yellowCardAt: [Int]?
   public var redCardHt: [Int]?
   public var redCardAt: [Int]?
   public var cornerKicksHt: [Int]?
   public var cornerKicksAt: [Int]?
   
   public init(country: String? = nil, league: String? = nil, bookmaker: String? = nil, season: String? = nil, championship: String? = nil, data: [String]? = nil, time: [String]? = nil, ht: [String]? = nil, at: [String]? = nil, referee: [String]? = nil, round: [String]? = nil, htGoalsCount1half: [Int]? = nil, atGoalsCount1half: [Int]? = nil, win1half: [String]? = nil, htGoalsCount2half: [Int]? = nil, atGoalsCount2half: [Int]? = nil, win2half: [String]? = nil, htGoalsCountFt: [Int]? = nil, atGoalsCountFt: [Int]? = nil, winFt: [String]? = nil, htGoalsTime: [[Int]]? = nil, atGoalsTime: [[Int]]? = nil, ht1x2FtOpening: [Double]? = nil, ht1x2FtClosing: [Double]? = nil, d1x2FtOpening: [Double]? = nil, d1x2FtClosing: [Double]? = nil, at1x2FtOpening: [Double]? = nil, at1x2FtClosing: [Double]? = nil, ht1x21halfOpening: [Double]? = nil, ht1x21halfClosing: [Double]? = nil, d1x21halfOpening: [Double]? = nil, d1x21halfClosing: [Double]? = nil, at1x21halfOpening: [Double]? = nil, at1x21halfClosing: [Double]? = nil, ht1x22halfOpening: [Double]? = nil, ht1x22halfClosing: [Double]? = nil, d1x22halfOpening: [Double]? = nil, d1x22halfClosing: [Double]? = nil, at1x22halfOpening: [Double]? = nil, at1x22halfClosing: [Double]? = nil, htHaFtOpening: [Double]? = nil, htHaFtClosing: [Double]? = nil, atHaFtOpening: [Double]? = nil, atHaFtClosing: [Double]? = nil, htHa1halfOpening: [Double]? = nil, htHa1halfClosing: [Double]? = nil, atHa1halfOpening: [Double]? = nil, atHa1halfClosing: [Double]? = nil, htHa2halfOpening: [Double]? = nil, htHa2halfClosing: [Double]? = nil, atHa2halfOpening: [Double]? = nil, atHa2halfClosing: [Double]? = nil, over05FtOpening: [Double]? = nil, over05FtClosing: [Double]? = nil, under05FtOpening: [Double]? = nil, under05FtClosing: [Double]? = nil, over1FtOpening: [Double]? = nil, over1FtClosing: [Double]? = nil, under1FtOpening: [Double]? = nil, under1FtClosing: [Double]? = nil, over15FtOpening: [Double]? = nil, over15FtClosing: [Double]? = nil, under15FtOpening: [Double]? = nil, under15FtClosing: [Double]? = nil, over2FtOpening: [Double]? = nil, over2FtClosing: [Double]? = nil, under2FtOpening: [Double]? = nil, under2FtClosing: [Double]? = nil, over25FtOpening: [Double]? = nil, over25FtClosing: [Double]? = nil, under25FtOpening: [Double]? = nil, under25FtClosing: [Double]? = nil, over3FtOpening: [Double]? = nil, over3FtClosing: [Double]? = nil, under3FtOpening: [Double]? = nil, under3FtClosing: [Double]? = nil, over35FtOpening: [Double]? = nil, over35FtClosing: [Double]? = nil, under35FtOpening: [Double]? = nil, under35FtClosing: [Double]? = nil, over4FtOpening: [Double]? = nil, over4FtClosing: [Double]? = nil, under4FtOpening: [Double]? = nil, under4FtClosing: [Double]? = nil, over45FtOpening: [Double]? = nil, over45FtClosing: [Double]? = nil, under45FtOpening: [Double]? = nil, under45FtClosing: [Double]? = nil, over5FtOpening: [Double]? = nil, over5FtClosing: [Double]? = nil, under5FtOpening: [Double]? = nil, under5FtClosing: [Double]? = nil, over55FtOpening: [Double]? = nil, over55FtClosing: [Double]? = nil, under55FtOpening: [Double]? = nil, under55FtClosing: [Double]? = nil, over051halfOpening: [Double]? = nil, over051halfClosing: [Double]? = nil, under051halfOpening: [Double]? = nil, under051halfClosing: [Double]? = nil, over11halfOpening: [Double]? = nil, over11halfClosing: [Double]? = nil, under11halfOpening: [Double]? = nil, under11halfClosing: [Double]? = nil, over151halfOpening: [Double]? = nil, over151halfClosing: [Double]? = nil, under151halfOpening: [Double]? = nil, under151halfClosing: [Double]? = nil, over21halfOpening: [Double]? = nil, over21halfClosing: [Double]? = nil, under21halfOpening: [Double]? = nil, under21halfClosing: [Double]? = nil, over251halfOpening: [Double]? = nil, over251halfClosing: [Double]? = nil, under251halfOpening: [Double]? = nil, under251halfClosing: [Double]? = nil, over31halfOpening: [Double]? = nil, over31halfClosing: [Double]? = nil, under31halfOpening: [Double]? = nil, under31halfClosing: [Double]? = nil, over351halfOpening: [Double]? = nil, over351halfClosing: [Double]? = nil, under351halfOpening: [Double]? = nil, under351halfClosing: [Double]? = nil, over41halfOpening: [Double]? = nil, over41halfClosing: [Double]? = nil, under41halfOpening: [Double]? = nil, under41halfClosing: [Double]? = nil, over451halfOpening: [Double]? = nil, over451halfClosing: [Double]? = nil, under451halfOpening: [Double]? = nil, under451halfClosing: [Double]? = nil, over51halfOpening: [Double]? = nil, over51halfClosing: [Double]? = nil, under51halfOpening: [Double]? = nil, under51halfClosing: [Double]? = nil, over551halfOpening: [Double]? = nil, over551halfClosing: [Double]? = nil, under551halfOpening: [Double]? = nil, under551halfClosing: [Double]? = nil, over052halfOpening: [Double]? = nil, over052halfClosing: [Double]? = nil, under052halfOpening: [Double]? = nil, under052halfClosing: [Double]? = nil, over12halfOpening: [Double]? = nil, over12halfClosing: [Double]? = nil, under12halfOpening: [Double]? = nil, under12halfClosing: [Double]? = nil, over152halfOpening: [Double]? = nil, over152halfClosing: [Double]? = nil, under152halfOpening: [Double]? = nil, under152halfClosing: [Double]? = nil, over22halfOpening: [Double]? = nil, over22halfClosing: [Double]? = nil, under22halfOpening: [Double]? = nil, under22halfClosing: [Double]? = nil, over252halfOpening: [Double]? = nil, over252halfClosing: [Double]? = nil, under252halfOpening: [Double]? = nil, under252halfClosing: [Double]? = nil, over32halfOpening: [Double]? = nil, over32halfClosing: [Double]? = nil, under32halfOpening: [Double]? = nil, under32halfClosing: [Double]? = nil, over352halfOpening: [Double]? = nil, over352halfClosing: [Double]? = nil, under352halfOpening: [Double]? = nil, under352halfClosing: [Double]? = nil, over42halfOpening: [Double]? = nil, over42halfClosing: [Double]? = nil, under42halfOpening: [Double]? = nil, under42halfClosing: [Double]? = nil, over452halfOpening: [Double]? = nil, over452halfClosing: [Double]? = nil, under452halfOpening: [Double]? = nil, under452halfClosing: [Double]? = nil, over52halfOpening: [Double]? = nil, over52halfClosing: [Double]? = nil, under52halfOpening: [Double]? = nil, under52halfClosing: [Double]? = nil, over552halfOpening: [Double]? = nil, over552halfClosing: [Double]? = nil, under552halfOpening: [Double]? = nil, under552halfClosing: [Double]? = nil, dc1xFtOpening: [Double]? = nil, dc1xFtClosing: [Double]? = nil, dc12FtOpening: [Double]? = nil, dc12FtClosing: [Double]? = nil, dcX2FtOpening: [Double]? = nil, dcX2FtClosing: [Double]? = nil, dc1x1halfOpening: [Double]? = nil, dc1x1halfClosing: [Double]? = nil, dc121halfOpening: [Double]? = nil, dc121halfClosing: [Double]? = nil, dcX21halfOpening: [Double]? = nil, dcX21halfClosing: [Double]? = nil, dc1x2halfOpening: [Double]? = nil, dc1x2halfClosing: [Double]? = nil, dc122halfOpening: [Double]? = nil, dc122halfClosing: [Double]? = nil, dcX22halfOpening: [Double]? = nil, dcX22halfClosing: [Double]? = nil, htft11Opening: [Double]? = nil, htft11Closing: [Double]? = nil, htft1XOpening: [Double]? = nil, htft1XClosing: [Double]? = nil, htft12Opening: [Double]? = nil, htft12Closing: [Double]? = nil, htftX1Opening: [Double]? = nil, htftX1Closing: [Double]? = nil, htftXXOpening: [Double]? = nil, htftXXClosing: [Double]? = nil, htftX2Opening: [Double]? = nil, htftX2Closing: [Double]? = nil, htft21Opening: [Double]? = nil, htft21Closing: [Double]? = nil, htft2XOpening: [Double]? = nil, htft2XClosing: [Double]? = nil, htft22Opening: [Double]? = nil, htft22Closing: [Double]? = nil, cs66Opening: [Double]? = nil, cs66Closing: [Double]? = nil, cs65Opening: [Double]? = nil, cs65Closing: [Double]? = nil, cs64Opening: [Double]? = nil, cs64Closing: [Double]? = nil, cs63Opening: [Double]? = nil, cs63Closing: [Double]? = nil, cs62Opening: [Double]? = nil, cs62Closing: [Double]? = nil, cs61Opening: [Double]? = nil, cs61Closing: [Double]? = nil, cs60Opening: [Double]? = nil, cs60Closing: [Double]? = nil, cs56Opening: [Double]? = nil, cs56Closing: [Double]? = nil, cs55Opening: [Double]? = nil, cs55Closing: [Double]? = nil, cs54Opening: [Double]? = nil, cs54Closing: [Double]? = nil, cs53Opening: [Double]? = nil, cs53Closing: [Double]? = nil, cs52Opening: [Double]? = nil, cs52Closing: [Double]? = nil, cs51Opening: [Double]? = nil, cs51Closing: [Double]? = nil, cs50Opening: [Double]? = nil, cs50Closing: [Double]? = nil, cs46Opening: [Double]? = nil, cs46Closing: [Double]? = nil, cs45Opening: [Double]? = nil, cs45Closing: [Double]? = nil, cs44Opening: [Double]? = nil, cs44Closing: [Double]? = nil, cs43Opening: [Double]? = nil, cs43Closing: [Double]? = nil, cs42Opening: [Double]? = nil, cs42Closing: [Double]? = nil, cs41Opening: [Double]? = nil, cs41Closing: [Double]? = nil, cs40Opening: [Double]? = nil, cs40Closing: [Double]? = nil, cs36Opening: [Double]? = nil, cs36Closing: [Double]? = nil, cs35Opening: [Double]? = nil, cs35Closing: [Double]? = nil, cs34Opening: [Double]? = nil, cs34Closing: [Double]? = nil, cs33Opening: [Double]? = nil, cs33Closing: [Double]? = nil, cs32Opening: [Double]? = nil, cs32Closing: [Double]? = nil, cs31Opening: [Double]? = nil, cs31Closing: [Double]? = nil, cs30Opening: [Double]? = nil, cs30Closing: [Double]? = nil, cs26Opening: [Double]? = nil, cs26Closing: [Double]? = nil, cs25Opening: [Double]? = nil, cs25Closing: [Double]? = nil, cs24Opening: [Double]? = nil, cs24Closing: [Double]? = nil, cs23Opening: [Double]? = nil, cs23Closing: [Double]? = nil, cs22Opening: [Double]? = nil, cs22Closing: [Double]? = nil, cs21Opening: [Double]? = nil, cs21Closing: [Double]? = nil, cs20Opening: [Double]? = nil, cs20Closing: [Double]? = nil, cs16Opening: [Double]? = nil, cs16Closing: [Double]? = nil, cs15Opening: [Double]? = nil, cs15Closing: [Double]? = nil, cs14Opening: [Double]? = nil, cs14Closing: [Double]? = nil, cs13Opening: [Double]? = nil, cs13Closing: [Double]? = nil, cs12Opening: [Double]? = nil, cs12Closing: [Double]? = nil, cs11Opening: [Double]? = nil, cs11Closing: [Double]? = nil, cs10Opening: [Double]? = nil, cs10Closing: [Double]? = nil, cs00Opening: [Double]? = nil, cs00Closing: [Double]? = nil, cs06Opening: [Double]? = nil, cs06Closing: [Double]? = nil, cs05Opening: [Double]? = nil, cs05Closing: [Double]? = nil, cs04Opening: [Double]? = nil, cs04Closing: [Double]? = nil, cs03Opening: [Double]? = nil, cs03Closing: [Double]? = nil, cs02Opening: [Double]? = nil, cs02Closing: [Double]? = nil, cs01Opening: [Double]? = nil, cs01Closing: [Double]? = nil, oddFtOpening: [Double]? = nil, oddFtClosing: [Double]? = nil, evenFtOpening: [Double]? = nil, evenFtClosing: [Double]? = nil, odd1halfOpening: [Double]? = nil, odd1halfClosing: [Double]? = nil, even1halfOpening: [Double]? = nil, even1halfClosing: [Double]? = nil, odd2halfOpening: [Double]? = nil, odd2halfClosing: [Double]? = nil, even2halfOpening: [Double]? = nil, even2halfClosing: [Double]? = nil, btsYesFtOpening: [Double]? = nil, btsYesFtClosing: [Double]? = nil, btsNoFtOpening: [Double]? = nil, btsNoFtClosing: [Double]? = nil, btsYes1halfOpening: [Double]? = nil, btsYes1halfClosing: [Double]? = nil, btsNo1halfOpening: [Double]? = nil, btsNo1halfClosing: [Double]? = nil, btsYes2halfOpening: [Double]? = nil, btsYes2halfClosing: [Double]? = nil, btsNo2halfOpening: [Double]? = nil, btsNo2halfClosing: [Double]? = nil, yellowCardHt: [Int]? = nil, yellowCardAt: [Int]? = nil, redCardHt: [Int]? = nil, redCardAt: [Int]? = nil, cornerKicksHt: [Int]? = nil, cornerKicksAt: [Int]? = nil) {
      self.country = country
      self.league = league
      self.bookmaker = bookmaker
      self.season = season
      self.championship = championship
      self.data = data
      self.time = time
      self.ht = ht
      self.at = at
      self.referee = referee
      self.round = round
      self.htGoalsCount1half = htGoalsCount1half
      self.atGoalsCount1half = atGoalsCount1half
      self.win1half = win1half
      self.htGoalsCount2half = htGoalsCount2half
      self.atGoalsCount2half = atGoalsCount2half
      self.win2half = win2half
      self.htGoalsCountFt = htGoalsCountFt
      self.atGoalsCountFt = atGoalsCountFt
      self.winFt = winFt
      self.htGoalsTime = htGoalsTime
      self.atGoalsTime = atGoalsTime
      self.ht1x2FtOpening = ht1x2FtOpening
      self.ht1x2FtClosing = ht1x2FtClosing
      self.d1x2FtOpening = d1x2FtOpening
      self.d1x2FtClosing = d1x2FtClosing
      self.at1x2FtOpening = at1x2FtOpening
      self.at1x2FtClosing = at1x2FtClosing
      self.ht1x21halfOpening = ht1x21halfOpening
      self.ht1x21halfClosing = ht1x21halfClosing
      self.d1x21halfOpening = d1x21halfOpening
      self.d1x21halfClosing = d1x21halfClosing
      self.at1x21halfOpening = at1x21halfOpening
      self.at1x21halfClosing = at1x21halfClosing
      self.ht1x22halfOpening = ht1x22halfOpening
      self.ht1x22halfClosing = ht1x22halfClosing
      self.d1x22halfOpening = d1x22halfOpening
      self.d1x22halfClosing = d1x22halfClosing
      self.at1x22halfOpening = at1x22halfOpening
      self.at1x22halfClosing = at1x22halfClosing
      self.htHaFtOpening = htHaFtOpening
      self.htHaFtClosing = htHaFtClosing
      self.atHaFtOpening = atHaFtOpening
      self.atHaFtClosing = atHaFtClosing
      self.htHa1halfOpening = htHa1halfOpening
      self.htHa1halfClosing = htHa1halfClosing
      self.atHa1halfOpening = atHa1halfOpening
      self.atHa1halfClosing = atHa1halfClosing
      self.htHa2halfOpening = htHa2halfOpening
      self.htHa2halfClosing = htHa2halfClosing
      self.atHa2halfOpening = atHa2halfOpening
      self.atHa2halfClosing = atHa2halfClosing
      self.over05FtOpening = over05FtOpening
      self.over05FtClosing = over05FtClosing
      self.under05FtOpening = under05FtOpening
      self.under05FtClosing = under05FtClosing
      self.over1FtOpening = over1FtOpening
      self.over1FtClosing = over1FtClosing
      self.under1FtOpening = under1FtOpening
      self.under1FtClosing = under1FtClosing
      self.over15FtOpening = over15FtOpening
      self.over15FtClosing = over15FtClosing
      self.under15FtOpening = under15FtOpening
      self.under15FtClosing = under15FtClosing
      self.over2FtOpening = over2FtOpening
      self.over2FtClosing = over2FtClosing
      self.under2FtOpening = under2FtOpening
      self.under2FtClosing = under2FtClosing
      self.over25FtOpening = over25FtOpening
      self.over25FtClosing = over25FtClosing
      self.under25FtOpening = under25FtOpening
      self.under25FtClosing = under25FtClosing
      self.over3FtOpening = over3FtOpening
      self.over3FtClosing = over3FtClosing
      self.under3FtOpening = under3FtOpening
      self.under3FtClosing = under3FtClosing
      self.over35FtOpening = over35FtOpening
      self.over35FtClosing = over35FtClosing
      self.under35FtOpening = under35FtOpening
      self.under35FtClosing = under35FtClosing
      self.over4FtOpening = over4FtOpening
      self.over4FtClosing = over4FtClosing
      self.under4FtOpening = under4FtOpening
      self.under4FtClosing = under4FtClosing
      self.over45FtOpening = over45FtOpening
      self.over45FtClosing = over45FtClosing
      self.under45FtOpening = under45FtOpening
      self.under45FtClosing = under45FtClosing
      self.over5FtOpening = over5FtOpening
      self.over5FtClosing = over5FtClosing
      self.under5FtOpening = under5FtOpening
      self.under5FtClosing = under5FtClosing
      self.over55FtOpening = over55FtOpening
      self.over55FtClosing = over55FtClosing
      self.under55FtOpening = under55FtOpening
      self.under55FtClosing = under55FtClosing
      self.over051halfOpening = over051halfOpening
      self.over051halfClosing = over051halfClosing
      self.under051halfOpening = under051halfOpening
      self.under051halfClosing = under051halfClosing
      self.over11halfOpening = over11halfOpening
      self.over11halfClosing = over11halfClosing
      self.under11halfOpening = under11halfOpening
      self.under11halfClosing = under11halfClosing
      self.over151halfOpening = over151halfOpening
      self.over151halfClosing = over151halfClosing
      self.under151halfOpening = under151halfOpening
      self.under151halfClosing = under151halfClosing
      self.over21halfOpening = over21halfOpening
      self.over21halfClosing = over21halfClosing
      self.under21halfOpening = under21halfOpening
      self.under21halfClosing = under21halfClosing
      self.over251halfOpening = over251halfOpening
      self.over251halfClosing = over251halfClosing
      self.under251halfOpening = under251halfOpening
      self.under251halfClosing = under251halfClosing
      self.over31halfOpening = over31halfOpening
      self.over31halfClosing = over31halfClosing
      self.under31halfOpening = under31halfOpening
      self.under31halfClosing = under31halfClosing
      self.over351halfOpening = over351halfOpening
      self.over351halfClosing = over351halfClosing
      self.under351halfOpening = under351halfOpening
      self.under351halfClosing = under351halfClosing
      self.over41halfOpening = over41halfOpening
      self.over41halfClosing = over41halfClosing
      self.under41halfOpening = under41halfOpening
      self.under41halfClosing = under41halfClosing
      self.over451halfOpening = over451halfOpening
      self.over451halfClosing = over451halfClosing
      self.under451halfOpening = under451halfOpening
      self.under451halfClosing = under451halfClosing
      self.over51halfOpening = over51halfOpening
      self.over51halfClosing = over51halfClosing
      self.under51halfOpening = under51halfOpening
      self.under51halfClosing = under51halfClosing
      self.over551halfOpening = over551halfOpening
      self.over551halfClosing = over551halfClosing
      self.under551halfOpening = under551halfOpening
      self.under551halfClosing = under551halfClosing
      self.over052halfOpening = over052halfOpening
      self.over052halfClosing = over052halfClosing
      self.under052halfOpening = under052halfOpening
      self.under052halfClosing = under052halfClosing
      self.over12halfOpening = over12halfOpening
      self.over12halfClosing = over12halfClosing
      self.under12halfOpening = under12halfOpening
      self.under12halfClosing = under12halfClosing
      self.over152halfOpening = over152halfOpening
      self.over152halfClosing = over152halfClosing
      self.under152halfOpening = under152halfOpening
      self.under152halfClosing = under152halfClosing
      self.over22halfOpening = over22halfOpening
      self.over22halfClosing = over22halfClosing
      self.under22halfOpening = under22halfOpening
      self.under22halfClosing = under22halfClosing
      self.over252halfOpening = over252halfOpening
      self.over252halfClosing = over252halfClosing
      self.under252halfOpening = under252halfOpening
      self.under252halfClosing = under252halfClosing
      self.over32halfOpening = over32halfOpening
      self.over32halfClosing = over32halfClosing
      self.under32halfOpening = under32halfOpening
      self.under32halfClosing = under32halfClosing
      self.over352halfOpening = over352halfOpening
      self.over352halfClosing = over352halfClosing
      self.under352halfOpening = under352halfOpening
      self.under352halfClosing = under352halfClosing
      self.over42halfOpening = over42halfOpening
      self.over42halfClosing = over42halfClosing
      self.under42halfOpening = under42halfOpening
      self.under42halfClosing = under42halfClosing
      self.over452halfOpening = over452halfOpening
      self.over452halfClosing = over452halfClosing
      self.under452halfOpening = under452halfOpening
      self.under452halfClosing = under452halfClosing
      self.over52halfOpening = over52halfOpening
      self.over52halfClosing = over52halfClosing
      self.under52halfOpening = under52halfOpening
      self.under52halfClosing = under52halfClosing
      self.over552halfOpening = over552halfOpening
      self.over552halfClosing = over552halfClosing
      self.under552halfOpening = under552halfOpening
      self.under552halfClosing = under552halfClosing
      self.dc1xFtOpening = dc1xFtOpening
      self.dc1xFtClosing = dc1xFtClosing
      self.dc12FtOpening = dc12FtOpening
      self.dc12FtClosing = dc12FtClosing
      self.dcX2FtOpening = dcX2FtOpening
      self.dcX2FtClosing = dcX2FtClosing
      self.dc1x1halfOpening = dc1x1halfOpening
      self.dc1x1halfClosing = dc1x1halfClosing
      self.dc121halfOpening = dc121halfOpening
      self.dc121halfClosing = dc121halfClosing
      self.dcX21halfOpening = dcX21halfOpening
      self.dcX21halfClosing = dcX21halfClosing
      self.dc1x2halfOpening = dc1x2halfOpening
      self.dc1x2halfClosing = dc1x2halfClosing
      self.dc122halfOpening = dc122halfOpening
      self.dc122halfClosing = dc122halfClosing
      self.dcX22halfOpening = dcX22halfOpening
      self.dcX22halfClosing = dcX22halfClosing
      self.htft11Opening = htft11Opening
      self.htft11Closing = htft11Closing
      self.htft1XOpening = htft1XOpening
      self.htft1XClosing = htft1XClosing
      self.htft12Opening = htft12Opening
      self.htft12Closing = htft12Closing
      self.htftX1Opening = htftX1Opening
      self.htftX1Closing = htftX1Closing
      self.htftXXOpening = htftXXOpening
      self.htftXXClosing = htftXXClosing
      self.htftX2Opening = htftX2Opening
      self.htftX2Closing = htftX2Closing
      self.htft21Opening = htft21Opening
      self.htft21Closing = htft21Closing
      self.htft2XOpening = htft2XOpening
      self.htft2XClosing = htft2XClosing
      self.htft22Opening = htft22Opening
      self.htft22Closing = htft22Closing
      self.cs66Opening = cs66Opening
      self.cs66Closing = cs66Closing
      self.cs65Opening = cs65Opening
      self.cs65Closing = cs65Closing
      self.cs64Opening = cs64Opening
      self.cs64Closing = cs64Closing
      self.cs63Opening = cs63Opening
      self.cs63Closing = cs63Closing
      self.cs62Opening = cs62Opening
      self.cs62Closing = cs62Closing
      self.cs61Opening = cs61Opening
      self.cs61Closing = cs61Closing
      self.cs60Opening = cs60Opening
      self.cs60Closing = cs60Closing
      self.cs56Opening = cs56Opening
      self.cs56Closing = cs56Closing
      self.cs55Opening = cs55Opening
      self.cs55Closing = cs55Closing
      self.cs54Opening = cs54Opening
      self.cs54Closing = cs54Closing
      self.cs53Opening = cs53Opening
      self.cs53Closing = cs53Closing
      self.cs52Opening = cs52Opening
      self.cs52Closing = cs52Closing
      self.cs51Opening = cs51Opening
      self.cs51Closing = cs51Closing
      self.cs50Opening = cs50Opening
      self.cs50Closing = cs50Closing
      self.cs46Opening = cs46Opening
      self.cs46Closing = cs46Closing
      self.cs45Opening = cs45Opening
      self.cs45Closing = cs45Closing
      self.cs44Opening = cs44Opening
      self.cs44Closing = cs44Closing
      self.cs43Opening = cs43Opening
      self.cs43Closing = cs43Closing
      self.cs42Opening = cs42Opening
      self.cs42Closing = cs42Closing
      self.cs41Opening = cs41Opening
      self.cs41Closing = cs41Closing
      self.cs40Opening = cs40Opening
      self.cs40Closing = cs40Closing
      self.cs36Opening = cs36Opening
      self.cs36Closing = cs36Closing
      self.cs35Opening = cs35Opening
      self.cs35Closing = cs35Closing
      self.cs34Opening = cs34Opening
      self.cs34Closing = cs34Closing
      self.cs33Opening = cs33Opening
      self.cs33Closing = cs33Closing
      self.cs32Opening = cs32Opening
      self.cs32Closing = cs32Closing
      self.cs31Opening = cs31Opening
      self.cs31Closing = cs31Closing
      self.cs30Opening = cs30Opening
      self.cs30Closing = cs30Closing
      self.cs26Opening = cs26Opening
      self.cs26Closing = cs26Closing
      self.cs25Opening = cs25Opening
      self.cs25Closing = cs25Closing
      self.cs24Opening = cs24Opening
      self.cs24Closing = cs24Closing
      self.cs23Opening = cs23Opening
      self.cs23Closing = cs23Closing
      self.cs22Opening = cs22Opening
      self.cs22Closing = cs22Closing
      self.cs21Opening = cs21Opening
      self.cs21Closing = cs21Closing
      self.cs20Opening = cs20Opening
      self.cs20Closing = cs20Closing
      self.cs16Opening = cs16Opening
      self.cs16Closing = cs16Closing
      self.cs15Opening = cs15Opening
      self.cs15Closing = cs15Closing
      self.cs14Opening = cs14Opening
      self.cs14Closing = cs14Closing
      self.cs13Opening = cs13Opening
      self.cs13Closing = cs13Closing
      self.cs12Opening = cs12Opening
      self.cs12Closing = cs12Closing
      self.cs11Opening = cs11Opening
      self.cs11Closing = cs11Closing
      self.cs10Opening = cs10Opening
      self.cs10Closing = cs10Closing
      self.cs00Opening = cs00Opening
      self.cs00Closing = cs00Closing
      self.cs06Opening = cs06Opening
      self.cs06Closing = cs06Closing
      self.cs05Opening = cs05Opening
      self.cs05Closing = cs05Closing
      self.cs04Opening = cs04Opening
      self.cs04Closing = cs04Closing
      self.cs03Opening = cs03Opening
      self.cs03Closing = cs03Closing
      self.cs02Opening = cs02Opening
      self.cs02Closing = cs02Closing
      self.cs01Opening = cs01Opening
      self.cs01Closing = cs01Closing
      self.oddFtOpening = oddFtOpening
      self.oddFtClosing = oddFtClosing
      self.evenFtOpening = evenFtOpening
      self.evenFtClosing = evenFtClosing
      self.odd1halfOpening = odd1halfOpening
      self.odd1halfClosing = odd1halfClosing
      self.even1halfOpening = even1halfOpening
      self.even1halfClosing = even1halfClosing
      self.odd2halfOpening = odd2halfOpening
      self.odd2halfClosing = odd2halfClosing
      self.even2halfOpening = even2halfOpening
      self.even2halfClosing = even2halfClosing
      self.btsYesFtOpening = btsYesFtOpening
      self.btsYesFtClosing = btsYesFtClosing
      self.btsNoFtOpening = btsNoFtOpening
      self.btsNoFtClosing = btsNoFtClosing
      self.btsYes1halfOpening = btsYes1halfOpening
      self.btsYes1halfClosing = btsYes1halfClosing
      self.btsNo1halfOpening = btsNo1halfOpening
      self.btsNo1halfClosing = btsNo1halfClosing
      self.btsYes2halfOpening = btsYes2halfOpening
      self.btsYes2halfClosing = btsYes2halfClosing
      self.btsNo2halfOpening = btsNo2halfOpening
      self.btsNo2halfClosing = btsNo2halfClosing
      self.yellowCardHt = yellowCardHt
      self.yellowCardAt = yellowCardAt
      self.redCardHt = redCardHt
      self.redCardAt = redCardAt
      self.cornerKicksHt = cornerKicksHt
      self.cornerKicksAt = cornerKicksAt
   }
   
   public enum CodingKeys: String, CodingKey, CaseIterable {
      case country
      case league
      case bookmaker
      case season
      case championship
      case data
      case time
      case ht
      case at
      case referee
      case round
      case htGoalsCount1half = "ht_goals_count_1half"
      case atGoalsCount1half = "at_goals_count_1half"
      case win1half = "win_1half"
      case htGoalsCount2half = "ht_goals_count_2half"
      case atGoalsCount2half = "at_goals_count_2half"
      case win2half = "win_2half"
      case htGoalsCountFt = "ht_goals_count_ft"
      case atGoalsCountFt = "at_goals_count_ft"
      case winFt = "win_ft"
      case htGoalsTime = "ht_goals_time"
      case atGoalsTime = "at_goals_time"
      case ht1x2FtOpening = "ht_1x2_ft_opening"
      case ht1x2FtClosing = "ht_1x2_ft_closing"
      case d1x2FtOpening = "d_1x2_ft_opening"
      case d1x2FtClosing = "d_1x2_ft_closing"
      case at1x2FtOpening = "at_1x2_ft_opening"
      case at1x2FtClosing = "at_1x2_ft_closing"
      case ht1x21halfOpening = "ht_1x2_1half_opening"
      case ht1x21halfClosing = "ht_1x2_1half_closing"
      case d1x21halfOpening = "d_1x2_1half_opening"
      case d1x21halfClosing = "d_1x2_1half_closing"
      case at1x21halfOpening = "at_1x2_1half_opening"
      case at1x21halfClosing = "at_1x2_1half_closing"
      case ht1x22halfOpening = "ht_1x2_2half_opening"
      case ht1x22halfClosing = "ht_1x2_2half_closing"
      case d1x22halfOpening = "d_1x2_2half_opening"
      case d1x22halfClosing = "d_1x2_2half_closing"
      case at1x22halfOpening = "at_1x2_2half_opening"
      case at1x22halfClosing = "at_1x2_2half_closing"
      case htHaFtOpening = "ht_ha_ft_opening"
      case htHaFtClosing = "ht_ha_ft_closing"
      case atHaFtOpening = "at_ha_ft_opening"
      case atHaFtClosing = "at_ha_ft_closing"
      case htHa1halfOpening = "ht_ha_1half_opening"
      case htHa1halfClosing = "ht_ha_1half_closing"
      case atHa1halfOpening = "at_ha_1half_opening"
      case atHa1halfClosing = "at_ha_1half_closing"
      case htHa2halfOpening = "ht_ha_2half_opening"
      case htHa2halfClosing = "ht_ha_2half_closing"
      case atHa2halfOpening = "at_ha_2half_opening"
      case atHa2halfClosing = "at_ha_2half_closing"
      case over05FtOpening = "over_0_5_ft_opening"
      case over05FtClosing = "over_0_5_ft_closing"
      case under05FtOpening = "under_0_5_ft_opening"
      case under05FtClosing = "under_0_5_ft_closing"
      case over1FtOpening = "over_1_ft_opening"
      case over1FtClosing = "over_1_ft_closing"
      case under1FtOpening = "under_1_ft_opening"
      case under1FtClosing = "under_1_ft_closing"
      case over15FtOpening = "over_1_5_ft_opening"
      case over15FtClosing = "over_1_5_ft_closing"
      case under15FtOpening = "under_1_5_ft_opening"
      case under15FtClosing = "under_1_5_ft_closing"
      case over2FtOpening = "over_2_ft_opening"
      case over2FtClosing = "over_2_ft_closing"
      case under2FtOpening = "under_2_ft_opening"
      case under2FtClosing = "under_2_ft_closing"
      case over25FtOpening = "over_2_5_ft_opening"
      case over25FtClosing = "over_2_5_ft_closing"
      case under25FtOpening = "under_2_5_ft_opening"
      case under25FtClosing = "under_2_5_ft_closing"
      case over3FtOpening = "over_3_ft_opening"
      case over3FtClosing = "over_3_ft_closing"
      case under3FtOpening = "under_3_ft_opening"
      case under3FtClosing = "under_3_ft_closing"
      case over35FtOpening = "over_3_5_ft_opening"
      case over35FtClosing = "over_3_5_ft_closing"
      case under35FtOpening = "under_3_5_ft_opening"
      case under35FtClosing = "under_3_5_ft_closing"
      case over4FtOpening = "over_4_ft_opening"
      case over4FtClosing = "over_4_ft_closing"
      case under4FtOpening = "under_4_ft_opening"
      case under4FtClosing = "under_4_ft_closing"
      case over45FtOpening = "over_4_5_ft_opening"
      case over45FtClosing = "over_4_5_ft_closing"
      case under45FtOpening = "under_4_5_ft_opening"
      case under45FtClosing = "under_4_5_ft_closing"
      case over5FtOpening = "over_5_ft_opening"
      case over5FtClosing = "over_5_ft_closing"
      case under5FtOpening = "under_5_ft_opening"
      case under5FtClosing = "under_5_ft_closing"
      case over55FtOpening = "over_5_5_ft_opening"
      case over55FtClosing = "over_5_5_ft_closing"
      case under55FtOpening = "under_5_5_ft_opening"
      case under55FtClosing = "under_5_5_ft_closing"
      case over051halfOpening = "over_0_5_1half_opening"
      case over051halfClosing = "over_0_5_1half_closing"
      case under051halfOpening = "under_0_5_1half_opening"
      case under051halfClosing = "under_0_5_1half_closing"
      case over11halfOpening = "over_1_1half_opening"
      case over11halfClosing = "over_1_1half_closing"
      case under11halfOpening = "under_1_1half_opening"
      case under11halfClosing = "under_1_1half_closing"
      case over151halfOpening = "over_1_5_1half_opening"
      case over151halfClosing = "over_1_5_1half_closing"
      case under151halfOpening = "under_1_5_1half_opening"
      case under151halfClosing = "under_1_5_1half_closing"
      case over21halfOpening = "over_2_1half_opening"
      case over21halfClosing = "over_2_1half_closing"
      case under21halfOpening = "under_2_1half_opening"
      case under21halfClosing = "under_2_1half_closing"
      case over251halfOpening = "over_2_5_1half_opening"
      case over251halfClosing = "over_2_5_1half_closing"
      case under251halfOpening = "under_2_5_1half_opening"
      case under251halfClosing = "under_2_5_1half_closing"
      case over31halfOpening = "over_3_1half_opening"
      case over31halfClosing = "over_3_1half_closing"
      case under31halfOpening = "under_3_1half_opening"
      case under31halfClosing = "under_3_1half_closing"
      case over351halfOpening = "over_3_5_1half_opening"
      case over351halfClosing = "over_3_5_1half_closing"
      case under351halfOpening = "under_3_5_1half_opening"
      case under351halfClosing = "under_3_5_1half_closing"
      case over41halfOpening = "over_4_1half_opening"
      case over41halfClosing = "over_4_1half_closing"
      case under41halfOpening = "under_4_1half_opening"
      case under41halfClosing = "under_4_1half_closing"
      case over451halfOpening = "over_4_5_1half_opening"
      case over451halfClosing = "over_4_5_1half_closing"
      case under451halfOpening = "under_4_5_1half_opening"
      case under451halfClosing = "under_4_5_1half_closing"
      case over51halfOpening = "over_5_1half_opening"
      case over51halfClosing = "over_5_1half_closing"
      case under51halfOpening = "under_5_1half_opening"
      case under51halfClosing = "under_5_1half_closing"
      case over551halfOpening = "over_5_5_1half_opening"
      case over551halfClosing = "over_5_5_1half_closing"
      case under551halfOpening = "under_5_5_1half_opening"
      case under551halfClosing = "under_5_5_1half_closing"
      case over052halfOpening = "over_0_5_2half_opening"
      case over052halfClosing = "over_0_5_2half_closing"
      case under052halfOpening = "under_0_5_2half_opening"
      case under052halfClosing = "under_0_5_2half_closing"
      case over12halfOpening = "over_1_2half_opening"
      case over12halfClosing = "over_1_2half_closing"
      case under12halfOpening = "under_1_2half_opening"
      case under12halfClosing = "under_1_2half_closing"
      case over152halfOpening = "over_1_5_2half_opening"
      case over152halfClosing = "over_1_5_2half_closing"
      case under152halfOpening = "under_1_5_2half_opening"
      case under152halfClosing = "under_1_5_2half_closing"
      case over22halfOpening = "over_2_2half_opening"
      case over22halfClosing = "over_2_2half_closing"
      case under22halfOpening = "under_2_2half_opening"
      case under22halfClosing = "under_2_2half_closing"
      case over252halfOpening = "over_2_5_2half_opening"
      case over252halfClosing = "over_2_5_2half_closing"
      case under252halfOpening = "under_2_5_2half_opening"
      case under252halfClosing = "under_2_5_2half_closing"
      case over32halfOpening = "over_3_2half_opening"
      case over32halfClosing = "over_3_2half_closing"
      case under32halfOpening = "under_3_2half_opening"
      case under32halfClosing = "under_3_2half_closing"
      case over352halfOpening = "over_3_5_2half_opening"
      case over352halfClosing = "over_3_5_2half_closing"
      case under352halfOpening = "under_3_5_2half_opening"
      case under352halfClosing = "under_3_5_2half_closing"
      case over42halfOpening = "over_4_2half_opening"
      case over42halfClosing = "over_4_2half_closing"
      case under42halfOpening = "under_4_2half_opening"
      case under42halfClosing = "under_4_2half_closing"
      case over452halfOpening = "over_4_5_2half_opening"
      case over452halfClosing = "over_4_5_2half_closing"
      case under452halfOpening = "under_4_5_2half_opening"
      case under452halfClosing = "under_4_5_2half_closing"
      case over52halfOpening = "over_5_2half_opening"
      case over52halfClosing = "over_5_2half_closing"
      case under52halfOpening = "under_5_2half_opening"
      case under52halfClosing = "under_5_2half_closing"
      case over552halfOpening = "over_5_5_2half_opening"
      case over552halfClosing = "over_5_5_2half_closing"
      case under552halfOpening = "under_5_5_2half_opening"
      case under552halfClosing = "under_5_5_2half_closing"
      case dc1xFtOpening = "dc_1x_ft_opening"
      case dc1xFtClosing = "dc_1x_ft_closing"
      case dc12FtOpening = "dc_12_ft_opening"
      case dc12FtClosing = "dc_12_ft_closing"
      case dcX2FtOpening = "dc_x2_ft_opening"
      case dcX2FtClosing = "dc_x2_ft_closing"
      case dc1x1halfOpening = "dc_1x_1half_opening"
      case dc1x1halfClosing = "dc_1x_1half_closing"
      case dc121halfOpening = "dc_12_1half_opening"
      case dc121halfClosing = "dc_12_1half_closing"
      case dcX21halfOpening = "dc_x2_1half_opening"
      case dcX21halfClosing = "dc_x2_1half_closing"
      case dc1x2halfOpening = "dc_1x_2half_opening"
      case dc1x2halfClosing = "dc_1x_2half_closing"
      case dc122halfOpening = "dc_12_2half_opening"
      case dc122halfClosing = "dc_12_2half_closing"
      case dcX22halfOpening = "dc_x2_2half_opening"
      case dcX22halfClosing = "dc_x2_2half_closing"
      case htft11Opening = "htft_1_1_opening"
      case htft11Closing = "htft_1_1_closing"
      case htft1XOpening = "htft_1_x_opening"
      case htft1XClosing = "htft_1_x_closing"
      case htft12Opening = "htft_1_2_opening"
      case htft12Closing = "htft_1_2_closing"
      case htftX1Opening = "htft_x_1_opening"
      case htftX1Closing = "htft_x_1_closing"
      case htftXXOpening = "htft_x_x_opening"
      case htftXXClosing = "htft_x_x_closing"
      case htftX2Opening = "htft_x_2_opening"
      case htftX2Closing = "htft_x_2_closing"
      case htft21Opening = "htft_2_1_opening"
      case htft21Closing = "htft_2_1_closing"
      case htft2XOpening = "htft_2_x_opening"
      case htft2XClosing = "htft_2_x_closing"
      case htft22Opening = "htft_2_2_opening"
      case htft22Closing = "htft_2_2_closing"
      case cs66Opening = "cs_6_6_opening"
      case cs66Closing = "cs_6_6_closing"
      case cs65Opening = "cs_6_5_opening"
      case cs65Closing = "cs_6_5_closing"
      case cs64Opening = "cs_6_4_opening"
      case cs64Closing = "cs_6_4_closing"
      case cs63Opening = "cs_6_3_opening"
      case cs63Closing = "cs_6_3_closing"
      case cs62Opening = "cs_6_2_opening"
      case cs62Closing = "cs_6_2_closing"
      case cs61Opening = "cs_6_1_opening"
      case cs61Closing = "cs_6_1_closing"
      case cs60Opening = "cs_6_0_opening"
      case cs60Closing = "cs_6_0_closing"
      case cs56Opening = "cs_5_6_opening"
      case cs56Closing = "cs_5_6_closing"
      case cs55Opening = "cs_5_5_opening"
      case cs55Closing = "cs_5_5_closing"
      case cs54Opening = "cs_5_4_opening"
      case cs54Closing = "cs_5_4_closing"
      case cs53Opening = "cs_5_3_opening"
      case cs53Closing = "cs_5_3_closing"
      case cs52Opening = "cs_5_2_opening"
      case cs52Closing = "cs_5_2_closing"
      case cs51Opening = "cs_5_1_opening"
      case cs51Closing = "cs_5_1_closing"
      case cs50Opening = "cs_5_0_opening"
      case cs50Closing = "cs_5_0_closing"
      case cs46Opening = "cs_4_6_opening"
      case cs46Closing = "cs_4_6_closing"
      case cs45Opening = "cs_4_5_opening"
      case cs45Closing = "cs_4_5_closing"
      case cs44Opening = "cs_4_4_opening"
      case cs44Closing = "cs_4_4_closing"
      case cs43Opening = "cs_4_3_opening"
      case cs43Closing = "cs_4_3_closing"
      case cs42Opening = "cs_4_2_opening"
      case cs42Closing = "cs_4_2_closing"
      case cs41Opening = "cs_4_1_opening"
      case cs41Closing = "cs_4_1_closing"
      case cs40Opening = "cs_4_0_opening"
      case cs40Closing = "cs_4_0_closing"
      case cs36Opening = "cs_3_6_opening"
      case cs36Closing = "cs_3_6_closing"
      case cs35Opening = "cs_3_5_opening"
      case cs35Closing = "cs_3_5_closing"
      case cs34Opening = "cs_3_4_opening"
      case cs34Closing = "cs_3_4_closing"
      case cs33Opening = "cs_3_3_opening"
      case cs33Closing = "cs_3_3_closing"
      case cs32Opening = "cs_3_2_opening"
      case cs32Closing = "cs_3_2_closing"
      case cs31Opening = "cs_3_1_opening"
      case cs31Closing = "cs_3_1_closing"
      case cs30Opening = "cs_3_0_opening"
      case cs30Closing = "cs_3_0_closing"
      case cs26Opening = "cs_2_6_opening"
      case cs26Closing = "cs_2_6_closing"
      case cs25Opening = "cs_2_5_opening"
      case cs25Closing = "cs_2_5_closing"
      case cs24Opening = "cs_2_4_opening"
      case cs24Closing = "cs_2_4_closing"
      case cs23Opening = "cs_2_3_opening"
      case cs23Closing = "cs_2_3_closing"
      case cs22Opening = "cs_2_2_opening"
      case cs22Closing = "cs_2_2_closing"
      case cs21Opening = "cs_2_1_opening"
      case cs21Closing = "cs_2_1_closing"
      case cs20Opening = "cs_2_0_opening"
      case cs20Closing = "cs_2_0_closing"
      case cs16Opening = "cs_1_6_opening"
      case cs16Closing = "cs_1_6_closing"
      case cs15Opening = "cs_1_5_opening"
      case cs15Closing = "cs_1_5_closing"
      case cs14Opening = "cs_1_4_opening"
      case cs14Closing = "cs_1_4_closing"
      case cs13Opening = "cs_1_3_opening"
      case cs13Closing = "cs_1_3_closing"
      case cs12Opening = "cs_1_2_opening"
      case cs12Closing = "cs_1_2_closing"
      case cs11Opening = "cs_1_1_opening"
      case cs11Closing = "cs_1_1_closing"
      case cs10Opening = "cs_1_0_opening"
      case cs10Closing = "cs_1_0_closing"
      case cs00Opening = "cs_0_0_opening"
      case cs00Closing = "cs_0_0_closing"
      case cs06Opening = "cs_0_6_opening"
      case cs06Closing = "cs_0_6_closing"
      case cs05Opening = "cs_0_5_opening"
      case cs05Closing = "cs_0_5_closing"
      case cs04Opening = "cs_0_4_opening"
      case cs04Closing = "cs_0_4_closing"
      case cs03Opening = "cs_0_3_opening"
      case cs03Closing = "cs_0_3_closing"
      case cs02Opening = "cs_0_2_opening"
      case cs02Closing = "cs_0_2_closing"
      case cs01Opening = "cs_0_1_opening"
      case cs01Closing = "cs_0_1_closing"
      case oddFtOpening = "odd_ft_opening"
      case oddFtClosing = "odd_ft_closing"
      case evenFtOpening = "even_ft_opening"
      case evenFtClosing = "even_ft_closing"
      case odd1halfOpening = "odd_1half_opening"
      case odd1halfClosing = "odd_1half_closing"
      case even1halfOpening = "even_1half_opening"
      case even1halfClosing = "even_1half_closing"
      case odd2halfOpening = "odd_2half_opening"
      case odd2halfClosing = "odd_2half_closing"
      case even2halfOpening = "even_2half_opening"
      case even2halfClosing = "even_2half_closing"
      case btsYesFtOpening = "bts_yes_ft_opening"
      case btsYesFtClosing = "bts_yes_ft_closing"
      case btsNoFtOpening = "bts_no_ft_opening"
      case btsNoFtClosing = "bts_no_ft_closing"
      case btsYes1halfOpening = "bts_yes_1half_opening"
      case btsYes1halfClosing = "bts_yes_1half_closing"
      case btsNo1halfOpening = "bts_no_1half_opening"
      case btsNo1halfClosing = "bts_no_1half_closing"
      case btsYes2halfOpening = "bts_yes_2half_opening"
      case btsYes2halfClosing = "bts_yes_2half_closing"
      case btsNo2halfOpening = "bts_no_2half_opening"
      case btsNo2halfClosing = "bts_no_2half_closing"
      case yellowCardHt = "yellow_card_ht"
      case yellowCardAt = "yellow_card_at"
      case redCardHt = "red_card_ht"
      case redCardAt = "red_card_at"
      case cornerKicksHt = "corner_kicks_ht"
      case cornerKicksAt = "corner_kicks_at"
   }
}

