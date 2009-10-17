commenter: func (note: Int) {
    println(match {
        case note < 10   => "Dommage.."
        case note < 15   => "Pas mal" 
        case note < 17   => "Bien"
        case note <= 20  => "Excellent!"
        case             => "Tricheur!"
    })
}
