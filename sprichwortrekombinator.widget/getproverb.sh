#!/bin/bash
# get proverb combined randomly from two traditional proverbs
# in German [1|d[e]] or English [2|e[n]]
# (and pass it to Übersicht widget)
#   (This work is licensed under the Creative Commons
#   Attribution-NonCommercial-ShareAlike 4.0 International
#   License. To view a copy of this license, visit
#   http://creativecommons.org/licenses/by-nc-sa/4.0/)

LANG=${1:-'d'}			# set language parametre to German if not passed
	case "$LANG" in		# determine URL:
		[eE]|[eE][nN]|2)	URL="proverb.gener.at/or"			                # English version
                            LQUOT="\xE2\x80\x9C"                                # left quotation mark U+201C
                            RQUOT="\xE2\x80\x9D";;                              # right quotation mark U+201D
		[dD]|[dD][eE]|1)	URL="sprichwortrekombinator.de"                     # German version
                            LQUOT="\xE2\x80\x9E"                                # left quotation mark U+201E
                            RQUOT="\xE2\x80\x9D";;                              # right quotation mark U+201D
		*)	echo "Service only available in German or English."                 # Error message
			echo "usage: getproverb [1|2]|[d[e]|e[n]]"                          # How to use
			return 1;;                                                          # Exit with error code
	esac
    PROVERB="$(curl -GLSs $URL | grep \=\"spwort\"\> | sed -e 's/<[^>]*>//g')"  # get content and rid it of markup
    echo -e "$LQUOT${PROVERB#' '}$RQUOT"                                        # Add quotation marks and print
