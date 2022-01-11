### About

Running `bash bashprofile.sh` from the root repository will execute these scripts

> Hence, running these scripts manually isn't required

### Script info

- `bash_aliases.sh` contains the common aliases used
  - Remove the `echo` redirection if this setting is not required to be in `~/.bash_aliases`
- `bash_prompt.sh` contains the setup for a customized **bash** command prompt

### Resources

- `Shell script` comfirmation prompt [source](https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script)

```
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
fi
```
