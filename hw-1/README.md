# INFT-3507 Homework 1

## Implementation

For this assignment, I developed a Bash script that automatically sends one HTTP request per second to the provided endpoint for a total duration of two minutes (120 requests).

For each request, the script records:
- The timestamp in the required format (YYYY-MM-DD HH:MM:SS)
- The HTTP response code

All collected data is stored in a structured CSV file (`responses.csv`) for further analysis.

---

## Statistical Analysis

After collecting the data, I imported the CSV file into Excel and created a Pivot Table to analyze the HTTP response codes.

Using this analysis, I calculated:
- The frequency (number of occurrences) of each HTTP status code
- The percentage distribution of each HTTP status code

To clearly present the results, I created two bar charts:
1. Frequency distribution of HTTP response codes
2. Percentage distribution of HTTP response codes

These visualizations help demonstrate how often each type of response occurred during the observation period.

---

## Availability Calculation

To evaluate the reliability of the service, I calculated its availability using the standard formula:

Availability = Number of Successful Responses / Total Number of Requests

Only HTTP 2xx responses (specifically HTTP 200) were considered successful.

From the dataset:
- Successful responses (HTTP 200): 51  
- Total requests: 120  

Availability = 51 / 120 = 0.425

This means the service had an availability of **42.5%** during the two-minute test period. In other words, the server successfully responded to less than half of the requests, indicating that the service was not highly reliable at the time of measurement.

---

## Video Presentation

YouTube link: (to be added after recording)
