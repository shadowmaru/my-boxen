class projects::topster_admin {
  boxen::project { 'topster_admin':
    nodejs        => 'v0.10.13',
    source        => 'rmotta/admin',
    dir           => "${boxen::config::srcdir}/../topster/web/admin.dev.topster.com.br"
  }
}