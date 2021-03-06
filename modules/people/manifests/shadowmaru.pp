class people::shadowmaru {
  include alfred
  include chrome
  include chrome::canary
  include firefox
  include iterm2::stable
  include projects::audax
  include projects::thirtyminutes
  include projects::ciclobr
  include projects::edifortini
  include projects::smartsystem

  $home         = "/Users/shadow"
  $my           = "${home}/my"
  $dotfiles     = "${home}/dotfiles"
  $topster      = "${home}/topster"
  $topster_web  = "${topster}/web"
  $topster_vm   = "${topster}/vm"

  file { $my:
    ensure  => directory
  }

  file { [ $topster, $topster_web, $topster_vm]:
    ensure => directory
  }

  repository { $dotfiles:
    source  => 'git@github.com:shadowmaru/dotfiles',
    require => File[$my]
  }

  # NodeJS
  nodejs::module { 'bower': node_version => 'v0.10.31' }
  nodejs::module { 'grunt-cli': node_version => 'v0.10.31' }
  nodejs::module { 'karma-cli': node_version => 'v0.10.31' }
  nodejs::module { 'protractor': node_version => 'v0.10.31' }
  nodejs::module { 'jshint': node_version => 'v0.10.31' }
  nodejs::module { 'csslint': node_version => 'v0.10.31' }
}