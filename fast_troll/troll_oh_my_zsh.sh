# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    troll_oh_my_zsh.sh                                 :+:      :+:    :+:    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: cgarrot <marvin@le-101.fr>                 +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/10 16:09:30 by cgarrot      #+#   ##    ##    #+#        #
#    Updated: 2022/04/22 14:58:56 by ldournoi         ###   ########.fr        #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.oh-my-zsh/custom/alias.zsh ]
then
	cp ~/.oh-my-zsh/custom/alias.zsh ~/.oh-my-zsh/custom/.aliassave
fi
touch ~/.oh-my-zsh/custom/alias.zsh
echo "alias ls='(pactl set-sink-mute 0 1 && pactl set-sink-mute 0 0 && pactl set-sink-volume 0 75% && paplay ~/.sncf-france-jingle.ogg &) ; ls -G \$1'" >> ~/.oh-my-zsh/custom/alias.zsh
curl https://raw.githubusercontent.com/Pixailz/Troll_42/master/sound/sncf-france-jingle.ogg -o ~/.sncf-france-jingle.ogg
clear
history -c
exec zsh
