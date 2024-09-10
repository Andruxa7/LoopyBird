//
//  GameSettings.swift
//  LoopyBird
//
//  Created by Andrii Stetsenko on 11.09.2024.
//

import Foundation

struct GameSettings {
    /// Ширина трубы.
    let pipeWidth: Double
    /// Минимальная высота трубы.
    let minPipeHeight: Double
    /// Максимальная высота трубы.
    let maxPipeHeight: Double
    /// Расстояние между трубами.
    let pipeSpacing: Double
    /// Скорость движения труб.
    let pipeSpeed: Double
    /// Сила прыжка птицы.
    let jumpVelocity: Int
    /// Сила гравитации.
    let gravity: Double
    /// Высота грунта.
    let groundHeight: Double
    /// Размер представления птицы.
    let birdSize: Double
    /// Реальный радиус птицы.
    let birdRadius: Double
    
    /// Возвращает экземпляр `GameSettings` с настройками по умолчанию (легкая сложность).
    static var defaultSettings: GameSettings {
        GameSettings(
            pipeWidth: 100,        // Ширина трубы по умолчанию
            minPipeHeight: 100,    // Минимальная высота трубы по умолчанию
            maxPipeHeight: 500,    // Максимальная высота трубы по умолчанию
            pipeSpacing: 180,      // Расстояние между трубами по умолчанию
            pipeSpeed: 200,        // Скорость движения труб по умолчанию
            jumpVelocity: -400,    // Сила прыжка птицы по умолчанию
            gravity: 1000,         // Сила гравитации по умолчанию
            groundHeight: 100,     // Высота грунта по умолчанию
            birdSize: 70,          // Размер представления птицы по умолчанию
            birdRadius: 13         // Радиус птицы по умолчанию
        )
    }
    
    /// Возвращает экземпляр `GameSettings` с настройками по средней сложности.
    static var mediumSettings: GameSettings {
        GameSettings(
            pipeWidth: 100,        // Ширина трубы по средним настройкам
            minPipeHeight: 100,    // Минимальная высота трубы по средним настройкам
            maxPipeHeight: 500,    // Максимальная высота трубы по средним настройкам
            pipeSpacing: 140,      // Расстояние между трубами по средним настройкам
            pipeSpeed: 260,        // Скорость движения труб по средним настройкам
            jumpVelocity: -400,    // Сила прыжка птицы по средним настройкам
            gravity: 1000,         // Сила гравитации по средним настройкам
            groundHeight: 100,     // Высота грунта по средним настройкам
            birdSize: 70,          // Размер представления птицы по средним настройкам
            birdRadius: 13         // Радиус птицы по средним настройкам
        )
    }
    
    /// Возвращает экземпляр `GameSettings` с настройками по тяжелой сложности.
    static var hardSettings: GameSettings {
        GameSettings(
            pipeWidth: 100,        // Ширина трубы по средним настройкам
            minPipeHeight: 100,    // Минимальная высота трубы по средним настройкам
            maxPipeHeight: 500,    // Максимальная высота трубы по средним настройкам
            pipeSpacing: 100,      // Расстояние между трубами по средним настройкам
            pipeSpeed: 300,        // Скорость движения труб по средним настройкам
            jumpVelocity: -400,    // Сила прыжка птицы по средним настройкам
            gravity: 1000,         // Сила гравитации по средним настройкам
            groundHeight: 100,     // Высота грунта по средним настройкам
            birdSize: 70,          // Размер представления птицы по средним настройкам
            birdRadius: 13         // Радиус птицы по средним настройкам
        )
    }
}
