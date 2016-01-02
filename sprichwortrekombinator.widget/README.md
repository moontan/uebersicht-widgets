# Widgets for Übersicht
## sprichwortrekombinator.widget
*“Still waters call for desperate measures”*
This is a widget for [felixhageloh](https://github.com/felixhageloh)'s [Übersicht](https://github.com/felixhageloh/uebersicht).
It fetches a profound-sounding phrase that is really a mashup of two existing traditional proverbs from the simple, yet braingasm-inducing [Sprichwortrekombinator](http://sprichwortrekombinator.de) and displays it in a neat-looking Gothic font.
If you prefer the German version over the default English output simply invoke the shell script in the first line of the coffee script with the 'd' parametre instead of 'e':
```
command: 'sprichwortrekombinator.widget/getproverb.sh d'
```
### Font
Get the open type font from [http://ligafaktur.de/LTFetteGotisch.zip](http://ligafaktur.de/LTFetteGotisch.zip), unzip it and place it in the widget’s directory. Or pick any other font you are fond of (that particular site provides heaps of [more beautiful type](http://ligafaktur.de/Schriften.html) to pick from if needed).
### Minor Æsthetical Blemish
I actually wanted to include another vertically centered container for the text inside the main frame, so the gap between the shorter proverbs and the signature at the bottom is smaller. Since I'm not really a CSS guru, let alone a coffee script adept, I appreciate any advice on how to accomplish this.
