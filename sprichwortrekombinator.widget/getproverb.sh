#!/bin/bash
# get proverb combined randomly from two traditional proverbs
# in German [1|d[e]] or English [2|e[n]]
# (and pass it to Übersicht widget)
#
#   This work was released into the public domain
#   by moontan, identified as Axel Kirch, and is
#   free of known copyright restrictions.
#   To view a copy of this license, visit
#   http://creativecommons.org/publicdomain/mark/1.0/

LANG=${1:-'d'}			# set language parametre to German if not passed
	case "$LANG" in		# determine URL:
		[eE]|[eE][nN]|2)	URL="proverb.gener.at/or"			        # English version
                            LQUOT="\xE2\x80\x9C"                        # left quotation mark U+201C
                            RQUOT="\xE2\x80\x9D";;                      # right quotation mark U+201D
		[dD]|[dD][eE]|1)	URL="sprichwortrekombinator.de"             # German version
                            LQUOT="\xE2\x80\x9E"                        # left quotation mark U+201E
                            RQUOT="\xE2\x80\x9D";;                      # right quotation mark U+201D
		*)	echo "Service only available in German or English."         # Error message
			echo "usage: getproverb [1|2]|[d[e]|e[n]]"                  # How to use
			return 1;;                                                  # Exit with error code
	esac
    PROVERB="$(curl -GLSs $URL | grep \=\"spwort\"\> | sed -e 's/<[^>]*>//g')"  # get content and rid it of markup
    echo -e "$LQUOT${PROVERB#' '}$RQUOT"                                # Remove leading space, add quotation marks and print
