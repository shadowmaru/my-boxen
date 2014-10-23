class projects::topster_id {
  include virtualbox
  include vagrant

  boxen::project { 'topster_id':
    nodejs        => 'v0.10.13',
    source        => 'topsterio/id',
    dir           => "${boxen::config::srcdir}/../topster/web/web01.dev.topster.com.br/id"
  }
}