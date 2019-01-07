
## Inuition
Thinking somewhat logically through the situation: At first the probability of choosing the right door is 1/3. Then the host opens up a door that is incorrect. Now looking at the choices it seems you have a 50% that you would choose the right door. So it doesn't matter if you switch or not. <br>

## Bayes' Rule
Looking at the situation from a data science point of view: We will apply Bayes' Rule using a specific option (you choose A car is in B). <br>
First looking at the Primary probability from the start: <br>
P(Car@A) = 1/3 <br>
P(Car@B) = 1/3 <br>
P(Car@C) = 1/3 <br>
Now Monty Hall knows where the car is and won't choose a door with the car. Therefore the probability that Monty Picks a door with a car is: <br>
P(Open B|Car@A) = 1/2 <br>
P(Open B|Car@B) = 0 <br>
P(Open B|Car@C) = 1 <br>
And finally we look at the probability that the car is behind a given door given now that Door B is open. <br>
P(Car@A|Open B) = P(Open B|Car@A) * P(Car@A) / P(Car@A)P(Open B|Car@A) + P(Car@B)P(Open B|Car@B) + P(Car@C)P(Open B|Car@C) = (1/2 * 1/3) / (1/2 * 1/3 + 0 * 1/3 + 1 * 1/3) = 1/3 <br>
P(Car@B|Open B) = P(Open B|Car@B) * P(Car@B) / P(Car@B)P(Open B|Car@B) + P(Car@A)P(Open B|Car@A) + P(Car@C)P(Open B|Car@C) = (0 * 1/3) / (1/2 * 1/3 + 0 * 1/3 + 1 * 1/3) = 0 <br>
P(Car@C|Open B) = P(Open B|Car@C) * P(Car@C) / P(Car@C)P(Open B|Car@C) + P(Car@B)P(Open B|Car@B) + P(Car@A)P(Open B|Car@A) = (1 * 1/3) / (1/2 * 1/3 + 0 * 1/3 + 1 * 1/3) = 2/3 <br>
This shows us that if we chose option A it is in our interest to switch becuase the probability that the car is in another option is higher (2/3). In simpler terms, the option you choose will always be 1/3 probability it is the car. While the other two options (one possibily with the car, one without the car) is 2/3. 


```python

```
