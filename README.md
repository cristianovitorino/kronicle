<p align="center">
    <img src="https://raw.githubusercontent.com/estatra/kronicle/master/kronicle.png"
    alt="icon"/>
</p>

<h1 align="center">
    Kronicle
</h1>

<p align="center">
  <a href="https://www.codefactor.io/repository/github/cristianovitorino/kronicle/">
    <img src="https://www.codefactor.io/repository/github/cristianovitorino/kronicle/badge" alt="CodeFactor">
  </a>
</p>

## About

`Kronicle` is a simple hourly job scheduler for Linux.

## Key Feature
- Custimize the `kronicle-jobs` bash file to do anything you want job-wise at an hourly base.

## Requirements
Edit the `kronicle.service` file **before installing** and add your username on the **User=** section, save the file and close it.

```bash
[...]
RestartSec=1
User=<username>
Group=wheel
[...]
```

## Install
- After editing the `kronicle-jobs` and `kronicle.service` files you're ready to install.
- After installation you can edit `~/.bin/kronicle-jobs` at anytime.

### From the repository
```bash
cd $HOME
git clone https://github.com/estatra/kronicle.git
cd kronicle
chmod u+x install.sh
sh ./install.sh
```

## Uninstall

```bash
chmod u+x uninstall.sh
sh ./uninstall.sh
```

## Copyright

Kronicle © 2020 Cristiano Vitorino, MIT License

<div>
The Kronicle logo is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>

<br/><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://licensebuttons.net/l/by-nc-nd/4.0/88x31.png" /></a>
</div>
