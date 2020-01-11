alias ll='ls -l -a'

function dev() {
	cd ~/devilbox && docker-compose up -d httpd php mysql && ./shell.sh
}
# alias dev='rm -rf ~/devilbox/bash/.ssh && cp -r ~/.ssh ~/devilbox/bash && cd ~/devilbox && docker-compose up -d httpd php mysql && ./shell.sh'
alias devstop='cd ~/devilbox && docker-compose stop'
alias devkill='cd ~/devilbox && docker-compose down'
alias devrestart='cd ~/devilbox && docker-compose down && docker-compose up -d httpd php mysql'


alias www='cd ~/devilbox/data/www'

alias c="clear"
# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias shutdown='sudo shutdown'
    alias update='packer -Syu'
fi

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'


alias Voleron='sbash Voleron@www21.quai13.net'
alias Vmontlucon='sbash Vmontlucon@www21.quai13.net'
alias Vbrede='sbash labrede@quaitreize3.nexen.net'
alias Vhabitat='sbash V79habitat@www20.quai13.net'
alias Vcdg83='sbash Vcdg83@www11.quai13.net'
alias Votpv='sbash Votplainevallee@www21.quai13.net'
alias Vdemocdg83='sbash Vdemocdg83@www20.quai13.net'
alias Vmedoc='sbash Vaubinmedoc@www10.quai13.net'
alias Vcitadis='sbash Vcitadis@www20.quai13.net'
alias bonneveine='sbash bonneveinev3@www20.quai13.net'
alias Vgiffre='sbash Vmontagnesdugiff@www20.quai13.net'
alias Vsezanne='sbash Vsezanne@www20.quai13.net'
alias Vdemoclermontais='sbash Vccclermontais19@www20.quai13.net'
alias Vclermontais='sbash clermontais-tourisme@31.15.30.124'
alias Vboiseau='sbash jean-de-boiseau@quaitreize3.nexen.net'
alias Veckbolsheim='sbash Veckbolsheim@www20.quai13.net'
alias Vaucamville='sbash Vaucamville@www10.quai13.net'
alias Vdiois='sbash paysdiois@quaitreize3.nexen.net'



# sbash functionality in zsh
function sbash() {
bash -c "source ~/.bashrc_common && sbash $1"
}


#git commit workflow

function gcap() {
	git add . && git commit -m "$*" && git push
}

# NEW.
function gnew() {
	gcap "📦 NEW: $@"
}

# NEW.
function gbuild() {
	gcap "🏗 BUILD: $@"
}

# TICKET.
function gtic() {
	gcap "🎟 TICKET: $@"
}

# IMPROVE.
function gimp() {
	gcap "👌 IMPROVE: $@"
}

# CSS.
function gcss() {
	gcap "💄 CSS: $@"
}

# FIX.
function gfix() {
	gcap "🐛 FIX: $@"
}

# RELEASE.
function grlz() {
	gcap "🚀 RELEASE: $@"
}

# DOC.
function gdoc() {
	gcap "📖 DOC: $@"
}

# TEST.
function gtest() {
	gcap "✅ TEST: $@"
}

# Update PLugins
function gplug() {
	gcap "🔌 UPDATE PLUGINS: $@"
}

# Update WP
function gupwp() {
	gcap "🔖 UPDATE WP VERSION: $@"
}


## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias nis="npm install --save "

alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '

# alias ll='colorls -a --sd'
