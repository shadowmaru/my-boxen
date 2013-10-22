class people::shadowmaru {
	include alfred
	include chrome
	include firefox
	include iterm2::stable
	include textexpander
	include onepassword

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