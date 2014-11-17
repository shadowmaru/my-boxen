class projects::thirtyminutes {
  include heroku

  boxen::project { 'thirtyminutes':
    postgresql    => true,
    nginx         => true,
    ruby          => '2.1.1',
    source        => 'shadowmaru/thirtyminutes'
  }
}