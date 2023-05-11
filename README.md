<h1 align="center">
  🗲 + 🚀
  <br>Supabase Section<br>
</h1>

<h4 align="center">
  A <a href="https://supabase.com" target="_blank">Supabase</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/amerryma/spaceship-supabase/releases">
    <img src="https://img.shields.io/github/v/release/amerryma/spaceship-supabase.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/amerryma/spaceship-supabase/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/spaceship-prompt/spaceship-gradle/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Current Supabase version, through supabase (`🗲`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/amerryma/spaceship-supabase.git $ZSH_CUSTOM/plugins/spaceship-section
```

Include `spaceship-section` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-section)
```

### [zplug]

```zsh
zplug "amerryma/spaceship-supabase"
```

### [antigen]

```zsh
antigen bundle "amerryma/spaceship-supabase"
```

### [antibody]

```zsh
antibody bundle "amerryma/spaceship-supabase"
```

### [zinit]

```zsh
zinit light "amerryma/spaceship-supabase"
```

### [zgen]

```zsh
zgen load "amerryma/spaceship-supabase"
```

### [sheldon]

```toml
[plugins.spaceship-section]
github = "amerryma/spaceship-supabase"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-section`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/amerryma/spaceship-supabase.git "$HOME/.zsh/spaceship-section"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-section/spaceship-section.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add supabase
```

## Options

This section is shown only in directories within a supabase context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_SUPABASE_SHOW`   |               `true`               | Show current section                 |
| `SPACESHIP_SUPABASE_PREFIX` | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before section                |
| `SPACESHIP_SUPABASE_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_SUPABASE_SYMBOL` |               `🗲·`                | Character to be shown before version |
| `SPACESHIP_SUPABASE_COLOR`  |             `yellow`               | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Name Surname](http://yourwebsite.com)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
