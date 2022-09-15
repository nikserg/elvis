# Elvis - Git automation

<p align="center">
<img src="img.png" /><br />
<i>Love me tender</i>
</p>
Elvis is a simple open-source automation tool for operations on multiple Git repositories written on PHP.

It can be used to, for example, monthly update changelogs or documentation pages on your projects.

Elvis makes these steps:

1. Clone repository
2. Checkout defined branch
3. Perform set of commands inside repository's folder
4. If any new files created, add them to repository
5. Commit changes
6. Push

## Usage

`php elvis [config file]`

If no `config file` provided, Elvis expects `config.json` in current directory. More about config file below.

Elvis will use SSH key to clone/push repositories. You can generate a separate key with `ssh-keygen -f pkey`, then
you will need to copy content of `pkey` file to `private key` in config file, and add `pkey.pub` as SSH key
for user in your Git system (Github, Gitlab).

You can also have separate keys for each repository.

Note, that this user need to have access rights for desired branch.

## Configuration

Example of configuration can be found in [config.example.json](config.example.json).

```json
{
  "actions": {
    "update guestbook": {
      "commit message": "Update GUESTBOOK.md",
      "commands": [
        "echo \"Elvis was here\" > GUESTBOOK.md"
      ]
    }
  },
  "defaults": {
    "private key": "-----BEGIN OPENSSH PRIVATE KEY-----\nSuper secret!\n-----END OPENSSH PRIVATE KEY-----\n"
  },
  "repositories": [
    {
      "url": "git@github.com:nikserg/elvis.git",
      "actions": [
        "update guestbook"
      ]
    }
  ]
}
```

Let's see on parts of this file.

### defaults

Options, provided by default, if no more specific option provided in action or repository.

* `private key` - SSH private key to connect to repository. Can be overridden in `repositories`
* `commit message` - commit message for changes. Can be overridden in `actions`. Default: "Elvis"
* `git name`, `git email` - git credentials. Can be overridden in `repositories`.
  Default: `Elvis Presley <elvis@example.com>`
* `actions` - list of actions to perform on each repository. Can be overridden in `repositories`.
* `branch` - branch to checkout. Default: `main`.

### actions

List of available actions, which can be performed on repository. Each action contains list of commands.

* `actions` - list of commands
* `commit message` - surprisingly, a commit message for all changes

### repositories

List of repositories to clone and perform actions.

* `url` - URL of git repository
* `actions` - list of actions


