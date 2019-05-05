Sub totalTickerVolume()

'ticker that will have its volume totalled
Dim ticker As String

'ticker volume per ticker
Dim tickerTotal As Double
tickerTotalVolume = 0

'build summary table and declare starting row
Dim rowTable As Long
rowTable = 1 'this is where the summary table starts
Range("I1").Value = "Ticker"
Range("J1").Value = "Volume"

'add ticker volume until ticker changes name
Dim rowTicker As Long
rowTicker = 2 'this is where the tickers start
While Cells(rowTicker, 1).Value <> "" 'terminates loop when ticker cell has no value
    
        
        If Cells(rowTicker, 1).Value <> Cells(rowTicker - 1, 1).Value Then 'adds unique ticker to table
            tickerTotalVolume = 0 'resets ticker total volume for next uniqe ticker
            rowTable = rowTable + 1 'Starts next row in summary table
            Cells(rowTable, 9).Value = Cells(rowTicker, 1).Value 'adds ticker to summary table
        
        Else 'adds up total ticker volume and updates volume cell in summary table
            tickerTotalVolume = tickerTotalVolume + Cells(rowTicker, 6).Value
            Cells(rowTable, 10).Value = tickerTotalVolume
            
        End If
            
        rowTicker = rowTicker + 1

Wend


End Sub
