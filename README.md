## Extension of SMIRgen giving access to true reflection directions and corresponding timestamps

When analysing room impulse responses algorithmically it is often desirable to compare estimated directions of arrival (DOAs) of individual reflections to a ground truth (true DOAs from simulation). This fork extends SMIRgen to additionally output the true reflection directions and their corresponding timestamps.

`[ h, H, beta_hat, reflectionDirections, reflectionTimestamps ] = smir_generator(c, procFs, sphLocation, s, L, beta, sphType, sphRadius, mic, N_harm, nsample, K, order, varargin)`

additional output data:  
* reflectionDirections: _numReflections x 3 matrix containing the directions (in Cartesian coordinates) of direct sound and individual reflections_  
* reflectionTimestamps: _numReflections x 1 vector containing time stamps of individual reflections in s_

## Spherical Microphone array Impulse Response generator (SMIRgen)

This repository contains an algorithm to generate impulse responses between a source and a spherical microphone array in a reverberant enclosure.

A detailed description of the algorithm can be found in [1].

Additional information can be found [here](https://www.audiolabs-erlangen.de/fau/professor/habets/software/smir-generator).

1. D. P. Jarrett, E. A. P. Habets, M. R. P. Thomas and P. A. Naylor, "Rigid sphere room impulse response simulation: algorithm and applications," Journal of the Acoustical Society of America, Volume 132, Issue 3, pp. 1462-1472, 2012.
