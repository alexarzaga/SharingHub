
P(A | B) = P(B | A) * P(A) / P(B)<br>
<br>
P(A | B) = P(B | A) * P(A) / [P(A)*P(B|A) + P(A~)*P(B|A~)] <br>

# Intuition
## #1
~10% <br>
## #2
98% <br>
## #3
9% <br>
## #4
1.45% <br>

# Bayes' Rule
## #1
P(positive) = P(infected)P(positive|infected) + P(infected~)P(positive|infected~) = 0.005 * 0.98 + 0.995 * 0.1 = 0.0049 + 0.0995 = 0.1044 = 10.44% <br>
## #2
P(infected | positive) = 98%
## #3
P(positive~ | infected~) = 90%
## #4
P(incorrect) = P(infected~|positive) + P(infected|positive~) = 0.02 * 0.05 + 0.9 * 0.995 = 0.0001 + 0.0995 = 9.96% 
