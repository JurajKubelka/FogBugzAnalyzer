accessing - events
stringDatesAndInfo
	<script: 'self stringDatesAndInfo inspect'>
	"A collection of dates with additional information.
	Type (1-day event, several-days event), name (sprint, release, esug), staring day, [ ending day ], additional information.
	"
	^ #(
	"2015" "extra info"
	'several-days' 'Pharo Days' '29-Jan-2015' '30-Jan-2015' ''
	'1-day' 'Sprint' '3-Apr-2015' ''
	'1-day' 'Moose Release' '17-Apr-2015' 'Pharo 4.0 Released'
	'1-day' 'Sprint' '22-May-2015' ''
	'1-day' 'Moose Release' '5-June-2015' 'Moose 5.1 Released'
	'1-day' 'Sprint' '10-Jun-2015' 'Includes report'
	'several-days' 'ESUG' '13-Jul-2015' '17-Jul-2015' 'ESUG Italy 13-17 July 2015'
	'1-day' 'Sprint' '11-Sept-2015' ''
	'1-day' 'Sprint' '23-Oct-2015' 'First time in DCC Chile'
	'1-day' 'Sprint' '27-Nov-2015' ''
	'1-day' 'Sprint' '18-Dec-2015' 'CI did not worked'
	
	"2016"
	'1-day' 'Sprint' '29-Jan-2016' 'Only Juraj in Chile'
	'1-day' 'Sprint' '26-Feb-2016' 'No in Chile'
	'several-days' 'Pharo Days' '31-Mar-2016' '1-Apr-2016' ''
	'1-day' 'Sprint' '29-Apr-2016' ''
	'1-day' 'Pharo Release' '12-May-2016' 'Pharo 5.0 Released'
	'1-day' 'Sprint' '27-May-2016' ''
	'1-day' 'Sprint' '29-Jun-2016' 'Not announced?'
	'1-day' 'Sprint' '29-Jul-2016' 'Was announced but did not happen in Lille, only in Chile'
	'1-day' 'Moose Release' '15-Aug-2016' 'Moose 6.0 Released'
	'several-days' 'ESUG' '22-Aug-2016' '26-Aug-2016' 'ESUG 22-26 August 2016 Czech Republic'
	'1-day' 'Sprint' '30-Sep-2016' 'If I remember well it was not organized in the end in Lille. Not in Chile.'
	'1-day' 'Sprint' '4-Nov-2016'  'Not in Chile'
	'1-day' 'Sprint' '25-Nov-2016' 'Not in Chile'
	'1-day' 'Sprint' '16-Dec-2016' 'Not in Chile. Christmas Party in Lille.'
	
	"2017"
	'1-day' 'Sprint' '27-Jan-2017' 'Not in Chile. Huge automatic changes of openned issues.'
	'1-day' 'Sprint' '3-March-2017' 'A lot of conversation on Slack'
	'1-day' 'Expected Pharo Release' '31-March-2017' ''
	)