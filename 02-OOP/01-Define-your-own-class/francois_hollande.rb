class Francois_Hollande
  def initialize(femme, maitresse, chomage, cravate)
    @femme = femme
    @maitresse = maitresse
    @chomage = chomage
    @cravate = cravate
  end

  attr_accessor :femme, :maitresse
  attr_reader :chomage
  attr_writer :cravate

end