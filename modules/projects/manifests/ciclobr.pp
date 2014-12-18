class projects::ciclobr {
  include heroku

  boxen::project { 'ciclobr':
    postgresql    => true,
    nginx         => true,
    ruby          => '1.9.3',
    source        => 'shadowmaru/ciclobr'
  }
}