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
