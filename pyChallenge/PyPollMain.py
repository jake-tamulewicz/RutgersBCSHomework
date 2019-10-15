#Dependancies
import os
import csv

#CSV path
csvpath = os.path.join('Resources/election_data.csv')

#Variables
voteCountTotal = 0
candidate = ""
candidatesList = []
voteCountPerCandidate= {}
winner = ["", 0, ""]

#Open CSV
with open(csvpath, newline='') as csvfile:
    csv_election = csv.reader(csvfile, delimiter=",")

    #Skip header
    header = next(reader)

    #Total Votes accounting for first row
    voteCountTotal= len(list(csv_election)) + 1

    #Loop thru csv to determine winner
    for row in csv_election:
        #Add candidates to list of candidates and determine total per candidate
        candidate = row[2]
        if candidate not in candidatesList:
            candidateList.append(candidate)
            votesPerCandidate[candidate] = 0
        else
            votesPerCandidate[candidate] += 1
    
    #Loop thru candidate list to find winner
    for candidate in voteCountPerCandidate:
        #Get votes for each candidate
        candidateVotes = voteCountPerCandidate.get(candidate)

        #Determine percentage for each candidate
        percentage = float(candidateVotes) / float(voteCountTotal) * 100

        #Find winner
        if (votes > winning_count):
            winner[0] = candidate
            winner[1] = votes
            winner[2] = percentage



#Print Analysis
txt_analysis = os.path.join("Analysis.txt")
with open(txt_analysis, "w") as txt_file:
    #Output
    analysisOutput = (
        "Election Results
        "--------------------"
        "Total Votes:" + str(voteCountTotal)
        "--------------------"
        "Winner: " + str(winner[0])"
        "---------------------"
    )