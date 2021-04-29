# 'arules' package provides the infrastructure for representing,
# manipulating, and analyzing transaction data and patterns
library(arules)

# 'arulesViz' is used for visualizing association rules and Frequent itemsets.
# it extends the package 'arules' with various visualization 
library(arulesViz)

# 
library(RColorBrewer)

data("Groceries")

rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))

inspect(rules[1:10])

arules::itemFrequencyPlot(Groceries, topN = 20,
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = 'relative',
                          ylab = 'Item Frequency (Relative)')
