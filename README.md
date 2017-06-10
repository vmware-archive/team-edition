# Team Edition

This is an unsupported hack to add a team to a list of tracker projects.

## Usage

``` bash
$> team-edition bulk -p projects.yml -t team.yml -a deadbeef-your-pivotal-tracker-api-key
```

where team.yml looks like:

    ---
    team:
    - name: Fred Flintstone
      initials: ff
      email: fred@gmail.com
      role: owner


and projects.yml looks like:

    ---
    projects:
    - name: a-random-string-to-help-you-identify-the-id
      id: 123456789


## Setup on a fresh workstation

Are you on a new Mac? Some setup is useful - we can install a newer Ruby, and we need to install some gems. Here's how!


### Newer Ruby
*This part is optional.*

Let's install [Homebrew,](https://brew.sh/) [chruby,](https://github.com/postmodern/chruby) and Ruby 2.4.1. Run these commands at the terminal:

```
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install chruby ruby-install
ruby-install 2.4.1
chruby 2.4.1
```

If you do this, you should run `chruby 2.4.1` beforehand each time you want to either run Team Edition or install the gems below.


### Ruby gems
In the terminal, enter the Team Edition directory, and run these commands at the terminal:

```
gem install bundler
bundle
```


### Success!
After the gems are installed, `team-edition` should be good to go.