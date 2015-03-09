class projects::topster_console {
  include virtualbox
  include vagrant

  boxen::project { 'topster_console':
    nodejs        => 'v0.10.13',
    source        => 'topsterio/console',
    dir           => "${boxen::config::srcdir}/../topster/web/web01.dev.topster.com.br/console"
  }
}