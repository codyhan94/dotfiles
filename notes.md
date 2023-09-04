## init submodule
- `git submodule add <repo> <submodule_directory>`

To upgrade each one from master:
- `git submodule foreach git pull origin master`

Starting fresh:
- `git submodule update --remote --recursive`


## deinit submodule
- `git submodule deinit <submodule_directory>` (may not be necessary anymore)
- `git rm <submodule_directory>`
- `rm -rf .git/modules/<submodule_directory>` [cleanup]
- `git config --remove-section submodule.<path-to-submodule>` [cleanup]
- commit and push changes

