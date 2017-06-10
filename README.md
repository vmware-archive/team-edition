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
echo source /usr/local/opt/chruby/share/chruby/chruby.sh >> ~/.bash_profile
echo source /usr/local/opt/chruby/share/chruby/auto.sh >> ~/.bash_profile
echo chruby 2.4.1 >> ~/.bash_profile
source ~/.bash_profile
```


### Ruby gems
In the terminal, enter the Team Edition directory, and run these commands at the terminal:

```
gem install bundler
bundle
```


### Success!
After the gems are installed, `team-edition` should be good to go.