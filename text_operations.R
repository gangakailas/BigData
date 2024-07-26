text_operation<-function(text, target_word, replacement_word){
  
  words<-unlist(strsplit(text, "\\s+"))
  
  total_words<-length(words)
  
  words_lengths<-nchar(words)
  avg_word_length<-mean(words_lengths)
  
  longest_word<-words[which.max(words_lengths)]
  
  new_text<-gsub(target_word, replacement_word, text, ignore.case=TRUE)
  
  cat("Total Number of Words = ",total_words, "\n")
  cat("The Average Word Length = ",avg_word_length, "\n")
  cat("The Longest Word = ",longest_word, "\n")
  cat("The Modified Text = ",new_text, "\n")
}

sample_text<-"Dance to the music that only you can hear, for it's your soul that's singing."
target_word<-"hear"
replacement_word<-"listen"

text_operation(sample_text, target_word, replacement_word)