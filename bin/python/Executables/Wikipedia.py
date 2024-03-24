import wikipedia

article = input( "Enter the Article you'd like to view: " )
summary = wikipedia.summary( article )
print( summary )
