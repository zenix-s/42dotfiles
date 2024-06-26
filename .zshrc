
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"


# source ENVIRONMENT
source ~/.config/zsh/.zshenv

# source ALIASES
source ~/.config/zsh/.zshalias


# OPTIONS
# Navegación de directorios
setopt auto_cd              # Permite cambiar de directorio sin usar 'cd'
setopt auto_pushd           # Usa 'pushd' implícitamente en lugar de 'cd'
setopt pushd_ignore_dups    # Evita duplicar directorios en la pila de pushd
setopt pushd_silent         # Silencia la salida de 'pushd' y 'popd'
setopt cdable_vars          # Permite usar variables como rutas con 'cd'

# Corrección de errores
setopt correct              # Habilita la corrección ortográfica de comandos
# Historial de comandos
setopt appendhistory        # Añade los comandos al historial al final de la sesión
setopt sharehistory         # Comparte el historial entre las sesiones del shell
setopt hist_ignore_space    # No guarda los comandos que empiezan con un espacio
setopt hist_ignore_all_dups # No guarda los comandos duplicados en todo el historial
setopt hist_save_no_dups    # No guarda duplicados consecutivos en el historial
setopt hist_ignore_dups     # No guarda los comandos duplicados consecutivos en el historial
setopt hist_find_no_dups    # No busca duplicados en el historial
setopt hist_verify          # Muestra el comando antes de ejecutarlo para confirmación
setopt extended_history     # Guarda información adicional en el historial (como la duración y la fecha de los comandos)

# Expansión y coincidencia de patrones
setopt extended_glob        # Habilita la coincidencia de patrones avanzada (extended globbing)


# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
# zinit light Aloxaf/fzf-tab

# Add in zsh 
zinit snippet OMZP::git
zinit snippet OMZP::archlinux
zinit snippet OMZP::asdf



autoload -Uz compinit && compinit

zinit cdreplay -q


bindkey '^k' history-search-backward
bindkey '^j' history-search-forward


# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
_comp_options+=(globdots)

PATH=~/.console-ninja/.bin:$PATH

# c-formatter-42
alias c-format="~/.local/bin/c_formatter_42"

eval "$(~/Apps/my_posh/oh-my-posh init zsh --config ~/.config/oh_my_posh/amro.omp.toml)"
