class Formatter
  PROVIDER_LIST = {
    'hbm' => 'HBO Max',
    'itu' => 'Apple TV',
    'ply' => 'Google Play',
    'mvp' => 'Movistar Play',
    'prv' => 'Amazon Prime Video',
    'lgu' => 'Lionsgate Plus',
    'srp' => 'Star+',
    'pmp' => 'Paramount+',
    'nfx' => 'Netflix',
    'qbt' => 'QubitTV',
    'ptv' => 'PlutoTV',
    'dnp' => 'Disney+',
    'clv' => 'Claro Video',
    'mbi' => 'Mubi'
  }.freeze

  def get_provider(offer)
    PROVIDER_LIST[offer] || offer
  end

  def providers(movie)
    providers = movie.providers
    providers.map { |prov| get_provider(prov) }.uniq
  end
end

class Presenter
  def initialize
    @fmt = Formatter.new
  end

  def present(movie)
    "Título: #{movie.query_name}"
  end

  def available_in(movie)
    "Disponible en: #{@fmt.providers(movie)}"
  end
end
