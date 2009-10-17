convertir: func (entree: String) -> Int {
    return match entree {
        case "un"       => 1
        case "deux"     => 2
        case "trois"    => 3
        case =>
            Exception new("Je ne sais compter que jusqu'à trois!") throw()
    }
}
