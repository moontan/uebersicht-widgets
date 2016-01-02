command: 'sprichwortrekombinator.widget/getproverb.sh e'

refreshFrequency: 1200000

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
    text-shadow: 0 0 5px rgba(#BDF, 0.8)
    background: rgba(#FEB, 0.7)
    font-size: 30px
    font-weight: 100
    padding: 10px 20px 35px 20px
    color: #63D

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
