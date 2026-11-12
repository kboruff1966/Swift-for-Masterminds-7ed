//
//  NHLTeamData.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import Playgrounds
import SwiftUI

/// The NHL package's resource bundle. `Bundle.module` is internal to the
/// package, so this exposes it to clients that need to load its assets.
public let nhlBundle = Bundle.module

public let nhlImageNames = [

    "BostonBruins",
    "BuffaloSabres",
    "DetroitRedWings",
    "FloridaPanthers",
    "MontrealCanadiens",
    "OttawaSenators",
    "TampaBayLightning",
    "TorontoMapleLeafs",
    "CarolinaHurricanes",
    "ColumbusBlueJackets",
    "NewJerseyDevils",
    "NewYorkIslanders",
    "NewYorkRangers",
    "PhiladelphiaFlyers",
    "PittsburghPenguins",
    "WashingtonCapitals",
    "UtahMammoth",
    "ChicagoBlackhawks",
    "ColoradoAvalanche",
    "DallasStars",
    "MinnesotaWild",
    "NashvillePredators",
    "StLouisBlues",
    "WinnipegJets",
    "AnaheimDucks",
    "CalgaryFlames",
    "EdmontonOilers",
    "LosAngelesKings",
    "SanJoseSharks",
    "SeattleKraken",
    "VancouverCanucks",
    "VegasGoldenKnights",
]

public struct Player: Identifiable, Hashable, Sendable {

    public let id = UUID()

    public let name: String
    public let position: Position
    public let number: Int

    public enum Position: String, Hashable, Sendable {

        case center = "C"
        case leftWing = "LW"
        case rightWing = "RW"
        case defenseman = "D"
        case goalie = "G"
    }
}

public struct NHLTeam: Identifiable, Hashable, Sendable {

    public nonisolated let id = UUID()

    public nonisolated let name: String

    public nonisolated var arena: String
    public nonisolated var logo: String

    public nonisolated var division: Division

    public nonisolated var coach: String
    public var players: [Player]

    public enum Division: String, Hashable, Sendable {

        case atlantic = "Atlantic"
        case metropolitan = "Metropolitan"
        case central = "Central"
        case pacific = "Pacific"
    }
}

@Observable
public class NHLTeamData {

    public nonisolated(unsafe) static let shared = NHLTeamData()
    private init() {}

    public var teams: [NHLTeam] =
        atlanticDivision() + metropolitanDivision() + centralDivision()
        + pacificDivision()

}

func atlanticDivision() -> [NHLTeam] {
    return [
        NHLTeam(
            name: "Boston Bruins",
            arena: "TD Garden",
            logo: "BostonBruins",
            division: .atlantic,
            coach: "Marco Sturm",
            players: [
                Player(
                    name: "David Pastrnak",
                    position: .rightWing,
                    number: 88
                ),
                Player(
                    name: "Charlie McAvoy",
                    position: .defenseman,
                    number: 73
                ),
                Player(name: "Elias Lindholm", position: .leftWing, number: 28),
                Player(name: "Morgan Geekie", position: .center, number: 39),
                Player(name: "Jeremy Swayman", position: .goalie, number: 1),
                Player(name: "Pavel Zacha", position: .center, number: 18),
                Player(
                    name: "Brandon Carlo",
                    position: .defenseman,
                    number: 25
                ),
                Player(name: "Mason Lohrei", position: .defenseman, number: 6),
                Player(name: "Matthew Poitras", position: .center, number: 51),
                Player(name: "Johnny Beecher", position: .center, number: 19),
            ]
        ),

        NHLTeam(
            name: "Buffalo Sabres",
            arena: "KeyBank Center",
            logo: "BuffaloSabres",
            division: .atlantic,
            coach: "Lindy Ruff",
            players: [
                Player(
                    name: "Rasmus Dahlin",
                    position: .defenseman,
                    number: 26
                ),
                Player(name: "Tage Thompson", position: .center, number: 72),
                Player(name: "Alex Tuch", position: .rightWing, number: 89),
                Player(name: "JJ Peterka", position: .rightWing, number: 14),
                Player(name: "Bowen Byram", position: .defenseman, number: 4),
                Player(name: "Dylan Cozens", position: .center, number: 24),
                Player(name: "Jack Quinn", position: .rightWing, number: 22),
                Player(name: "Owen Power", position: .defenseman, number: 25),
                Player(name: "Jiri Kulich", position: .center, number: 71),
                Player(name: "Zach Benson", position: .leftWing, number: 9),
            ]
        ),

        NHLTeam(
            name: "Detroit Red Wings",
            arena: "Little Caesars Arena",
            logo: "DetroitRedWings",
            division: .atlantic,
            coach: "Todd McLellan",
            players: [
                Player(name: "Dylan Larkin", position: .center, number: 71),
                Player(name: "Lucas Raymond", position: .rightWing, number: 23),
                Player(
                    name: "Moritz Seider",
                    position: .defenseman,
                    number: 53
                ),
                Player(
                    name: "Simon Edvinsson",
                    position: .defenseman,
                    number: 77
                ),
                Player(name: "J.T. Compher", position: .center, number: 37),
                Player(name: "Alex DeBrincat", position: .leftWing, number: 93),
                Player(
                    name: "Michael Rasmussen",
                    position: .center,
                    number: 27
                ),
                Player(name: "Andrew Copp", position: .center, number: 18),
                Player(name: "Ben Chiarot", position: .defenseman, number: 8),
                Player(name: "Cam Talbot", position: .goalie, number: 39),
            ]
        ),

        NHLTeam(
            name: "Florida Panthers",
            arena: "Amerant Bank Arena",
            logo: "FloridaPanthers",
            division: .atlantic,
            coach: "Paul Maurice",
            players: [
                Player(
                    name: "Matthew Tkachuk",
                    position: .leftWing,
                    number: 19
                ),
                Player(name: "Sam Reinhart", position: .center, number: 13),
                Player(
                    name: "Aleksander Barkov",
                    position: .center,
                    number: 16
                ),
                Player(
                    name: "Carter Verhaeghe",
                    position: .leftWing,
                    number: 23
                ),
                Player(name: "Sergei Bobrovsky", position: .goalie, number: 72),
                Player(name: "Anton Lundell", position: .center, number: 15),
                Player(
                    name: "Evan Rodrigues",
                    position: .rightWing,
                    number: 17
                ),
                Player(
                    name: "Gustav Forsling",
                    position: .defenseman,
                    number: 42
                ),
                Player(name: "Niko Mikkola", position: .defenseman, number: 77),
                Player(name: "Aaron Ekblad", position: .defenseman, number: 5),
            ]
        ),

        NHLTeam(
            name: "Montreal Canadiens",
            arena: "Bell Centre",
            logo: "MontrealCanadiens",
            division: .atlantic,
            coach: "Martin St. Louis",
            players: [
                Player(name: "Nick Suzuki", position: .center, number: 14),
                Player(name: "Cole Caufield", position: .rightWing, number: 22),
                Player(
                    name: "Juraj Slafkovsky",
                    position: .leftWing,
                    number: 20
                ),
                Player(name: "Lane Hutson", position: .defenseman, number: 48),
                Player(name: "Kirby Dach", position: .center, number: 77),
                Player(name: "Mike Matheson", position: .defenseman, number: 8),
                Player(name: "Patrik Laine", position: .rightWing, number: 44),
                Player(name: "Josh Anderson", position: .rightWing, number: 17),
                Player(name: "Jake Evans", position: .center, number: 71),
                Player(name: "Sam Montembeault", position: .goalie, number: 35),
            ]
        ),

        NHLTeam(
            name: "Ottawa Senators",
            arena: "Canadian Tire Centre",
            logo: "OttawaSenators",
            division: .atlantic,
            coach: "Travis Green",
            players: [
                Player(name: "Tim Stützle", position: .center, number: 18),
                Player(name: "Brady Tkachuk", position: .leftWing, number: 7),
                Player(name: "Claude Giroux", position: .rightWing, number: 28),
                Player(
                    name: "Drake Batherson",
                    position: .rightWing,
                    number: 19
                ),
                Player(
                    name: "Jake Sanderson",
                    position: .defenseman,
                    number: 85
                ),
                Player(name: "Josh Norris", position: .center, number: 9),
                Player(
                    name: "Thomas Chabot",
                    position: .defenseman,
                    number: 72
                ),
                Player(name: "Artem Zub", position: .defenseman, number: 2),
                Player(name: "Shane Pinto", position: .center, number: 57),
                Player(name: "Linus Ullmark", position: .goalie, number: 35),
            ]
        ),

        NHLTeam(
            name: "Tampa Bay Lightning",
            arena: "Benchmark International Arena",
            logo: "TampaBayLightning",
            division: .atlantic,
            coach: "Jon Cooper",
            players: [
                Player(
                    name: "Nikita Kucherov",
                    position: .rightWing,
                    number: 86
                ),
                Player(
                    name: "Victor Hedman",
                    position: .defenseman,
                    number: 77
                ),
                Player(name: "Brayden Point", position: .center, number: 21),
                Player(name: "Jake Guentzel", position: .leftWing, number: 59),
                Player(
                    name: "Andrei Vasilevskiy",
                    position: .goalie,
                    number: 88
                ),
                Player(name: "Brandon Hagel", position: .leftWing, number: 38),
                Player(name: "Anthony Cirelli", position: .center, number: 71),
                Player(
                    name: "Ryan McDonagh",
                    position: .defenseman,
                    number: 27
                ),
                Player(name: "Nick Paul", position: .leftWing, number: 20),
                Player(name: "Erik Cernak", position: .defenseman, number: 81),
            ]
        ),

        NHLTeam(
            name: "Toronto Maple Leafs",
            arena: "Scotiabank Arena",
            logo: "TorontoMapleLeafs",
            division: .atlantic,
            coach: "Jim Hiller",
            players: [
                Player(name: "Auston Matthews", position: .center, number: 34),
                Player(
                    name: "William Nylander",
                    position: .rightWing,
                    number: 88
                ),
                Player(name: "Matthew Knies", position: .leftWing, number: 23),
                Player(name: "John Tavares", position: .center, number: 91),
                Player(
                    name: "Morgan Rielly",
                    position: .defenseman,
                    number: 44
                ),
                Player(name: "Max Domi", position: .center, number: 11),
                Player(name: "Jake McCabe", position: .defenseman, number: 22),
                Player(name: "Chris Tanev", position: .defenseman, number: 8),
                Player(name: "Bobby McMann", position: .leftWing, number: 74),
                Player(name: "Anthony Stolarz", position: .goalie, number: 41),
            ]
        ),
    ]
}

func metropolitanDivision() -> [NHLTeam] {
    return [
        NHLTeam(
            name: "Carolina Hurricanes",
            arena: "Lenovo Center",
            logo: "CarolinaHurricanes",
            division: .metropolitan,
            coach: "Rod Brind'Amour",
            players: [
                Player(name: "Sebastian Aho", position: .center, number: 20),
                Player(
                    name: "Andrei Svechnikov",
                    position: .leftWing,
                    number: 37
                ),
                Player(name: "Jordan Staal", position: .center, number: 11),
                Player(name: "Seth Jarvis", position: .rightWing, number: 24),
                Player(
                    name: "Frederik Andersen",
                    position: .goalie,
                    number: 31
                ),
                Player(name: "Jackson Blake", position: .rightWing, number: 53),
                Player(
                    name: "Jaccob Slavin",
                    position: .defenseman,
                    number: 74
                ),
                Player(name: "Brent Burns", position: .defenseman, number: 8),
                Player(name: "Taylor Hall", position: .leftWing, number: 71),
                Player(name: "Pyotr Kochetkov", position: .goalie, number: 52),
            ]
        ),

        NHLTeam(
            name: "Columbus Blue Jackets",
            arena: "Nationwide Arena",
            logo: "ColumbusBlueJackets",
            division: .metropolitan,
            coach: "Rick Bowness",
            players: [
                Player(name: "Zach Werenski", position: .defenseman, number: 8),
                Player(
                    name: "Kirill Marchenko",
                    position: .rightWing,
                    number: 86
                ),
                Player(name: "Boone Jenner", position: .center, number: 38),
                Player(name: "Adam Fantilli", position: .center, number: 19),
                Player(
                    name: "Dmitri Voronkov",
                    position: .leftWing,
                    number: 10
                ),
                Player(name: "Ivan Provorov", position: .defenseman, number: 9),
                Player(name: "Cole Sillinger", position: .center, number: 4),
                Player(
                    name: "Yegor Chinakhov",
                    position: .rightWing,
                    number: 59
                ),
                Player(
                    name: "Erik Gudbranson",
                    position: .defenseman,
                    number: 44
                ),
                Player(name: "Elvis Merzlikins", position: .goalie, number: 90),
            ]
        ),

        NHLTeam(
            name: "New Jersey Devils",
            arena: "Prudential Center",
            logo: "NewJerseyDevils",
            division: .metropolitan,
            coach: "Sheldon Keefe",
            players: [
                Player(name: "Jack Hughes", position: .center, number: 86),
                Player(name: "Nico Hischier", position: .center, number: 13),
                Player(name: "Jesper Bratt", position: .leftWing, number: 63),
                Player(
                    name: "Dougie Hamilton",
                    position: .defenseman,
                    number: 7
                ),
                Player(name: "Luke Hughes", position: .defenseman, number: 43),
                Player(name: "Timo Meier", position: .leftWing, number: 28),
                Player(name: "Ondrej Palat", position: .leftWing, number: 18),
                Player(
                    name: "Jonas Siegenthaler",
                    position: .defenseman,
                    number: 71
                ),
                Player(name: "Jake Allen", position: .goalie, number: 34),
                Player(name: "Stefan Noesen", position: .rightWing, number: 23),
            ]
        ),

        NHLTeam(
            name: "New York Islanders",
            arena: "UBS Arena",
            logo: "NewYorkIslanders",
            division: .metropolitan,
            coach: "Patrick Roy",
            players: [
                Player(name: "Mathew Barzal", position: .center, number: 13),
                Player(name: "Bo Horvat", position: .center, number: 14),
                Player(name: "Anders Lee", position: .leftWing, number: 27),
                Player(name: "Noah Dobson", position: .defenseman, number: 8),
                Player(name: "Ilya Sorokin", position: .goalie, number: 30),
                Player(name: "Kyle Palmieri", position: .rightWing, number: 21),
                Player(
                    name: "Simon Holmstrom",
                    position: .rightWing,
                    number: 42
                ),
                Player(name: "Ryan Pulock", position: .defenseman, number: 6),
                Player(name: "Adam Pelech", position: .defenseman, number: 3),
                Player(name: "Semyon Varlamov", position: .goalie, number: 40),
            ]
        ),

        NHLTeam(
            name: "New York Rangers",
            arena: "Madison Square Garden",
            logo: "NewYorkRangers",
            division: .metropolitan,
            coach: "Mike Sullivan",
            players: [
                Player(name: "Artemi Panarin", position: .leftWing, number: 10),
                Player(name: "Igor Shesterkin", position: .goalie, number: 31),
                Player(name: "Mika Zibanejad", position: .center, number: 93),
                Player(name: "Adam Fox", position: .defenseman, number: 23),
                Player(name: "Vincent Trocheck", position: .center, number: 16),
                Player(name: "Chris Kreider", position: .leftWing, number: 20),
                Player(name: "Will Cuylle", position: .leftWing, number: 26),
                Player(
                    name: "Braden Schneider",
                    position: .defenseman,
                    number: 4
                ),
                Player(
                    name: "K'Andre Miller",
                    position: .defenseman,
                    number: 79
                ),
                Player(
                    name: "Alexis Lafreniere",
                    position: .leftWing,
                    number: 13
                ),
            ]
        ),

        NHLTeam(
            name: "Philadelphia Flyers",
            arena: "Xfinity Mobile Arena",
            logo: "PhiladelphiaFlyers",
            division: .metropolitan,
            coach: "Rick Tocchet",
            players: [
                Player(
                    name: "Travis Konecny",
                    position: .rightWing,
                    number: 11
                ),
                Player(
                    name: "Travis Sanheim",
                    position: .defenseman,
                    number: 6
                ),
                Player(name: "Sean Couturier", position: .center, number: 14),
                Player(name: "Owen Tippett", position: .rightWing, number: 74),
                Player(
                    name: "Matvei Michkov",
                    position: .rightWing,
                    number: 39
                ),
                Player(name: "Cam York", position: .defenseman, number: 8),
                Player(name: "Ryan Poehling", position: .center, number: 25),
                Player(
                    name: "Rasmus Ristolainen",
                    position: .defenseman,
                    number: 55
                ),
                Player(name: "Samuel Ersson", position: .goalie, number: 33),
                Player(name: "Bobby Brink", position: .rightWing, number: 72),
            ]
        ),

        NHLTeam(
            name: "Pittsburgh Penguins",
            arena: "PPG Paints Arena",
            logo: "PittsburghPenguins",
            division: .metropolitan,
            coach: "Dan Muse",
            players: [
                Player(name: "Sidney Crosby", position: .center, number: 87),
                Player(name: "Evgeni Malkin", position: .center, number: 71),
                Player(name: "Rickard Rakell", position: .leftWing, number: 67),
                Player(
                    name: "Erik Karlsson",
                    position: .defenseman,
                    number: 65
                ),
                Player(name: "Bryan Rust", position: .rightWing, number: 17),
                Player(name: "Kris Letang", position: .defenseman, number: 58),
                Player(name: "Tristan Jarry", position: .goalie, number: 35),
                Player(
                    name: "Anthony Beauvillier",
                    position: .leftWing,
                    number: 72
                ),
                Player(
                    name: "Rutger McGroarty",
                    position: .leftWing,
                    number: 57
                ),
                Player(
                    name: "Ville Koivunen",
                    position: .rightWing,
                    number: 64
                ),
            ]
        ),

        NHLTeam(
            name: "Washington Capitals",
            arena: "Capital One Arena",
            logo: "WashingtonCapitals",
            division: .metropolitan,
            coach: "Spencer Carbery",
            players: [
                Player(name: "Alex Ovechkin", position: .leftWing, number: 8),
                Player(name: "Tom Wilson", position: .rightWing, number: 43),
                Player(name: "Dylan Strome", position: .center, number: 17),
                Player(name: "John Carlson", position: .defenseman, number: 74),
                Player(name: "Logan Thompson", position: .goalie, number: 48),
                Player(
                    name: "Aliaksei Protas",
                    position: .leftWing,
                    number: 21
                ),
                Player(name: "Connor McMichael", position: .center, number: 24),
                Player(
                    name: "Martin Fehervary",
                    position: .defenseman,
                    number: 42
                ),
                Player(
                    name: "Rasmus Sandin",
                    position: .defenseman,
                    number: 38
                ),
                Player(
                    name: "Pierre-Luc Dubois",
                    position: .center,
                    number: 80
                ),
            ]
        ),
    ]
}

func centralDivision() -> [NHLTeam] {
    return [
        NHLTeam(
            name: "Utah Mammoth",
            arena: "Delta Center",
            logo: "UtahMammoth",
            division: .central,
            coach: "André Tourigny",
            players: [
                Player(name: "Clayton Keller", position: .center, number: 9),
                Player(name: "Logan Cooley", position: .center, number: 92),
                Player(name: "Dylan Guenther", position: .leftWing, number: 11),
                Player(name: "Jack McBain", position: .center, number: 22),
                Player(name: "Karel Vejmelka", position: .goalie, number: 70),
                Player(name: "Nick Schmaltz", position: .center, number: 8),
                Player(name: "Josh Doan", position: .rightWing, number: 17),
                Player(
                    name: "Michael Kesselring",
                    position: .defenseman,
                    number: 73
                ),
                Player(name: "John Marino", position: .defenseman, number: 6),
                Player(name: "Connor Ingram", position: .goalie, number: 39),
            ]
        ),

        NHLTeam(
            name: "Chicago Blackhawks",
            arena: "United Center",
            logo: "ChicagoBlackhawks",
            division: .central,
            coach: "Jeff Blashill",
            players: [
                Player(name: "Connor Bedard", position: .center, number: 98),
                Player(name: "Frank Nazar", position: .center, number: 91),
                Player(name: "Tyler Bertuzzi", position: .leftWing, number: 59),
                Player(name: "Seth Jones", position: .defenseman, number: 4),
                Player(name: "Petr Mrazek", position: .goalie, number: 34),
                Player(name: "Lukas Reichel", position: .leftWing, number: 27),
                Player(name: "Ryan Donato", position: .center, number: 9),
                Player(name: "Alex Vlasic", position: .defenseman, number: 72),
                Player(
                    name: "Kevin Korchinski",
                    position: .defenseman,
                    number: 58
                ),
                Player(name: "Spencer Knight", position: .goalie, number: 30),
            ]
        ),

        NHLTeam(
            name: "Colorado Avalanche",
            arena: "Ball Arena",
            logo: "ColoradoAvalanche",
            division: .central,
            coach: "Jared Bednar",
            players: [
                Player(name: "Nathan MacKinnon", position: .center, number: 29),
                Player(name: "Cale Makar", position: .defenseman, number: 8),
                Player(
                    name: "Artturi Lehkonen",
                    position: .leftWing,
                    number: 62
                ),
                Player(name: "Devon Toews", position: .defenseman, number: 7),
                Player(name: "Martin Necas", position: .rightWing, number: 88),
                Player(
                    name: "Jonathan Drouin",
                    position: .leftWing,
                    number: 27
                ),
                Player(
                    name: "Logan O'Connor",
                    position: .rightWing,
                    number: 25
                ),
                Player(
                    name: "Samuel Girard",
                    position: .defenseman,
                    number: 49
                ),
                Player(name: "Scott Wedgewood", position: .goalie, number: 41),
                Player(name: "Ross Colton", position: .center, number: 20),
            ]
        ),

        NHLTeam(
            name: "Dallas Stars",
            arena: "American Airlines Center",
            logo: "DallasStars",
            division: .central,
            coach: "Glen Gulutzan",
            players: [
                Player(
                    name: "Jason Robertson",
                    position: .leftWing,
                    number: 21
                ),
                Player(name: "Roope Hintz", position: .center, number: 24),
                Player(name: "Wyatt Johnston", position: .center, number: 53),
                Player(
                    name: "Miro Heiskanen",
                    position: .defenseman,
                    number: 4
                ),
                Player(name: "Jake Oettinger", position: .goalie, number: 29),
                Player(
                    name: "Mikko Rantanen",
                    position: .rightWing,
                    number: 96
                ),
                Player(name: "Tyler Seguin", position: .center, number: 91),
                Player(name: "Matt Duchene", position: .center, number: 95),
                Player(
                    name: "Thomas Harley",
                    position: .defenseman,
                    number: 55
                ),
                Player(name: "Esa Lindell", position: .defenseman, number: 23),
            ]
        ),

        NHLTeam(
            name: "Minnesota Wild",
            arena: "Xcel Energy Center",
            logo: "MinnesotaWild",
            division: .central,
            coach: "John Hynes",
            players: [
                Player(
                    name: "Kirill Kaprizov",
                    position: .leftWing,
                    number: 97
                ),
                Player(name: "Joel Eriksson Ek", position: .center, number: 14),
                Player(name: "Marco Rossi", position: .center, number: 23),
                Player(name: "Jonas Brodin", position: .defenseman, number: 25),
                Player(name: "Matt Boldy", position: .leftWing, number: 12),
                Player(
                    name: "Mats Zuccarello",
                    position: .rightWing,
                    number: 36
                ),
                Player(
                    name: "Jared Spurgeon",
                    position: .defenseman,
                    number: 46
                ),
                Player(name: "Filip Gustavsson", position: .goalie, number: 32),
                Player(name: "Ryan Hartman", position: .center, number: 38),
                Player(
                    name: "Marcus Johansson",
                    position: .leftWing,
                    number: 90
                ),
            ]
        ),

        NHLTeam(
            name: "Nashville Predators",
            arena: "Bridgestone Arena",
            logo: "NashvillePredators",
            division: .central,
            coach: "Andrew Brunette",
            players: [
                Player(name: "Filip Forsberg", position: .leftWing, number: 9),
                Player(name: "Roman Josi", position: .defenseman, number: 59),
                Player(name: "Steven Stamkos", position: .center, number: 91),
                Player(
                    name: "Jonathan Marchessault",
                    position: .rightWing,
                    number: 81
                ),
                Player(name: "Juuse Saros", position: .goalie, number: 74),
                Player(name: "Ryan O'Reilly", position: .center, number: 90),
                Player(name: "Luke Schenn", position: .defenseman, number: 2),
                Player(
                    name: "Alexandre Carrier",
                    position: .defenseman,
                    number: 45
                ),
                Player(name: "Brady Skjei", position: .defenseman, number: 76),
                Player(name: "Justus Annunen", position: .goalie, number: 60),
            ]
        ),

        NHLTeam(
            name: "St. Louis Blues",
            arena: "Enterprise Center",
            logo: "StLouisBlues",
            division: .central,
            coach: "Jim Montgomery",
            players: [
                Player(name: "Robert Thomas", position: .center, number: 18),
                Player(name: "Jordan Kyrou", position: .rightWing, number: 25),
                Player(
                    name: "Pavel Buchnevich",
                    position: .leftWing,
                    number: 89
                ),
                Player(
                    name: "Colton Parayko",
                    position: .defenseman,
                    number: 55
                ),
                Player(
                    name: "Jordan Binnington",
                    position: .goalie,
                    number: 50
                ),
                Player(name: "Dylan Holloway", position: .leftWing, number: 81),
                Player(name: "Brandon Saad", position: .leftWing, number: 20),
                Player(name: "Justin Faulk", position: .defenseman, number: 72),
                Player(name: "Nick Leddy", position: .defenseman, number: 4),
                Player(
                    name: "Philip Broberg",
                    position: .defenseman,
                    number: 6
                ),
            ]
        ),

        NHLTeam(
            name: "Winnipeg Jets",
            arena: "Canada Life Centre",
            logo: "WinnipegJets",
            division: .central,
            coach: "Scott Arniel",
            players: [
                Player(name: "Kyle Connor", position: .leftWing, number: 81),
                Player(name: "Mark Scheifele", position: .center, number: 55),
                Player(
                    name: "Gabriel Vilardi",
                    position: .rightWing,
                    number: 13
                ),
                Player(
                    name: "Josh Morrissey",
                    position: .defenseman,
                    number: 44
                ),
                Player(
                    name: "Connor Hellebuyck",
                    position: .goalie,
                    number: 37
                ),
                Player(name: "Adam Lowry", position: .center, number: 17),
                Player(name: "Neal Pionk", position: .defenseman, number: 4),
                Player(
                    name: "Dylan Samberg",
                    position: .defenseman,
                    number: 54
                ),
                Player(name: "Cole Perfetti", position: .leftWing, number: 91),
                Player(name: "Alex Iafallo", position: .leftWing, number: 9),
            ]
        ),
    ]
}

func pacificDivision() -> [NHLTeam] {
    return [
        NHLTeam(
            name: "Anaheim Ducks",
            arena: "Honda Center",
            logo: "AnaheimDucks",
            division: .pacific,
            coach: "Joel Quenneville",
            players: [
                Player(name: "Leo Carlsson", position: .center, number: 91),
                Player(name: "Mason McTavish", position: .center, number: 23),
                Player(
                    name: "Cutter Gauthier",
                    position: .leftWing,
                    number: 22
                ),
                Player(name: "Troy Terry", position: .rightWing, number: 19),
                Player(name: "Radko Gudas", position: .defenseman, number: 7),
                Player(
                    name: "Jamie Drysdale",
                    position: .defenseman,
                    number: 6
                ),
                Player(
                    name: "Pavel Mintyukov",
                    position: .defenseman,
                    number: 34
                ),
                Player(name: "Ryan Strome", position: .center, number: 16),
                Player(
                    name: "Olen Zellweger",
                    position: .defenseman,
                    number: 42
                ),
                Player(name: "Lukas Dostal", position: .goalie, number: 1),
            ]
        ),

        NHLTeam(
            name: "Calgary Flames",
            arena: "Scotiabank Saddledome",
            logo: "CalgaryFlames",
            division: .pacific,
            coach: "Ryan Huska",
            players: [
                Player(name: "Nazem Kadri", position: .center, number: 91),
                Player(
                    name: "Rasmus Andersson",
                    position: .defenseman,
                    number: 4
                ),
                Player(
                    name: "Jonathan Huberdeau",
                    position: .leftWing,
                    number: 10
                ),
                Player(name: "Mikael Backlund", position: .center, number: 11),
                Player(name: "Dustin Wolf", position: .goalie, number: 32),
                Player(
                    name: "Yegor Sharangovich",
                    position: .leftWing,
                    number: 17
                ),
                Player(
                    name: "MacKenzie Weegar",
                    position: .defenseman,
                    number: 52
                ),
                Player(name: "Matt Coronato", position: .rightWing, number: 27),
                Player(name: "Connor Zary", position: .center, number: 8),
                Player(name: "Blake Coleman", position: .leftWing, number: 20),
            ]
        ),

        NHLTeam(
            name: "Edmonton Oilers",
            arena: "Rogers Place",
            logo: "EdmontonOilers",
            division: .pacific,
            coach: "Mike Babcock",
            players: [
                Player(name: "Connor McDavid", position: .center, number: 97),
                Player(name: "Leon Draisaitl", position: .center, number: 29),
                Player(name: "Zach Hyman", position: .rightWing, number: 18),
                Player(name: "Evan Bouchard", position: .defenseman, number: 2),
                Player(name: "Stuart Skinner", position: .goalie, number: 74),
                Player(
                    name: "Mattias Ekholm",
                    position: .defenseman,
                    number: 14
                ),
                Player(name: "Jeff Skinner", position: .leftWing, number: 53),
                Player(
                    name: "Viktor Arvidsson",
                    position: .rightWing,
                    number: 33
                ),
                Player(
                    name: "Darnell Nurse",
                    position: .defenseman,
                    number: 25
                ),
                Player(name: "Adam Henrique", position: .center, number: 19),
            ]
        ),

        NHLTeam(
            name: "Los Angeles Kings",
            arena: "Crypto.com Arena",
            logo: "LosAngelesKings",
            division: .pacific,
            coach: "Peter Laviolette",
            players: [
                Player(name: "Anze Kopitar", position: .center, number: 11),
                Player(name: "Adrian Kempe", position: .leftWing, number: 9),
                Player(name: "Kevin Fiala", position: .leftWing, number: 22),
                Player(name: "Drew Doughty", position: .defenseman, number: 8),
                Player(name: "Quinton Byfield", position: .center, number: 55),
                Player(name: "Phillip Danault", position: .center, number: 24),
                Player(name: "Trevor Moore", position: .leftWing, number: 12),
                Player(
                    name: "Mikey Anderson",
                    position: .defenseman,
                    number: 44
                ),
                Player(name: "Warren Foegele", position: .leftWing, number: 37),
                Player(name: "Darcy Kuemper", position: .goalie, number: 35),
            ]
        ),

        NHLTeam(
            name: "San Jose Sharks",
            arena: "SAP Center",
            logo: "SanJoseSharks",
            division: .pacific,
            coach: "Ryan Warsofsky",
            players: [
                Player(
                    name: "Macklin Celebrini",
                    position: .center,
                    number: 71
                ),
                Player(name: "William Eklund", position: .leftWing, number: 72),
                Player(name: "Mikael Granlund", position: .center, number: 64),
                Player(name: "Jake Walman", position: .defenseman, number: 96),
                Player(
                    name: "Alexandar Georgiev",
                    position: .goalie,
                    number: 40
                ),
                Player(name: "Will Smith", position: .center, number: 17),
                Player(name: "Tyler Toffoli", position: .rightWing, number: 73),
                Player(
                    name: "Mario Ferraro",
                    position: .defenseman,
                    number: 38
                ),
                Player(name: "Collin Graf", position: .rightWing, number: 39),
                Player(name: "Yaroslav Askarov", position: .goalie, number: 30),
            ]
        ),

        NHLTeam(
            name: "Seattle Kraken",
            arena: "Climate Pledge Arena",
            logo: "SeattleKraken",
            division: .pacific,
            coach: "Lane Lambert",
            players: [
                Player(name: "Jared McCann", position: .leftWing, number: 19),
                Player(name: "Matty Beniers", position: .center, number: 10),
                Player(name: "Shane Wright", position: .center, number: 91),
                Player(name: "Vince Dunn", position: .defenseman, number: 29),
                Player(name: "Philipp Grubauer", position: .goalie, number: 31),
                Player(name: "Jordan Eberle", position: .rightWing, number: 7),
                Player(name: "Jaden Schwartz", position: .leftWing, number: 17),
                Player(name: "Adam Larsson", position: .defenseman, number: 6),
                Player(
                    name: "Brandon Montour",
                    position: .defenseman,
                    number: 62
                ),
                Player(name: "Joey Daccord", position: .goalie, number: 35),
            ]
        ),

        NHLTeam(
            name: "Vancouver Canucks",
            arena: "Rogers Arena",
            logo: "VancouverCanucks",
            division: .pacific,
            coach: "Manny Malhotra",
            players: [
                Player(name: "Quinn Hughes", position: .defenseman, number: 43),
                Player(name: "Elias Pettersson", position: .center, number: 40),
                Player(name: "J.T. Miller", position: .center, number: 9),
                Player(name: "Brock Boeser", position: .rightWing, number: 6),
                Player(name: "Thatcher Demko", position: .goalie, number: 35),
                Player(name: "Conor Garland", position: .rightWing, number: 8),
                Player(name: "Jake DeBrusk", position: .leftWing, number: 74),
                Player(name: "Filip Hronek", position: .defenseman, number: 17),
                Player(
                    name: "Kiefer Sherwood",
                    position: .rightWing,
                    number: 44
                ),
                Player(name: "Tyler Myers", position: .defenseman, number: 57),
            ]
        ),

        NHLTeam(
            name: "Vegas Golden Knights",
            arena: "T-Mobile Arena",
            logo: "VegasGoldenKnights",
            division: .pacific,
            coach: "Ryan Craig",
            players: [
                Player(name: "Jack Eichel", position: .center, number: 9),
                Player(name: "Mark Stone", position: .rightWing, number: 61),
                Player(name: "Mitch Marner", position: .rightWing, number: 16),
                Player(name: "William Karlsson", position: .center, number: 71),
                Player(name: "Adin Hill", position: .goalie, number: 33),
                Player(name: "Ivan Barbashev", position: .leftWing, number: 49),
                Player(
                    name: "Alex Pietrangelo",
                    position: .defenseman,
                    number: 7
                ),
                Player(
                    name: "Shea Theodore",
                    position: .defenseman,
                    number: 27
                ),
                Player(name: "Nicolas Roy", position: .center, number: 10),
                Player(name: "Brett Howden", position: .center, number: 21),
            ]
        ),
    ]
}

#Playground {
    var data = NHLTeamData.shared

}
