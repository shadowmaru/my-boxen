class people::shadowmaru {
	include alfred
	include chrome
	include firefox
	include iterm2::stable
	include onepassword
  include projects::audax
  include projects::fin
  include projects::smartsystem
  include projects::backup_scripts

  $home     = "/Users/shadow"
  $my       = "${home}/my"
  $dotfiles = "${home}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'git@github.com:shadowmaru/dotfiles',
    require => File[$my]
  }
}