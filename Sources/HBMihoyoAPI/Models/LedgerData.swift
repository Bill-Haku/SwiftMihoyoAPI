//
//  LedgerData.swift
//  
//
//  Created by Bill Haku on 2023/3/26.
//

import Foundation

struct LedgerData: Codable {
    struct MonthData: Codable {
        struct LedgerDataGroup: Codable {
            var percent: Int
            var num: Int
            var actionId: Int
            var action: String
        }

        var currentPrimogems: Int
        /// 国际服没有
        var currentPrimogemsLevel: Int?
        var lastMora: Int
        /// 国服使用
        var primogemsRate: Int?
        /// 国际服使用
        var primogemRate: Int?
        var moraRate: Int
        var groupBy: [LedgerDataGroup]
        var lastPrimogems: Int
        var currentMora: Int
    }

    struct DayData: Codable {
        var currentMora: Int
        /// 国际服没有
        var lastPrimogems: Int?
        /// 国际服没有
        var lastMora: Int?
        var currentPrimogems: Int
    }

    var uid: Int
    var monthData: MonthData
    var dataMonth: Int
    /// 国际服没有
    var date: String?
    /// 国际服没有
    var dataLastMonth: Int?
    var region: String
    var optionalMonth: [Int]
    var month: Int
    var nickname: String
    /// 国际服没有
    var accountId: Int?
    /// 国际服没有
    var lantern: Bool?
    var dayData: DayData
}
