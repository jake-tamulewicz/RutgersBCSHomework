#Import necessary libraries
import os
import csv

#CSV path
csvpath = os.path.join('Resources/budget_data.csv')

#Variables
totalProfitOrLoss = 0
greatestIncreaseList = ["", 0]
greatestDecreaseList = ["", 9999999999999999999]

#Open CSV
with open(csvpath, newline='') as csvfile:
    csv_bank = csv.reader(csvfile, delimiter=",")

    #Skip header in CSV and denote first row
    header = next(csv_bank)
    firstRow = next(csv_bank)

    #Calculate total months and account for first row
    totalMonths = len(list(csv_bank)) + 1


    #Loop thru and add net total profit/loss
    totalProfitOrLoss += int(firstRow[1])
    for row in csv_bank:
        totalProfitOrLoss += int(row[1])
            
    #Calculate average change over total months
    avgChange = totalProfitOrLoss / totalMonths

    #Loop thru csv file to find greatest profit and loss
    for row in csv_bank:
        # Greatest Profit
        if int(row[1]) > greatestIncreaseList[1]:
            greatestIncreaseList[0] = row[0]
            greatestIncreaseList[1] = row[1]
        # Greatest Loss
        if int(row[1]) < greatestDecreaseList[1]:
            greatestDecreaseList[0] = row[0]
            greatestDecreaseList[1] = row[1]

#Print results
print("Financial Analysis")
print("----------------------------")
print("Total Months: " + str(totalMonths))
print("Total: $" + str(totalProfitOrLoss))
print("Average Change: $" + str(avgChange))
print("Greatest Increase in Profits: " + str(greatestIncreaseList[0]) + " $" + str(greatestIncreaseList[1]))
print("Greatest Decrease in Profits: " + str(greatestDecreaseList[0]) + " $" + str(greatestDecreaseList[1]))

#Generate text file from results
analysis = os.path.join("Analysis.txt")
with open(analysis, "w") as txt_analysis:
    txt_analysis.write("Financial Analysis"
    "----------------------------"
    "Total Months: " + str(totalMonths)
    "Total: $" + str(totalProfitOrLoss)
    "Average Change: $" + str(avgChange)
    "Greatest Increase in Profits: " + str(greatestIncreaseList[0]) + " $" + str(greatestIncreaseList[1])
    "Greatest Decrease in Profits: " + str(greatestDecreaseList[0]) + " $" + str(greatestDecreaseList[1]))
        
