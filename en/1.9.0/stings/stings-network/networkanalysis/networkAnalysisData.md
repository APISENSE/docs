---
layout: post
title: NetworkAnalysisData
---

> Contains all information about the current networkAnalysis.

Attributes
----------
- duration (Long) : The test duration in milliseconds
- error (String) : Describe the task error if any occurred
- hostname (String) : [ping, traceroute, dns] The asked hostname
- ip (String) : The test destination IP
- jitter (Long) : [burst] Jitter as specified in RFC3393
- lossRatio (Float) : [burst] Ratio of lost packets over the total number of packet
- networkType (String) : Describe the type of network the user is on
- outOfOrderRatio (Float) : [burst] Ratio of late packets over the total number of packet
- packetCount (Integer) : [burst] Number of sent packet
- records (List) : [dns] List of DNS entries
- size (Float) : [download, upload] Size of the last download/upload
- speed (Float) : [download, upload] Median speed of last download/upload
- speeds (List) : [download, upload] List of speed sample for last download/upload
- task (String) : The name of the last executed task
- timestamp (Long) : represents the time of the operation.
- traceroute (List) : [traceroute] Last traceroute data
- ttl (Integer) : [ping, traceroute] The last found TTL
