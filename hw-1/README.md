# INFT-3507 Homework 1
## Service Monitoring and Availability Analysis
## 1. Implementation
For this assignment, I implemented an automated monitoring solution using a Bash script. The objective was to simulate real-world service monitoring by invoking the provided web endpoint approximately once per second over a fixed time interval of two minutes.

The script performs the following operations:

- Sends one HTTP request to the specified endpoint.

- Captures the HTTP response code returned by the server.

- Records the current timestamp in the required format: `YYYY-MM-DD HH:MM:SS`.

- Stores both the timestamp and the HTTP status code in a structured CSV file named `responses.csv`.

- Repeats this process 120 times, ensuring one-second intervals between requests.

This automation approach ensures that data collection is consistent, reproducible, and free from manual intervention errors. In real-world distributed systems, automated monitoring tools operate similarly to continuously track service health, performance, and reliability metrics.

The resulting CSV file contains 120 structured data entries (plus a header row), which form the basis for further statistical analysis.


## 2. Data Collection and Verification
After running the script, the generated CSV file was verified to ensure data accuracy and completeness. The verification confirmed that exactly 120 requests were recorded. Each entry contains a correctly formatted timestamp, and every request includes a valid HTTP response code returned by the server.
The dataset represents a two-minute monitoring window and provides a sufficient sample size to evaluate short-term service behavior and stability.

## 3. Statistical Analysis
1. Data Import
    To analyze the collected data, I imported the responses.csv file into Microsoft Excel and created a Pivot Table for structured evaluation of the HTTP response codes.
2. Pivot Table Configuration
    The Pivot Table was configured as follows:
    Rows section: HTTP Status Code
    Values section: Count of HTTP Status Code

This configuration allowed me to calculate the frequency, meaning the number of occurrences, of each response type.
3. Response Categories
    The dataset included multiple response categories:
    HTTP 200, which represents successful responses
    HTTP 400-series responses indicating client-side errors
    HTTP 500-series responses indicating server-side errors
4. Percentage Distribution
    To better understand the relative distribution of responses, I also calculated the percentage distribution using Excel’s Show Values As Percentage of Grand Total feature.

This step provided insight into the proportion of successful versus failed requests and allowed for a clearer interpretation of overall service performance.

## 4.Data Visualization
To visually present the results, I created two labeled bar charts:

###   4.1 Frequency Distribution Chart
- **X-axis:** HTTP Status Codes

- **Y-axis:** Number of Responses

This chart illustrates how often each type of response occurred during the observation period.

###   4.2 Percentage Distribution Chart
- **X-axis:** HTTP Status Codes

- **Y-axis:** Percentage of Total Requests

This visualization highlights the relative share of successful and failed requests, making it easier to evaluate overall service reliability.

Visual representations are critical in reliability analysis because patterns and anomalies become easier to detect compared to raw numerical tables.

## 5.Availability Calculation
o evaluate service reliability quantitatively, I calculated system availability using the standard formula discussed in class:

Availability = Successful Responses / Total Requests

For this analysis:

- Successful responses (HTTP 200): 51

- Total requests: 120

Availability = 51 / 120
Availability = 0.425

Converted to percentage form:

Availability = 42.5%

This means that during the two-minute observation period, the service successfully processed only 42.5% of incoming requests.

From a distributed systems perspective, this is considered a very low availability level. Production-grade systems typically target availability levels of 99% or higher. Therefore, the measured availability suggests that the endpoint is unstable and frequently returns client-side or server-side errors.

## 6.Interpretation and Discussion
This experiment demonstrates several important distributed systems concepts:

- Continuous monitoring is essential for evaluating system reliability.

- Availability is a key metric that directly affects user experience.

- Even short monitoring windows can reveal instability patterns.

- Automated data collection is fundamental in real-world system observability.

Although this was a controlled academic exercise, the methodology reflects real-world monitoring practices used in production systems.

## 7.Conclusion
In this assignment, I:

- Implemented an automated Bash-based monitoring script.

- Collected 120 structured HTTP response samples.

- Performed statistical analysis using Pivot Tables.

- Created two labeled visualizations.

- Computed availability using the required mathematical model.

- Interpreted the reliability of the observed system.

This project highlights the importance of automation, statistical analysis, and quantitative reliability evaluation in distributed systems.
## 8. Video Presentation

The complete video explanation of this homework can be accessed at:

YouTube link: [https://youtu.be/hZr-CYuk6IU](https://youtu.be/hZr-CYuk6IU)





