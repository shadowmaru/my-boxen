class projects::topster_auth {

  boxen::project { 'topster_auth':
    ruby          => '2.0.0-p451',
    postgresql    => true,
    source        => 'topsterio/auth',
    dir           => "${boxen::config::srcdir}/../topster/web/web01.dev.topster.com.br/auth"
  }
}