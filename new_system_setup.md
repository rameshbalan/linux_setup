## New System Setup

- Install Brave Browser

```bash
sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser
```

- Install Sublime Text Editor

```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
```

- Install Slack
	- Download slack from the [website](https://slack.com/downloads/).

```bash
sudo dpkg -i slack-desktop-[version]-[computer_arc].deb
```
	- Add all your workspaces.

- Install Terminator, zsh, git and themes.

```bash
sudo apt install terminator
sudo apt install zsh
sudo apt install git

### zsh themes
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## powerlevel10k theme for zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

## Answer the questions
p10k configure

## Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

plugins=(zsh-autosuggestions)

# Refresh
```

- Install tmate

```bash
sudo apt install tmate
```