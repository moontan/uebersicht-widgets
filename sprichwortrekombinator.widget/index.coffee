###
    sprichwortrekombinator.widget for Übersicht
    https://github.com/moontan/uebersicht-widgets
    This work is licensed under the Creative Commons
    Attribution-NonCommercial-ShareAlike 4.0 International
    License. To view a copy of this license, visit
    http://creativecommons.org/licenses/by-nc-sa/4.0/.
###

command: 'sprichwortrekombinator.widget/getproverb.sh e'

# refresh every 20 minutes
refreshFrequency: 1200000

###
    Get the font used in the section below from http://ligafaktur.de/LTFetteGotisch.zip,
    unzip it and place it in the widget's directory. Otherwise just enjoy the view with your
    OS's standard font or change it to your liking. The above website offers many good-looking
    fonts for download.
###

style: """
  @font-face {
      font-family: LTFetteGotischU1S;
      src: url('sprichwortrekombinator.widget/LTFetteGotischU1S.otf') format('opentype');
  }
  top: 300px
  left: 150px
  font-family: LTFetteGotischU1S, Calibri, Helvetica

  div
    display: block
    width: 300px
    height: 180px
    border: 1px solid #999
    line-height: 42px
    text-align: left
    text-shadow: 0 0 5px rgba(#36F, 0.6)
    background: rgba(#FEB, 0.7)
    font-size: 30px
    font-weight: 100
    padding: 10px 20px 35px 20px
    color: #42A

    &:after
      content: '(Sprichwortrekombinator)'
      position: absolute
      text-align: right
      right: 5px
      bottom: 0px
      font-size: 18px
      font-weight: 500
      color: #52F

"""

render: -> """
  <div class='proverb'></div>
"""

update: (output, domEl) ->
  $(domEl).find('.proverb').html(output)
