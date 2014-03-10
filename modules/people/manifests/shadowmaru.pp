class people::shadowmaru {
	include alfred
	include chrome
	include firefox
	include iterm2::stable
	include onepassword
  include projects::audax
  include projects::topster_admin

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
  class { 'nodejs::global': version => 'v0.10.13' }
  nodejs::module { 'bower': node_version => 'v0.10.13' }
  nodejs::module { 'grunt-cli': node_version => 'v0.10.13' }
  nodejs::module { 'karma': node_version => 'v0.10.13' }
  nodejs::module { 'yo': node_version => 'v0.10.13' }
  nodejs::module { 'generator-angular': node_version => 'v0.10.13' }
}