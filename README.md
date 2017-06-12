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

Are you on a new Mac? Some setup is useful - a newer Ruby, [Homebrew,](https://brew.sh/) [chruby,](https://github.com/postmodern/chruby) and some Ruby gems. Here's how!

In the terminal, enter the Team Edition directory, and run this command:

```
xcode-select --install
```

This brings up a dialog window for an installer for the command line developer tools. Run the installer, then run this command:

```
./workstation-setup.sh
```

This should install everything else you need:  Then `team-edition` should be good to go.