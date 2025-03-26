# Scenario #1

1. What are the popular choices of booking rates (table rate, columns ShortRateName or RateName) for different segments of customers (table reservation, columns AgeGroup, Gender, NationalityCode)?
***

In order to understand booking preferences, we will first look at the general tendencies each customer group has independently. Then, we will dive into more detail by relating different segments to gain a deeper understanding of customer behaviour. Additionally, we will do a timeseries analysis in order to identify if preferences change with the seasons.

Popularity can be measured in a variety of ways (i.e number of reservations, number of nights, etc.) and each metric offers a unique perspective into customer behaviour. We will try to cover as many we can in this analysis, while remaining relevant to the subject matter. Aside from pointing out the obvious winner for each segment, we will try to explain the *why*.

## Aggregation by Age Groups:

### Age group 0:

| Age Group | Rate Name                  | Number of Reservations | Relative %  | Number of Nights | Relative % | Total Night Cost | Relative % | Average Total Night Cost | Average Cost Per Night |
|-----------|----------------------------|------------------------|------------|------------------|------------|------------------|------------|--------------------------|-------------------------|
| 0         | Fully Flexible             | 662                    | 43.55%     | 1,807            | 42.49%     | 395,295.04       | 50.59%     | 597.12                   | 218.76                  |
| 0         | Early - 60 days            | 539                    | 35.46%     | 1,572            | 36.96%     | 246,219.20       | 31.51%     | 456.81                   | 156.63                  |
| 0         | Early - 21 days            | 194                    | 12.76%     | 504              | 11.85%     | 75,122.37        | 9.62%      | 387.23                   | 149.05                  |
| 0         | Min 4 nights               | 35                     | 2.30%      | 140              | 3.29%      | 19,054.81        | 2.44%      | 544.42                   | 136.11                  |
| 0         | Non Refundable BAR BB      | 34                     | 2.24%      | 60               | 1.41%      | 9,606.35         | 1.23%      | 282.54                   | 160.11                  |
| 0         | Min 3 nights               | 23                     | 1.51%      | 69               | 1.62%      | 9,843.71         | 1.26%      | 427.99                   | 142.66                  |
| 0         | Direct Booking             | 19                     | 1.25%      | 43               | 1.01%      | 10,553.66        | 1.35%      | 555.46                   | 245.43                  |
| 0         | Suite Offer                | 11                     | 0.72%      | 36               | 0.85%      | 11,042.34        | 1.41%      | 1,003.85                 | 306.73                  |
| 0         | Min 5 nights               | 3                      | 0.20%      | 22               | 0.52%      | 4,555.83         | 0.58%      | 1,518.61                 | 207.08                  |

Note: Each 'Relative %' column represents the relative percentage of the column to it's left for that age group.

At a glance, we can see that for this age group, **'Fully Flexible', 'Early - 60 days', and 'Early - 21 days' Rates account for 91.77% of the reservations**, with 'Fully Flexible' being the top performer with 42.39%. Similarly, these same rates account for **91.3% of the total nights reserved**, where 'Fully Flexible' is 42.49% of them.

In terms of revenue, **'Fully Flexible' generates 50.59% of the total revenue** in this age group, despite the average cost per night being in the 3rd highest of all rates available.

Judging by the type of rates prefered, this group **highly values flexibility**. Additionally, they **tend to book their reservations in advance (48.22% of reservations)**, indicating they are most **likely price conscious** (potentially high price elasticity), or they tend to plan far ahead.

### Age group 25:

| Age Group | Rate Name               | Number of Reservations | Relative % | Number of Nights | Relative % | Total Night Cost | Relative % | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-------------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 25        | Fully Flexible          | 103                    | 44.02%                     | 237              | 43.33%                | 50,364.98        | 48.69%                     | 488.98               | 212.51              |
| 25        | Non Refundable BAR BB   | 57                     | 24.36%                     | 88               | 16.09%                | 13,664.03        | 13.21%                     | 239.72               | 155.27              |
| 25        | Early - 21 days         | 29                     | 12.39%                     | 71               | 12.98%                | 11,250.24        | 10.88%                     | 387.94               | 158.45              |
| 25        | Min 3 nights            | 16                     | 6.84%                      | 48               | 8.78%                 | 8,280.60         | 8.01%                      | 517.54               | 172.51              |
| 25        | Min 4 nights            | 12                     | 5.13%                      | 51               | 9.32%                 | 8,841.37         | 8.55%                      | 736.78               | 173.36              |
| 25        | Early - 60 days         | 7                      | 2.99%                      | 22               | 4.02%                 | 3,170.26         | 3.07%                      | 452.89               | 144.10              |
| 25        | Direct Booking          | 4                      | 1.71%                      | 11               | 2.01%                 | 2,722.47         | 2.63%                      | 680.62               | 247.50              |
| 25        | Suite Offer             | 4                      | 1.71%                      | 9                | 1.65%                 | 3,929.09         | 3.80%                      | 982.27               | 436.57              |
| 25        | Min 5 nights            | 2                      | 0.85%                      | 10               | 1.83%                 | 1,207.83         | 1.17%                      | 603.92               | 120.78              |

Note: Each 'Relative %' column represents the relative percentage of the column to it's left for that age group.

For this age group, **'Fully Flexible', 'Non Refundable BAR BB', and 'Early - 21 days' rates account for 80.77% of the reservations**, with 'Fully Flexible' leading at 44.02%. These rates **also make up 72.4% of the total nights reserved**, and **'Fully Flexible' alone generates 48.69% of the total revenue.**

While flexibility is the most important factor for this group, there is a noticeable shift toward price-sensitive options and longer nights stays; with a quarter of reservations coming from the Best Availiable Rate Non-Refundable option, and almost a fifth of the number of nights reseved coming from minimum night stay rates. This group is slightly more open to risk, and is less likely to plan far ahead their reservation.

### Age group 35:

| Age Group | Rate Name | Number of Reservations | Relative % | Number of Nights | Relative % | Total Night Cost | Relative % | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-------------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 35        | Fully Flexible          | 142                    | 50.90%                     | 342              | 52.29%                | 69,570.59        | 56.24%                     | 489.93               | 203.42              |
| 35        | Non Refundable BAR BB   | 57                     | 20.43%                     | 92               | 14.07%                | 15,393.78        | 12.44%                     | 270.07               | 167.32              |
| 35        | Early - 21 days         | 33                     | 11.83%                     | 79               | 12.08%                | 13,259.43        | 10.72%                     | 401.80               | 167.84              |
| 35        | Min 3 nights            | 15                     | 5.38%                      | 45               | 6.88%                 | 7,596.30         | 6.14%                      | 506.42               | 168.81              |
| 35        | Early - 60 days         | 12                     | 4.30%                      | 27               | 4.13%                 | 3,365.63         | 2.72%                      | 280.47               | 124.65              |
| 35        | Min 4 nights            | 9                      | 3.23%                      | 39               | 5.96%                 | 6,559.20         | 5.30%                      | 728.80               | 168.18              |
| 35        | Direct Booking          | 6                      | 2.15%                      | 14               | 2.14%                 | 4,046.92         | 3.27%                      | 674.49               | 289.07              |
| 35        | Suite Offer             | 4                      | 1.43%                      | 11               | 1.68%                 | 3,367.87         | 2.72%                      | 841.97               | 306.17              |
| 35        | Min 5 nights            | 1                      | 0.36%                      | 5                | 0.76%                 | 554.17           | 0.45%                      | 554.17               | 110.83              |

Note: Each 'Relative %' column represents the relative percentage of the column to it's left for that age group.

For this age group, **'Fully Flexible' is by far the most popular rate, making up 50.90% of reservations, 52.29% of nights, and 56.24% of total revenue.** This suggests that guests in this group prioritize flexibility and are willing to pay more for it, as reflected in the relatively high average cost per night (€203.42) and average total per booking (€489.93).

While flexibility is the most important factor for this group, price-sensitive options are of relevance, with a fifth of reservations coming from the Best Availiable Rate Non-Refundable option. This group is slightly more open to risk, and is less likely to plan far ahead their reservation.

| Age Group | Rate Name| Number of Reservations | Relative %  | Number of Nights | Relative % | Total Night Cost | Relative % | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-------------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 45        | Fully Flexible          | 127                    | 52.70%                     | 297              | 52.29%                | 67,735.22        | 56.79%                     | 533.35               | 228.06              |
| 45        | Non Refundable BAR BB   | 41                     | 17.01%                     | 64               | 11.27%                | 10,635.48        | 8.92%                      | 259.40               | 166.18              |
| 45        | Early - 21 days         | 27                     | 11.20%                     | 66               | 11.62%                | 11,225.28        | 9.41%                      | 415.75               | 170.08              |
| 45        | Min 3 nights            | 14                     | 5.81%                      | 42               | 7.39%                 | 8,059.50         | 6.76%                      | 575.68               | 191.89              |
| 45        | Min 4 nights            | 8                      | 3.32%                      | 26               | 4.58%                 | 5,358.85         | 4.49%                      | 669.86               | 206.11              |
| 45        | Early - 60 days         | 8                      | 3.32%                      | 27               | 4.75%                 | 3,791.35         | 3.18%                      | 473.92               | 140.42              |
| 45        | Suite Offer             | 7                      | 2.90%                      | 13               | 2.29%                 | 5,050.24         | 4.23%                      | 721.46               | 388.48              |
| 45        | Direct Booking          | 7                      | 2.90%                      | 23               | 4.05%                 | 6,439.48         | 5.40%                      | 919.93               | 279.98              |
| 45        | Min 5 nights            | 2                      | 0.83%                      | 10               | 1.76%                 | 984.80           | 0.83%                      | 492.40               | 98.48               |

Note: Each 'Relative %' column represents the relative percentage of the column to it's left for that age group.

Guests in Age Group 45 show a clear preference for the 'Fully Flexible' rate, which accounts for over half of the reservations, nights, and revenue in this group. The next most popular choices are 'Non Refundable BAR BB' and 'Early - 21 days', which together account for 28.21% of reservations. 

In terms of revenue, it appears to be more evenly distributed amongts rates, excluding 'Full Flexibility', with 'Direct Booking' having a relevant 5.40% contribution to revenue, and accounting for 4.05% of nights reserved. 

| Age Group | Rate Name | Number of Reservations | Relative % | Number of Nights | Relative % | Total Night Cost | Relative % | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-------------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 55        | Fully Flexible          | 78                     | 53.42%                     | 182              | 51.70%                | 39,134.27        | 52.15%                     | 501.72               | 215.02              |
| 55        | Non Refundable BAR BB   | 19                     | 13.01%                     | 29               | 8.24%                 | 5,327.53         | 7.10%                      | 280.40               | 183.71              |
| 55        | Early - 21 days         | 18                     | 12.33%                     | 46               | 13.07%                | 8,581.01         | 11.43%                     | 476.72               | 186.54              |
| 55        | Min 3 nights            | 11                     | 7.53%                      | 33               | 9.38%                 | 6,674.85         | 8.89%                      | 606.80               | 202.27              |
| 55        | Direct Booking          | 7                      | 4.79%                      | 17               | 4.83%                 | 4,448.67         | 5.93%                      | 635.52               | 261.69              |
| 55        | Min 4 nights            | 6                      | 4.11%                      | 25               | 7.10%                 | 4,087.67         | 5.45%                      | 681.28               | 163.51              |
| 55        | Suite Offer             | 4                      | 2.74%                      | 12               | 3.41%                 | 5,141.22         | 6.85%                      | 1,285.30             | 428.43              |
| 55        | Early - 60 days         | 3                      | 2.05%                      | 8                | 2.27%                 | 1,651.29         | 2.20%                      | 550.43               | 206.41              |

Note: Each 'Relative %' column represents the relative percentage of the column to it's left for that age group.

Guests in Age Group 55 show a strong preference for 'Fully Flexible' rates, which account for 53.42% of reservations, 51.70% of nights, and 52.15% of total revenue. Other rates have similar contributions to revenue, with more expensive options like 'Direct Booking' and 'Suite Offer' closing in on a tenth of total number of nights reserved. Additionally, minimum stay rates contributes a 16.48% of total nights reserved, showing an elevated interest in longer stays.

This group shows to be less price sensitive than others while putting a slightly higher value on quality.

| Age Group | Rate Name               | Number of Reservations | Relative % of Reservations | Number of Nights | Relative % of Nights | Total Night Cost | Relative % of Total Cost | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-------------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 65        | Fully Flexible          | 36                     | 55.38%                     | 132              | 62.56%                | 14,879.63        | 55.62%                     | 413.32               | 112.72              |
| 65        | Non Refundable BAR BB   | 9                      | 13.85%                     | 13               | 6.16%                 | 2,268.75         | 8.48%                      | 252.08               | 174.52              |
| 65        | Early - 21 days         | 8                      | 12.31%                     | 22               | 10.43%                | 3,720.23         | 13.91%                     | 465.03               | 169.10              |
| 65        | Min 3 nights            | 4                      | 6.15%                      | 13               | 6.16%                 | 2,638.09         | 9.86%                      | 659.52               | 202.93              |
| 65        | Min 4 nights            | 4                      | 6.15%                      | 16               | 7.58%                 | 2,320.26         | 8.67%                      | 580.06               | 145.02              |
| 65        | Early - 60 days         | 3                      | 4.62%                      | 10               | 4.74%                 | 790.18           | 2.95%                      | 263.39               | 79.02               |
| 65        | Min 5 nights            | 1                      | 1.54%                      | 5                | 2.37%                 | 132.89           | 0.50%                      | 132.89               | 26.58               |

In this group, 'Fully Flexible' is the dominant rate, accounting for 55.38% of reservations, 62.56% of nights, and 55.62% of total revenue. This suggests that flexibility is particularly important for older guests, likely due to the potential for changing plans.

While the volume of reservations is lower overall, revenue is still spread across several rate types. 'Early - 21 days' stands out as the next most impactful, contributing 13.91% of revenue with just 12.31%. Although there are no 'Suite Offer' rates reserved, sample size is too small to draw any significant conclusions about this or any other category, except 'Fully Flexible'.

| Age Group | Rate Name             | Number of Reservations | Relative % of Reservations | Number of Nights | Relative % of Nights | Total Night Cost | Relative % of Total Cost | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-----------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 100       | Early - 21 days       | 6                      | 37.50%                     | 15               | 36.59%                | 2,680.24         | 38.92%                     | 446.71               | 178.68              |
| 100       | Early - 60 days       | 4                      | 25.00%                     | 10               | 24.39%                | 583.55           | 8.47%                      | 145.89               | 58.36               |
| 100       | Fully Flexible        | 3                      | 18.75%                     | 7                | 17.07%                | 1,870.73         | 27.17%                     | 623.58               | 267.25              |
| 100       | Min 3 nights          | 2                      | 12.50%                     | 6                | 14.63%                | 1,036.56         | 15.05%                     | 518.28               | 172.76              |
| 100       | Suite Offer           | 1                      | 6.25%                      | 3                | 7.32%                 | 715.32           | 10.39%                     | 715.32               | 238.44              |

Sample size is too small to draw any statistically significant conclusions.

---

Now that we have taken a look at each age group by rate name, for clarity, let's focus on specific rates that show clearly dominant age groups.

### Early - 60 Days Rate

| Age Group | Rate Name        | Number of Reservations | Relative % of Reservations | Number of Nights | Relative % of Nights | Total Night Cost | Relative % of Total Cost | Avg Total Night Cost | Avg Cost Per Night |
|-----------|------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 0         | Early - 60 days  | 539                    | 35.46%                     | 1,572            | 36.96%                | 246,219.20       | 31.51%                     | 456.81               | 156.63              |
| 100       | Early - 60 days  | 4                      | 25.00%                     | 10               | 24.39%                | 583.55           | 8.47%                      | 145.89               | 58.36               |
| 45        | Early - 60 days  | 8                      | 3.32%                      | 27               | 4.75%                 | 3,791.35         | 3.18%                      | 473.92               | 140.42              |
| 65        | Early - 60 days  | 3                      | 4.62%                      | 10               | 4.74%                 | 790.18           | 2.95%                      | 263.39               | 79.02               |
| 35        | Early - 60 days  | 12                     | 4.30%                      | 27               | 4.13%                 | 3,365.63         | 2.72%                      | 280.47               | 124.65              |
| 25        | Early - 60 days  | 7                      | 2.99%                      | 22               | 4.02%                 | 3,170.26         | 3.07%                      | 452.89               | 144.10              |
| 55        | Early - 60 days  | 3                      | 2.05%                      | 8                | 2.27%                 | 1,651.29         | 2.20%                      | 550.43               | 206.41              |

From this table we can see that customers who tend to plan their stays ahead the most are those in age group 0, with 35.46% of their reservations belonging to 'Early - 60 days', with other age groups staying below 5% (except for age group 100 whose sample size is too small to consider).


### Non Refundable BAR BB

| Age Group | Rate Name               | Number of Reservations | Relative % of Reservations | Number of Nights | Relative % of Nights | Total Night Cost | Relative % of Total Cost | Avg Total Night Cost | Avg Cost Per Night |
|-----------|-------------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 25        | Non Refundable BAR BB   | 57                     | 24.36%                     | 88               | 16.09%                | 13,664.03        | 13.21%                     | 239.72               | 155.27              |
| 35        | Non Refundable BAR BB   | 57                     | 20.43%                     | 92               | 14.07%                | 15,393.78        | 12.44%                     | 270.07               | 167.32              |
| 45        | Non Refundable BAR BB   | 41                     | 17.01%                     | 64               | 11.27%                | 10,635.48        | 8.92%                      | 259.40               | 166.18              |
| 55        | Non Refundable BAR BB   | 19                     | 13.01%                     | 29               | 8.24%                 | 5,327.53         | 7.10%                      | 280.40               | 183.71              |
| 65        | Non Refundable BAR BB   | 9                      | 13.85%                     | 13               | 6.16%                 | 2,268.75         | 8.48%                      | 252.08               | 174.52              |
| 0         | Non Refundable BAR BB   | 34                     | 2.24%                      | 60               | 1.41%                 | 9,606.35         | 1.23%                      | 282.54               | 160.11              |

Here we can see how age groups 25-35 show a higher risk tolerance in return of enjoying better rates.

### Suite Offer

| Age Group | Rate Name     | Number of Reservations | Relative % of Reservations | Number of Nights | Relative % of Nights | Total Night Cost | Relative % of Total Cost | Avg Total Night Cost | Avg Cost Per Night |
|-----------|----------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 100       | Suite Offer    | 1                      | 6.25%                      | 3                | 7.32%                 | 715.32           | 10.39%                     | 715.32               | 238.44              |
| 55        | Suite Offer    | 4                      | 2.74%                      | 12               | 3.41%                 | 5,141.22         | 6.85%                      | 1,285.30             | 428.43              |
| 45        | Suite Offer    | 7                      | 2.90%                      | 13               | 2.29%                 | 5,050.24         | 4.23%                      | 721.46               | 388.48              |
| 35        | Suite Offer    | 4                      | 1.43%                      | 11               | 1.68%                 | 3,367.87         | 2.72%                      | 841.97               | 306.17              |
| 25        | Suite Offer    | 4                      | 1.71%                      | 9                | 1.65%                 | 3,929.09         | 3.80%                      | 982.27               | 436.57              |
| 0         | Suite Offer    | 11                     | 0.72%                      | 36               | 0.85%                 | 11,042.34        | 1.41%                      | 1,003.85             | 306.73              |

Although percentage of reservations of this rate are generally low, this table shows a clear trend, where age group is directly proportional to the number of reservations and nights booked with the suite offer. This speaks to the shift in traveler preferences toward comfort and premium experiences as age increases, with older age groups more willing to spend on higher-end offerings despite booking less frequently overall.

### Direct Booking

| Age Group | Rate Name       | Number of Reservations | Relative % of Reservations | Number of Nights | Relative % of Nights | Total Night Cost | Relative % of Total Cost | Avg Total Night Cost | Avg Cost Per Night |
|-----------|------------------|------------------------|----------------------------|------------------|-----------------------|------------------|----------------------------|----------------------|---------------------|
| 55        | Direct Booking   | 7                      | 4.79%                      | 17               | 4.83%                 | 4,448.67         | 5.93%                      | 635.52               | 261.69              |
| 45        | Direct Booking   | 7                      | 2.90%                      | 23               | 4.05%                 | 6,439.48         | 5.40%                      | 919.93               | 279.98              |
| 35        | Direct Booking   | 6                      | 2.15%                      | 14               | 2.14%                 | 4,046.92         | 3.27%                      | 674.49               | 289.07              |
| 25        | Direct Booking   | 4                      | 1.71%                      | 11               | 2.01%                 | 2,722.47         | 2.63%                      | 680.62               | 247.50              |
| 0         | Direct Booking   | 19                     | 1.25%                      | 43               | 1.01%                 | 10,553.66        | 1.35%                      | 555.46               | 245.43              |

In 'Direct Booking' the same tendency as 'Suite Offer'. The higher the age group, the larger the relative percentage of reservations made in the corresponding age group. In this case however, it shows that higher age groups are less price elastic.

### Age Group Comparison Summary

**'Fully Flexible' Rate is the most popular amongst all age groups with enough data and dominates in terms of number of reservations, number of nights booked, and contribution to revenue.**

- Age Groups 0, 25, and 35 all show a strong preference for ‘Fully Flexible’ rates, but with increasing diversity in rate selection as age increases.

    - Age 0 is highly concentrated, with over 91% of bookings in the top 3 rate types — indicating low dispersion and a strong lean toward flexibility and early booking.

    - Age 25 still favors flexibility but has more uptake in discounted and stay-length-based rates, suggesting a mix of price sensitivity and flexibility.

    - Age 35 maintains ‘Fully Flexible’ dominance but spreads revenue more evenly, with rising interest in premium and mid-range offers, hinting at a shift toward value-conscious choices.

- Age Group 45 mirrors Age 35 in preference, with ‘Fully Flexible’ still leading, but less dominant. The revenue is more evenly distributed across several rate types, and there's increased interest in premium options like ‘Suite Offer’ and ‘Direct Booking’. This suggests a segment that's willing to pay for quality and experience, not just flexibility.

- Age Group 55 continues the trend of flexibility leading, but again with a broader distribution of revenue across rate types. Guests in this group show a greater willingness to explore promotional and extended stay offers, while still maintaining a strong average spend. The behavior is balanced between flexibility and value optimization.

- Age Group 65 shows moderate booking volume but high dispersion, with ‘Fully Flexible’ dominant in usage but revenue spread across multiple rates. Guests appear selective yet high-yield, booking fewer stays but often at higher value. This segment shows varied preferences with a tilt toward comfort and planning. That being said, the sample size for this age group is small, therefore these conclusions should be taken as a first approximation.

- Age Group 100 stands out for its highly distributed revenue across fewer bookings, with no single rate type dominating. The group mixes advance planning (Early 21/60 days) with occasional high-value bookings in ‘Suite Offer’ and ‘Fully Flexible’. The amount of data availiable, however, makes these results unreliable at best.