//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        
        Location(
             name: "Machu Picchu",
             cityName: "Cusco",
             coordinates: CLLocationCoordinate2D(latitude: -13.16331, longitude: -72.54544),
             description: "Machu Picchu, the 'Lost City of the Incas,' is a breathtaking 15th-century citadel perched high in the Peruvian Andes mountains. This UNESCO World Heritage Site showcases remarkable Inca stonework, agricultural terraces, temples, and sanctuaries, offering a glimpse into the life of the Inca Empire.",
             imageNames: ["machu-pichu-1"],
             link: "https://en.wikipedia.org/wiki/Machu_Picchu"),

        Location(
             name: "Taj Mahal",
             cityName: "Agra",
             coordinates: CLLocationCoordinate2D(latitude: 27.17527, longitude: 78.0421),
             description: "The Taj Mahal, an ivory-white marble mausoleum located in Agra, India, is a UNESCO World Heritage Site and one of the most recognized buildings in the world. Built by Mughal emperor Shah Jahan in memory of his third wife Mumtaz Mahal, it's a breathtaking example of Mughal architecture, blending Islamic, Persian, and Indian styles. The Taj Mahal is a symbol of eternal love and a testament to exquisite craftsmanship.",
             imageNames: ["taj-mahal-1"],
             link: "https://en.wikipedia.org/wiki/Taj_Mahal"),
    
        Location(
             name: "Statue of Liberty",
             cityName: "New York",
             coordinates: CLLocationCoordinate2D(latitude: 40.68925, longitude: -74.0445),
             description: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City. A gift from the people of France to the people of the United States to commemorate the centennial of American independence, it's a symbol of freedom and democracy. Lady Liberty, as she's affectionately called, welcomes immigrants arriving in New York Harbor and is a powerful reminder of America's ideals.",
             imageNames: ["statue-of-liberty-1"],
             link: "https://en.wikipedia.org/wiki/Statue_of_Liberty"),

        Location(
             name: "Sagrada Familia",
             cityName: "Barcelona",
             coordinates: CLLocationCoordinate2D(latitude: 41.40363, longitude: 2.17435),
             description: "The Sagrada Familia is an unfinished Roman Catholic basilica in Barcelona, Spain, designed by Antoni Gaudí. It's one of Gaudí's most famous works and a top tourist attraction in Spain. Construction began in 1882 and is still ongoing. The Sagrada Familia is a masterpiece of Catalan Modernism and a symbol of Barcelona.",
             imageNames: ["sagrada-familia-1"],
             link: "https://en.wikipedia.org/wiki/Sagrada_Familia"),

        Location(
             name: "Park Güell",
             cityName: "Barcelona",
             coordinates: CLLocationCoordinate2D(latitude: 41.41248, longitude: 2.15804),
             description: "Park Güell is a public park system with gardens and architectural elements situated on the hilltop overlooking Barcelona, Catalonia, Spain. Designed by Antoni Gaudí and built from 1900 to 1914, Park Güell is one of Gaudí's most famous works and a popular tourist attraction. It's an example of Catalan Modernism and a UNESCO World Heritage Site.",
             imageNames: ["park-guell-1"],
             link: "https://en.wikipedia.org/wiki/Park_Güell"),
    ]
}
