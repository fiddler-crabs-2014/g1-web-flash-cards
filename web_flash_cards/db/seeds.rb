File.open("english-french.txt").each do |line|
  q_a_pair = line.chomp.split("\t")
  Card.create(question: q_a_pair[1], answer: q_a_pair[0])
end
