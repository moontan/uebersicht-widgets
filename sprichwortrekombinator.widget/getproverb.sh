#!/bin/bash
# get proverb combined randomly from two traditional proverbs
# in German [1|d[e]] or English [2|e[n]]
# (and pass it to Übersicht widget)
LANG=${1:-'de'}			# set language parametre to German if not passed
	case "$LANG" in		# determine URL:
		[eE]|[eE][nN]|2)	URL="proverb.gener.at/or"			# English version
                            LQUOT="\xE2\x80\x9C"                # left quotation mark
                            RQUOT="\xE2\x80\x9D";;              # right quotation mark
		[dD]|[dD][eE]|1)	URL="sprichwortrekombinator.de"     # German version
                            LQUOT="\xE2\x80\x9E"                # left quotation mark
                            RQUOT="\xE2\x80\x9D";;              # right quotation mark
		*)	echo "Service only available in German or English."	# Error
			echo "usage: getproverb [1|2]|[d[e]|e[n]]"
			return 1;;
	esac
    PROVERB="$(curl -GLSs $URL | grep \=\"spwort\"\> | sed -e 's/<[^>]*>//g')"
    echo -e "$LQUOT${PROVERB#' '}$RQUOT"
