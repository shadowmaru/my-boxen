class projects::topster_api {

  boxen::project { 'topster_api':
    ruby          => '2.0.0-p451',
    source        => 'topsterio/api',
    dir           => "${boxen::config::srcdir}/../topster/web/web01.dev.topster.com.br/api.dev.topster.io"
  }
}