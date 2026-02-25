\Availability Calculation
To evaluate the reliability of the service, I calculated its availability using the standard formula:
Availability = Number of Successful Responses / Total Number of Requests
In this dataset, there were 51 successful responses (HTTP 200) out of a total of 120 requests made during the two-minute observation period.
So the availability is calculated as:
A
v
a
i
l
a
b
i
l
i
t
y
=
51
/
120
=
0.425
Availability=51/120=0.425
This means the service had an availability of 42.5% during the test period. In other words, the server successfully responded to less than half of the requests, indicating that the service was not highly reliable at the time of measurement.










nano hw-1/README.md# INF-3507 Homework 1

## Implementation
I wrote a Bash script that sends one request per second to the given endpoint for 2 minutes (120 requests total).  
The script stores the timestamp and HTTP response code in a CSV file.

## Analysis
I analyzed the response codes in Excel using a Pivot Table to calculate frequency and percentage distribution.  
I created two charts to visualize the results.

## Availability
Availability = Successful responses / Total requests

Only 2xx responses were considered successful.

## Video
YouTube link: (to be added)

# INF-3507 Homework 1

## Implementation
The script invokes the unreliable banking endpoint once per second for 2 minutes and captures HTTP response codes in CSV format.

## Availability
Availability = Successful responses / Total requests

(The final calculated value is shown in the video presentation.)

## Video
YouTube link: To be added after recording.



