
# Table of Contents

- [Introduction](#introduction)
  - [Definitions and Assumptions](#definitions-and-assumptions)
- [Booking Rate Popularity by Segment](#booking-rate-popularity-by-segment)
  - [Gender Based Analysis](#gender-based-analysis)
    - [Gender 0](#gender-0)
    - [Gender 1](#gender-1)
    - [Gender 2](#gender-2)
    - [Summary of Booking Trends by Gender](#summary-of-booking-trends-by-gender)
  - [Age Group Based Analysis](#age-group-based-analysis)
    - [Age Group 0](#age-group-0)
    - [Age Group 25](#age-group-25)
    - [Age Group 35](#age-group-35)
    - [Age Group 45](#age-group-45)
    - [Age Group 55](#age-group-55)
    - [Age Group 65](#age-group-65)
    - [Age Group 100](#age-group-100)
    - [Summary of Booking Trends by Age Group](#summary-of-booking-trends-by-age-group)
  - [Nationality Based Analysis](#nationality-based-analysis)
- [Online Check-In Analysis](#online-check-in-analysis)
  - [By Gender](#by-gender)
  - [Age Group](#age-group)
  - [Nationality](#nationality)
- [Profitability Analysis by Customer Segment](#profitability-analysis-by-customer-segment)

## Introduction

In this report we will analyze different customer segments (age group, gender, and nationality) to identify reservation trends that might uncover behavioural patterns which will help guide the desicion making process. In particular, we are interested in:

1. What are the popular choices of booking rates for different segments of customers?

2. Who are the typical guests who do online check-in? Is it somehow different when you compare reservations across different weekdays?

3. Which guest segments are the most and least profitable when measured by average night revenue per single occupied space?

Our goal is not only to answer these questions quantitatively, but also *understand* the why behind what the numbers tell us.

We will study each customer segment independently, given that the volume of data is not enough to study trends taking into account various categories at the same time. Before we begin, it is important to run through the definitions and assumptions set for the purpose of this analysis.

### Definitions and Assumptions

- To answer the first question, we must clearly identify what is meant by *popularity* and how can we best measure it. Since we only have a single data point per segment for each reservation, for the purposes of this report, it be measured by the number of reservations made by any given segment. More specifically, we will look at the relative percentage of reservations made by booking rate for each group in each segment. Alternatively, if we had acces to demographical information of each guest in the reservation, measuring popularity as 'Number of Reservations' times 'Number of Guests' would yield a larger sample size, which would increase the confidence in the results.

    Additionally, in this case, we will include all reservations in the analysis, even cancelled reservations. Given that we assume the interest to stay was present, but the reservation got cancelled due to an unforeseen event. That being said however, interest was established. Which could be argued that it counts towards contributing to popularity of a booking rate. Furthermore, it stands to reason that reservations under the Fully Flexible rate are highly impacted by cancellations. If we did not include cancellations, correctly gauging interest in preferences like flexibility would not be possible due to survivorship bias.

- When analyzing groups by nationality, we will only consider those which have more than 50 reservations in total. This is so we can draw conclusions that at least have *some* statistical significance.

- There are 100 instances with of duplicate reservations, with one of them having as many as 22 ocurrances. For this analysis, we will assume these cases are not duplicates of the same reservation that should be cleaned up from the dataset, but rather valid reservations made during the same bulk purchase.

- In this dataset, some values for total space capacity are equal to 0. Whenever this happens, we will assume the total capacity of the space to be equal to the number of guests staying.

- Regarding cancellation reason, we will assume that those reservations which have cancellation reason equal to null were not cancelled, and those with a value different than null (including 0) were cancelled.

## Booking Rate Popularity by Segment


### Gender Based Analysis

| Gender | Rate Name               | Number of Reservations |
|--------|--------------------------|-------------------------|
| 1      | Fully Flexible           | 753                     |
| 0      | Early - 60 days          | 419                     |
| 1      | Early - 21 days          | 165                     |
| 1      | Non Refundable BAR BB    | 123                     |
| 1      | Min 3 nights             | 47                      |
| 1      | Min 4 nights             | 41                      |
| 0      | Direct Booking           | 18                      |
| 2      | Suite Offer              | 12                      |
| 1      | Min 5 nights             | 4                       |

From the table above we can see which gender booked the most reservations for each available booking rate. However, this only doesn't give us much insights into the behavioural patterns of the genders themselves, given that the booking volumes might differ substatially. To gain a better understanding of booking rate preferences by gender, let's look at each one individually and how the distribution of choice looks.

#### **Gender 0:**
| Gender | Booking Rate             | Number of Reservations | Relative % of Reservations |
|--------|--------------------------|-------------------------|-----------------------------|
| 0      | Early - 60 days          | 419                     | 49.53%                      |
| 0      | Fully Flexible           | 229                     | 27.07%                      |
| 0      | Early - 21 days          | 105                     | 12.41%                      |
| 0      | Non Refundable BAR BB    | 28                      | 3.31%                       |
| 0      | Min 4 nights             | 19                      | 2.25%                       |
| 0      | Direct Booking           | 18                      | 2.13%                       |
| 0      | Min 3 nights             | 15                      | 1.77%                       |
| 0      | Suite Offer              | 10                      | 1.18%                       |
| 0      | Min 5 nights             | 3                       | 0.35%                       |

- **Number of Reservations:** 846 (33.83%)

Top 3 booking rates:

- **Early - 60 days (49.53%)**
- **Fully Flexible  (27.07%)**
- **Early - 21 days (12.41%)**

Almost two out of every three reservations made by gender 0 are using 'Early' booking rates. This shows a tendency to plan ahead in order to get more affordable rates, indicating they are most likely price conscious (high price elasticity). Be that as it may, a significant portion of this group also enjoys flexibility and is willing to pay for it. Overall, dispersion is low, with most of the bookings focused on these three rates.

#### **Gender 1:**
| Gender | Booking Rate             | Number of Reservations | Relative % of Reservations |
|--------|--------------------------|-------------------------|-----------------------------|
| 1      | Fully Flexible           | 753                     | 58.15%                      |
| 1      | Early - 21 days          | 165                     | 12.74%                      |
| 1      | Early - 60 days          | 137                     | 10.58%                      |
| 1      | Non Refundable BAR BB    | 123                     | 9.50%                       |
| 1      | Min 3 nights             | 47                      | 3.63%                       |
| 1      | Min 4 nights             | 41                      | 3.17%                       |
| 1      | Direct Booking           | 16                      | 1.24%                       |
| 1      | Suite Offer              | 9                       | 0.69%                       |
| 1      | Min 5 nights             | 4                       | 0.31%                       |

- **Number of Reservations:** 1295 (51.78%)

Top 3 booking rates:

- **Fully Flexible  (58.15%)**
- **Early - 60 days (12.74%)**
- **Early - 21 days (10.58%)**

This group values flexibility the most, with about three out of five opting for full flexibility, meaning that they tend to prefer peace of mind higher in exchange for a higher rate. About one in four, however, does take advantage of lower rates by planning their reservation in advance. Additionally, almost one in ten enjoys non-refundable offers, indicating lower risk aversion than gender 0.

#### **Gender 2:**
| Gender | Booking Rate             | Number of Reservations | Relative % of Reservations |
|--------|--------------------------|-------------------------|-----------------------------|
| 2      | Fully Flexible           | 169                     | 46.94%                      |
| 2      | Non Refundable BAR BB    | 66                      | 18.33%                      |
| 2      | Early - 21 days          | 45                      | 12.50%                      |
| 2      | Min 3 nights             | 23                      | 6.39%                       |
| 2      | Early - 60 days          | 20                      | 5.56%                       |
| 2      | Min 4 nights             | 14                      | 3.89%                       |
| 2      | Suite Offer              | 12                      | 3.33%                       |
| 2      | Direct Booking           | 9                       | 2.50%                       |
| 2      | Min 5 nights             | 2                       | 0.56%                       |

- **Number of Reservations:** 360 (14.39%)

Top 3 booking rates:

- **Fully Flexible  (46.94%)**
- **Non Refundable BAR BB (18.33%)**
- **Early - 21 days (12.50%)**

Gender 2 mainly prefers flexibility, with close to one in two choosing 'Fully Flexible' booking rate. They have the highest usage of non-refundable rates, with almost one in five choosing to take a risk in exchange for a better rate, indicating the lowest risk aversion of any gender. Additionally, a significant portion (18.06%) chooses 'Early' rates as a way to enjoy cheaper prices. In conjunction, 36.39% of guests in this group opt for rates that would lower the price of the reservation. Finally, we also notice that this gender has the highest participation of the 'Suite Offer' rate out of any other, with 3.33%.

#### **Summary of Booking Trends by Gender**

When comparing booking preferences across gender categories, clear differences emerge in rate selection, risk tolerance, and pricing sensitivity.

- **Fully Flexible rates** are the most popular choice overall, but their adoption varies significantly across genders. **Gender 1 leads with 58.15%** of reservations made under this option, indicating a strong preference for peace of mind and adaptability. **Gender 2 follows with 46.94%**, and **Gender 0 has the lowest preference at 27.07%**, suggesting that flexibility is a lower priority for them, possibly due to cost considerations.

- **Early booking rates** are most popular among **Gender 0**, where **over 61.94%** of reservations are made using either the "Early - 60 days" or "Early - 21 days" options. This highlights a strong tendency toward early planning and **high price sensitivity**. Gender 1 also makes some use of early rates (23.32% combined), while Gender 2 shows the least reliance on them (18.06%), favoring other strategies to manage price.

- **Non-Refundable rates** show an inverse trend compared to flexibility. **Gender 2 leads with 18.33%** of reservations under this option, showing the **lowest risk aversion** and highest willingness to exchange flexibility for discounts. Gender 1 follows at 9.5%, and Gender 0 has the lowest proportion, further confirming their preference for planned, lower-risk bookings.

- **Rate dispersion** is lowest in Gender 0, where bookings are heavily concentrated in early rates. Gender 1, despite favoring flexibility, shows moderate dispersion, with some usage of non-refundable and early options. Gender 2, however, exhibits **the most diversified rate usage**, with higher-than-average adoption of non-refundable, suite offers, and minimum nights options, pointing to **a more dynamic or opportunistic booking behavior**.

In summary:
- **Gender 0** behaves like strategic planners — price-conscious, early-booking oriented, and relatively risk-averse.
- **Gender 1** prioritizes **flexibility**, willing to pay a premium for peace of mind, but still considers early savings.
- **Gender 2** exhibits the **most adventurous and varied** booking profile, combining flexibility with opportunistic rate exploitation, including **the highest share of non-refundable and suite bookings**.

### Age Group Based Analysis

| Age Group | Rate Name              | Number of Reservations |
|-----------|------------------------|-------------------------|
| 0         | Fully Flexible         | 662                     |
| 0         | Early - 60 days        | 539                     |
| 0         | Early - 21 days        | 194                     |
| 25        | Non Refundable BAR BB  | 57                      |
| 0         | Min 4 nights           | 35                      |
| 0         | Min 3 nights           | 23                      |
| 0         | Direct Booking         | 19                      |
| 0         | Suite Offer            | 11                      |
| 0         | Min 5 nights           | 3                       |

As in the case for gender, here we can also see the top age groups per booking rate. It is not surprising age group 0 is leading in almsot all booking rates if this group acts like a 'null' or 'other' for this segment, catching all reservations with no age group. To gain more insights into the trends of each group, let's break down the analysis:

#### **Age Group 0:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 0         | Fully Flexible           | 662                     | 43.55%                      |
| 0         | Early - 60 days          | 539                     | 35.46%                      |
| 0         | Early - 21 days          | 194                     | 12.76%                      |
| 0         | Min 4 nights             | 35                      | 2.30%                       |
| 0         | Non Refundable BAR BB    | 34                      | 2.24%                       |
| 0         | Min 3 nights             | 23                      | 1.51%                       |
| 0         | Direct Booking           | 19                      | 1.25%                       |
| 0         | Suite Offer              | 11                      | 0.72%                       |
| 0         | Min 5 nights             | 3                       | 0.20%                       |

- **Number of Reservations:** 1520 (60.78%)

Top 3 booking rates:

- **Fully Flexible (43.55%)**
- **Early - 60 days  (35.46%)**
- **Early - 21 days (12.76%)**

Age group 0 booking rate preferences have low dispersion. 91.77% of all reservations are made using the top three rates listed above. Even though 'Fully Flexible' rate accounts for the mayority of the mayority of reservations, 'Early' rates, when considered in conjunction compose a 48.22% of bookings. This indicates that this group tends to enjoy lower rates by early planning. When they don't, they opt for peace of mind despite the higher cost.

#### **Age Group 25:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 25        | Fully Flexible           | 103                     | 44.02%                      |
| 25        | Non Refundable BAR BB    | 57                      | 24.36%                      |
| 25        | Early - 21 days          | 29                      | 12.39%                      |
| 25        | Min 3 nights             | 16                      | 6.84%                       |
| 25        | Min 4 nights             | 12                      | 5.13%                       |
| 25        | Early - 60 days          | 7                       | 2.99%                       |
| 25        | Direct Booking           | 4                       | 1.71%                       |
| 25        | Suite Offer              | 4                       | 1.71%                       |
| 25        | Min 5 nights             | 2                       | 0.85%                       |


- **Number of Reservations:** 234 (9.36%)

Top 3 booking rates:

- **Fully Flexible (44.02%)**
- **Non Refundable BAR BB (24.36%)**
- **Early - 21 days (12.39%)**

This group values flexibility the most, with almost one in five opting for flexibility despite the higher average reservation cost. Additionally, one in four opts for a non-refundable rate, indicating a low risk aversion. About 15% takes advantage of 'Early' booking rates to enjoy lower prices. General booking behaviour is similar to age group 0, but with slightly higher dispersion, with more than 10% of bookings being made using 'minimum nights' rates.

#### **Age Group 35:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 35        | Fully Flexible           | 142                     | 50.90%                      |
| 35        | Non Refundable BAR BB    | 57                      | 20.43%                      |
| 35        | Early - 21 days          | 33                      | 11.83%                      |
| 35        | Min 3 nights             | 15                      | 5.38%                       |
| 35        | Early - 60 days          | 12                      | 4.30%                       |
| 35        | Min 4 nights             | 9                       | 3.23%                       |
| 35        | Direct Booking           | 6                       | 2.15%                       |
| 35        | Suite Offer              | 4                       | 1.43%                       |
| 35        | Min 5 nights             | 1                       | 0.36%                       |

- **Number of Reservations:** 279 (11.16%)

Top 3 booking rates:

- **Fully Flexible (50.90%)**
- **Non Refundable BAR BB (20.43%)**
- **Early - 21 days (11.83%)**

Slightly more than half of all reservations in this group are made with a fully flexible rate, showing a strong preference for flexibility. However, one in five guests still opts for non-refundable options, indicating price sensitivity. Combined, early rates are used in nearly 17% of bookings, showing some planning ahead.

#### **Age Group 45:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 45        | Fully Flexible           | 127                     | 52.70%                      |
| 45        | Non Refundable BAR BB    | 41                      | 17.01%                      |
| 45        | Early - 21 days          | 27                      | 11.20%                      |
| 45        | Min 3 nights             | 14                      | 5.81%                       |
| 45        | Min 4 nights             | 8                       | 3.32%                       |
| 45        | Early - 60 days          | 8                       | 3.32%                       |
| 45        | Suite Offer              | 7                       | 2.90%                       |
| 45        | Direct Booking           | 7                       | 2.90%                       |
| 45        | Min 5 nights             | 2                       | 0.83%                       |


- **Number of Reservations:** 241 (9.64%)

Top 3 booking rates:

- **Fully Flexible (52.70%)**
- **Non Refundable BAR BB (17.01%)**
- **Early - 21 days (11.20%)**

This group shows the highest preference for fully flexible rates among all age brackets, with over half choosing this option. The rest of the distribution is modestly spread between non-refundable and early rates, indicating a moderate mix of planning and cost-saving strategies, but an overall lean toward low-risk choices.

#### **Age Group 55:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 55        | Fully Flexible           | 78                      | 53.42%                      |
| 55        | Non Refundable BAR BB    | 19                      | 13.01%                      |
| 55        | Early - 21 days          | 18                      | 12.33%                      |
| 55        | Min 3 nights             | 11                      | 7.53%                       |
| 55        | Direct Booking           | 7                       | 4.79%                       |
| 55        | Min 4 nights             | 6                       | 4.11%                       |
| 55        | Suite Offer              | 4                       | 2.74%                       |
| 55        | Early - 60 days          | 3                       | 2.05%                       |


- **Number of Reservations:** 146 (5.74%)

Top 3 booking rates:

- **Fully Flexible (53.42%)**
- **Non Refundable BAR BB (13.01%)**
- **Early - 21 days (12.33%)**

A majority in this age group prefers fully flexible bookings. Early rates and non-refundable bookings are almost equally popular, suggesting this group occasionally seeks out lower prices through early commitments but still leans toward flexibility and reliability. The overall rate distribution is consistent with age group 45.

#### **Age Group 65:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 65        | Fully Flexible           | 36                      | 55.38%                      |
| 65        | Non Refundable BAR BB    | 9                       | 13.85%                      |
| 65        | Early - 21 days          | 8                       | 12.31%                      |
| 65        | Min 3 nights             | 4                       | 6.15%                       |
| 65        | Min 4 nights             | 4                       | 6.15%                       |
| 65        | Early - 60 days          | 3                       | 4.62%                       |
| 65        | Min 5 nights             | 1                       | 1.54%                       |


- **Number of Reservations:** 65 (2.69%)

Top 3 booking rates:

- **Fully Flexible (55.38%)**
- **Non Refundable BAR BB (13.85%)**
- **Early - 21 days (12.31%)**

With over 55% opting for fully flexible rates, this group shows the strongest tendency toward risk-averse booking behavior. Early and non-refundable bookings together form just over a quarter of total reservations. The preferences suggest a prioritization of convenience and adaptability over cost savings.

#### **Age Group 100:**

| Age Group | Booking Rate             | Number of Reservations | Relative % of Reservations |
|-----------|--------------------------|-------------------------|-----------------------------|
| 100       | Early - 21 days          | 6                       | 37.50%                      |
| 100       | Early - 60 days          | 4                       | 25.00%                      |
| 100       | Fully Flexible           | 3                       | 18.75%                      |
| 100       | Min 3 nights             | 2                       | 12.50%                      |
| 100       | Suite Offer              | 1                       | 6.25%                       |


**Number of Reservations:** 16 (0.63%)

Top 3 booking rates:

- **Early - 21 days (37.50%)**
- **Early - 60 days (25.00%)**
- **Fully Flexible (18.75%)**

This group's booking behavior contrasts sharply with others. Over 60% of reservations fall under early rates, highlighting a highly proactive and cost-saving approach. Flexible rates rank third, suggesting that peace of mind is still a factor, though less prioritized.This age group appears to be the most forward-planning of all. Be that as it may, due to the low sample size, these results should not be taken as a certaininty as they are not statistically significant.

#### Summary of Booking Trends by Age Group

Analyzing booking behaviors across age groups reveals clear patterns in rate preferences that offer insight into how planning habits, risk tolerance, and flexibility needs vary with age.

- **Fully Flexible rates** are the dominant choice across all age groups, with their popularity **increasing steadily with age**. While age group 0 (younger travelers) already show a strong preference (43.55%), this grows consistently through age groups 25 to 65, peaking at **55.38% for the 65+ group**. This suggests that **older travelers prioritize flexibility and peace of mind**, likely valuing the ability to change or cancel plans more than younger travelers.

- **Non-Refundable rates** tell a different story. They **peak among younger adults**, particularly in age groups **25 (24.36%)** and **35 (20.43%)**, and then gradually decline as age increases — dropping to just **13.01% at age 55** and **13.85% at age 65**. This reflects a **higher risk tolerance and cost-consciousness** among younger travelers, who may be more willing to trade flexibility for savings.

- **Early booking rates** (both “Early - 21 days” and “Early - 60 days”) have their **strongest presence in the youngest group (age 0)**, accounting for a combined **48.22% of all bookings**. This demonstrates proactive planning, potentially by families or budget-conscious younger adults. In contrast, middle-aged groups tend to use early rates less, focusing more on flexibility or non-refundable deals.

- **Booking dispersion** is lowest in age group 0, where over **91% of bookings fall under the top three rate types**, and **diversifies slightly with age**, with more varied use of niche rate types like “Min nights” or “Suite Offers” in older groups. However, even with this added variation, the top three rates still dominate across all groups.

### Nationality Based Analysis

| Nationality | Booking Rate             | Number of Reservations | Relative % of Reservations by Nationality |
|-------------|---------------------------|-------------------------|--------------------------------------------|
| CN          | Fully Flexible            | 32                      | 54.24                                      |
| CN          | Early - 21 days           | 18                      | 30.51                                      |
| CN          | Non Refundable BAR BB     | 5                       | 8.47                                       |
| CZ          | Fully Flexible            | 51                      | 76.12                                      |
| CZ          | Non Refundable BAR BB     | 7                       | 10.45                                      |
| CZ          | Early - 21 days           | 5                       | 7.46                                       |
| DE          | Fully Flexible            | 110                     | 71.43                                      |
| DE          | Non Refundable BAR BB     | 18                      | 11.69                                      |
| DE          | Early - 60 days           | 11                      | 7.14                                       |
| GB          | Fully Flexible            | 122                     | 65.24                                      |
| GB          | Early - 60 days           | 31                      | 16.58                                      |
| GB          | Early - 21 days           | 12                      | 6.42                                       |
| RU          | Fully Flexible            | 22                      | 43.14                                      |
| RU          | Non Refundable BAR BB     | 15                      | 29.41                                      |
| RU          | Min 3 nights              | 6                       | 11.76                                      |
| SK          | Fully Flexible            | 46                      | 63.89                                      |
| SK          | Non Refundable BAR BB     | 16                      | 22.22                                      |
| SK          | Early - 60 days           | 5                       | 6.94                                       |
| US          | Fully Flexible            | 109                     | 44.86                                      |
| US          | Non Refundable BAR BB     | 39                      | 16.05                                      |
| US          | Early - 21 days           | 35                      | 14.40                                      |


- Fully Flexible is the most preferred rate overall, ranking first for every nationality listed. Its adoption is especially dominant in Czech Republic (CZ - 76.12%), Germany (DE - 71.43%), and Great Britain (GB - 65.24%), reflecting a strong preference for flexibility and peace of mind. This trend suggests that European guests generally prioritize adaptable plans over cost savings.

- Early Booking Rates (either "Early - 21 days" or "Early - 60 days") show meaningful usage across China (CN), Germany (DE), Great Britain (GB), Slovakia (SK), and the United States (US). Notably, Chinese guests allocate over 30% of their bookings to "Early - 21 days", indicating high planning behavior and price consciousness.

- Non-Refundable Rates are most popular among Russia (RU - 29.41%), Slovakia (SK - 22.22%), and the United States (US - 16.05%), indicating a lower risk aversion and more willingness to trade flexibility for better pricing.

- The US and RU show the most balanced distribution among the top 3 booking types, reflecting diverse preferences across their traveler base. This might suggest a wider range of traveler profiles and motivations compared to more homogenous markets like CZ or DE.

- Russia (RU) stands out with the lowest Fully Flexible share (43.14%) and the highest combined share of non-refundable and niche rates, such as "Min 3 nights", indicating a more aggressive search for value deals.

## Online Check-In Analyis

### By Gender

| Gender | Total Reservations | Online Check-ins | % Online Check-in |
|--------|--------------------|------------------|--------------------|
| 1      | 1295               | 119              | 9.19%              |
| 2      | 360                | 29               | 8.06%              |
| 0      | 846                | 0                | 0.00%              |

Gender 1 has the highest use of online check-in, with almost 1 in 10 leveraging it, quickly followed by gender 2. Even though gender 0 makes 33.83% of total reservations, they do not participate at all in online check-ins. This case seems like an outlier that would require further investigation.

Now let's take a look at a breakdown of online check in behaviour by reservation creation week day:

| Weekday   | Gender | Total Reservations | Online Check-ins | % Online Check-in |
|-----------|--------|--------------------|------------------|--------------------|
| Saturday  | 1      | 122                | 14               | 11.48%             |
| Sunday    | 1      | 115                | 12               | 10.43%             |
| Tuesday   | 1      | 209                | 21               | 10.05%             |
| Friday    | 1      | 163                | 15               | 9.20%              |
| Wednesday | 1      | 219                | 20               | 9.13%              |
| Monday    | 1      | 239                | 19               | 7.95%              |
| Thursday  | 1      | 228                | 18               | 7.89%              |

In the case of gender 1, the highest online check-in participation is seen on reservations created on Saturdays and Sundays, but overall the distribution is quite smooth across the week.

| Weekday   | Gender | Total Reservations | Online Check-ins | % Online Check-in |
|-----------|--------|--------------------|------------------|--------------------|
| Saturday  | 2      | 17                 | 4                | 23.53%             |
| Monday    | 2      | 67                 | 7                | 10.45%             |
| Thursday  | 2      | 60                 | 6                | 10.00%             |
| Wednesday | 2      | 43                 | 4                | 9.30%              |
| Tuesday   | 2      | 79                 | 6                | 7.59%              |
| Friday    | 2      | 64                 | 2                | 3.13%              |
| Sunday    | 2      | 30                 | 0                | 0.00%              |

For gender 2 we see a stronger spike on Saturdays with respect to other days of the week, where 23.53% of reservations created this day see online check-in, 12.05% higher than gender 1. There is also a significant difference in participation rates for Friday and Sunday, where in this group we see close to no use of online check-in.

### Age Group

Overall, the guests who typically do online check-ins are primarily from the following age groups:

- 55 (18.49%)
- 35 (16.85%)
- 45 (14.52%)
- 25 (13.68%)

If we look at a breakdown of the highest engagement by week day:

| **Weekday**   | **Highest Online Check-in Age Group** | **Check-in %** |
|---------------|----------------------------------------|----------------|
| **Monday**    | 35                          | 21.57%         |
| **Tuesday**   | 55                          | 23.81%         |
| **Wednesday** | 55                         | 30.00%         |
| **Thursday**  | 55                         | 18.75%         |
| **Friday**    | 45                         | 17.14%         |
| **Saturday**  | 55                         | 30.00%         |
| **Sunday**    | 55                         | 28.57%         |


Weekend (Saturday & Sunday):

- Older adults (55) are consistently among the highest adopters.

- Noticeably higher online check-in rates overall (25%–30%).

Weekdays (Monday–Friday):

- Highest adoption among middle-aged adults (35–55 years old), but generally lower than weekends, except Wednesday.

- Wednesday shows an unusual spike in activity for older age groups.

Age-Related Behavior:
- Younger adults (25 and 35) show moderate online check-in behavior throughout the week, with peaks notably on weekends (especially Saturday).

- Older adults (55) consistently lead in adopting online check-in, particularly over the weekend and Wednesday.

- These four age groups account for the majority of online check-ins. Guests aged 65 and above show significantly lower engagement with online check-in. Age groups marked as 0 and 100 are not engaging in online check-in at all.

Online Check-In participation in Age Group 25 reaches a maximum on Saturdays, with 1 out of 4 reservations created that day having online check-in.

### Nationality


| Nationality | Total Reservations | Online Check-ins | % Online Check-in |
|-------------|--------------------|------------------|--------------------|
| RU          | 51                 | 7                | 13.73%             |
| GB          | 187                | 20               | 10.70%             |
| US          | 243                | 25               | 10.29%             |
| CZ          | 67                 | 5                | 7.46%              |
| DE          | 154                | 8                | 5.19%              |
| SK          | 72                 | 2                | 2.78%              |
| CN          | 59                 | 0                | 0.00%              |

RU, GB and US lead the use of online check-in by nationality with about 1 in 10 guests making use of it. CZ, DE, and SK, show decreasing online check-in participation correspondingly, all of which belong to Central Europe. China on the other hand does not participate at all in online check-ins. This may be to country or system limitations, would require further investigation.

In this case, we have insufficient data to make a determination if countries behave in a different manner when it comes to the use of online check-in for different week days. The highest number of online check-in is on Mondays for GB and that is just 6 reservations.

## Profitability Analysis by Customer Segment

To calculate average night revenue per unit capacity, we have obtained the cost per night for each reservation and divided that about by the amount of rooms in the reservation. Then depending which group we are taking a look at, we take the corresponding average of the night cost per unit capacity. This is done for reservations that have been cancelled, as these are realized into revenue.

$$ \text{average night cost per unit capacity} = \frac{1}{n} \sum^n \left( \frac{\text{reservation cost}}{\text{number of nights}} \times \frac{1}{\text{room capacity}} \right) $$

Here is the breakdown per segment:

| Gender | Avg. Night Revenue per Unit Capacity |
|--------|--------------------------------------|
| 2      | 50.24                                |
| 1      | 45.96                                |
| 0      | 28.39                                |

| Age Group | Avg. Night Revenue per Unit Capacity |
|-----------|--------------------------------------|
| 35        | 54.26                                |
| 25        | 53.13                                |
| 55        | 52.84                                |
| 45        | 51.99                                |
| 65        | 40.40                                |
| 100       | 33.25                                |
| 0         | 32.11                                |

| Nationality | Avg. Night Revenue per Unit Capacity |
|------------------|--------------------------------------|
| DE               | 66.96                                |
| RU               | 65.60                                |
| CN               | 57.93                                |
| SK               | 48.32                                |
| GB               | 47.44                                |
| US               | 46.23                                |
