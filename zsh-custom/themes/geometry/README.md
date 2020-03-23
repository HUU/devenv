[A fork of the Geometry theme for ZSH](https://github.com/geometry-zsh/geometry/releases/latest)

Contains modifications to highlight when in vi/normal mode.

## Plugins

geometry has an internal plugin architecture. The default plugins are `exec_time`, `git` and `hg`.
But you can enable a variety of built-in plugins just by setting the `GEOMETRY_PROMPT_PLUGINS` variable in your own configuration files:

```sh
GEOMETRY_PROMPT_PLUGINS=(virtualenv docker_machine exec_time git hg)
```

*Note: if you're not sure where to put geometry configs, just add them to your `.zshrc`*.

These plugins will load and display on the right prompt. You can check the
documentation and configuration for each specific plugin in the
[plugins](/plugins) directory.

Some plugins only render when you are in a given directory or in the presence of a given file.
You can have those plugins always render by pinning a `+` before the name.

```sh
export GEOMETRY_PROMPT_PLUGINS=(exec_time git +rustup) # rustup will always render
```

geometry also supports your own custom plugins. See the plugin [documentation](/plugins/README.md) for
instructions and examples.

Please check out and share third-party plugins on our [Plugins wiki page](https://github.com/geometry-zsh/geometry/wiki/Plugins).

## Configuration

geometry was built with easy configuration in mind. The best way to do so is by
[using environment variables](https://github.com/fribmendes/dotfiles/blob/7f448626e1c6e9c0ab7b474c5ff2c1939b64b7d2/system/prompt.zsh#L18-L24).

Pretty much everything in geometry can be changed by setting a variable **before
you load the theme**.

The default options try to balance the theme in order to be both lightweight and contain useful features.

### Symbols

There are a set of symbols available which you can override with environment variables.

```shell
GEOMETRY_SYMBOL_PROMPT="▲"                  # default prompt symbol
GEOMETRY_SYMBOL_RPROMPT="◇"                 # multiline prompts
GEOMETRY_SYMBOL_EXIT_VALUE="△"              # displayed when exit value is != 0
GEOMETRY_SYMBOL_ROOT="▲"                    # when logged in user is root
```

You can find symbol configuration for specific plugins under the
[plugins](/plugins) directory.

### Colors

The following color definitions are available for configuration:

```shell
GEOMETRY_COLOR_EXIT_VALUE="magenta"         # prompt symbol color when exit value is != 0
GEOMETRY_COLOR_PROMPT="white"               # prompt symbol color
GEOMETRY_COLOR_ROOT="red"                   # root prompt symbol color
GEOMETRY_COLOR_DIR="blue"                   # current directory color
```

You can find color configuration for specific plugins under the
[plugins](/plugins) directory.


### Misc

```shell
GEOMETRY_PROMPT_PREFIX="$'\n'"              # prefix prompt with a new line
GEOMETRY_PROMPT_SUFFIX=""                   # suffix prompt
GEOMETRY_PROMPT_PREFIX_SPACER=" "           # string to place between prefix and symbol
GEOMETRY_SYMBOL_SPACER=" "                  # string to place between symbol and directory
GEOMETRY_DIR_SPACER=" "                     # string to place between directory and suffix
GEOMETRY_PLUGIN_SEPARATOR=" "               # use ' ' to separate right prompt parts
GEOMETRY_GREP=""                            # define which grep-like tool to use (By default it looks for rg, ag and finally grep)
```

#### Randomly colorize prompt symbol

Your prompt symbol can change colors based on a simple hash of your hostname. To enable this, set `PROMPT_GEOMETRY_COLORIZE_SYMBOL` to `true`.

![colorize](screenshots/colorize.png)

#### Colorize prompt symbol when root

You can have your prompt symbol change color when running under the `root` user.

To activate this option, just set `PROMPT_GEOMETRY_COLORIZE_ROOT` to `true`. Both symbol and color can be customized by overriding the `GEOMETRY_SYMBOL_ROOT` and `GEOMETRY_COLOR_ROOT` variables.

Note that this option overrides the color hashing of your prompt symbol.

#### Display elapsed time for long-running commands

You can optionally show a time display for long-running commands
by setting the `PROMPT_GEOMETRY_EXEC_TIME` variable to `true`.

If enabled, this shows the elapsed time for commands running longer than 5 seconds. You can change this threshold by changing `PROMPT_GEOMETRY_COMMAND_MAX_EXEC_TIME` to the number of desired seconds.

![long_running](screenshots/long_running.png)