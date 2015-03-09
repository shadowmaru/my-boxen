class projects::edifortini {
  include heroku

  boxen::project { 'edifortini':
    postgresql    => true,
    nginx         => true,
    ruby          => '2.1.4',
    source        => 'shadowmaru/edifortini'
  }
}