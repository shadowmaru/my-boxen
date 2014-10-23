class projects::topster_admin {
  include virtualbox
  include vagrant

  boxen::project { 'topster_admin':
    nodejs        => 'v0.10.13',
    source        => 'topsterio/admin',
    dir           => "${boxen::config::srcdir}/../topster/web/web01.dev.topster.com.br/admin"
  }
}