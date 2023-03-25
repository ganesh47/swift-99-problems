# 99 Problems with Swift
[![Build and test 99 problems with swift ](https://github.com/ganesh47/swift-99-problems/actions/workflows/build-test.yml/badge.svg)](https://github.com/ganesh47/swift-99-problems/actions/workflows/build-test.yml)
[Code coverage](https://htmlpreview.github.io/?https://raw.githubusercontent.com/ganesh47/swift-99-problems/main/code-coverage-report.html)

Intent is to help learn swift, while interactively solving the 99 problem collection, as was designed to help practice logic-programming by "Werner Hett"
[Scheme solution for the 99-problems](http://community.schemewiki.org/?ninety-nine-scheme-problems)

Read more about this project [wiki](https://github.com/ganesh47/swift-99-problems/wiki)

####  Detailed test-coverage (updated by CI)
<pre>
Filename                      Regions    Missed Regions     Cover   Functions  Missed Functions  Executed       Lines      Missed Lines     Cover    Branches   Missed Branches     Cover
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
List/List.swift                     7                 1    85.71%           5                 1    80.00%          17                 3    82.35%           0                 0         -
List/ListP01.swift                  3                 0   100.00%           1                 0   100.00%           3                 0   100.00%           0                 0         -
List/ListP02.swift                  3                 0   100.00%           1                 0   100.00%           3                 0   100.00%           0                 0         -
List/ListP03.swift                  5                 1    80.00%           3                 1    66.67%           6                 1    83.33%           0                 0         -
List/ListP04.swift                  4                 0   100.00%           2                 0   100.00%           7                 0   100.00%           0                 0         -
List/ListP05.swift                 10                 1    90.00%           2                 0   100.00%          16                 2    87.50%           0                 0         -
List/ListP06.swift                  1                 0   100.00%           1                 0   100.00%           3                 0   100.00%           0                 0         -
List/ListP07.swift                 11                 0   100.00%           3                 0   100.00%          22                 0   100.00%           0                 0         -
List/ListP08.swift                 27                 0   100.00%           6                 0   100.00%          43                 0   100.00%           0                 0         -
List/ListP09.swift                 11                 0   100.00%           1                 0   100.00%          20                 0   100.00%           0                 0         -
List/ListP10.swift                 14                 0   100.00%           4                 0   100.00%          29                 0   100.00%           0                 0         -
List/ListP11.swift                 15                 0   100.00%           5                 0   100.00%          33                 0   100.00%           0                 0         -
List/ListP12.swift                 10                 0   100.00%           1                 0   100.00%          20                 0   100.00%           0                 0         -
List/ListP14.swift                  6                 0   100.00%           1                 0   100.00%          11                 0   100.00%           0                 0         -
List/ListP15.swift                 11                 1    90.91%           4                 1    75.00%          20                 1    95.00%           0                 0         -
List/ListP16.swift                 22                 3    86.36%           4                 1    75.00%          25                 3    88.00%           0                 0         -
List/ListP17.swift                 17                 2    88.24%           5                 2    60.00%          23                 2    91.30%           0                 0         -
List/ListP18.swift                 23                 4    82.61%          10                 4    60.00%          32                 4    87.50%           0                 0         -
List/ListP19.swift                  5                 2    60.00%           5                 2    60.00%           9                 2    77.78%           0                 0         -
List/ListP20.swift                 10                 2    80.00%           5                 2    60.00%          12                 2    83.33%           0                 0         -
List/ListP21.swift                 13                 3    76.92%           5                 2    60.00%          16                 4    75.00%           0                 0         -
List/ListP22.swift                  6                 2    66.67%           6                 2    66.67%          10                 2    80.00%           0                 0         -
List/ListP23.swift                  5                 1    80.00%           5                 1    80.00%           8                 1    87.50%           0                 0         -
List/ListP24.swift                  4                 1    75.00%           4                 1    75.00%           7                 1    85.71%           0                 0         -
List/ListP25.swift                 25                 1    96.00%          10                 1    90.00%          29                 1    96.55%           0                 0         -
List/ListP26.swift                 48                 3    93.75%          17                 3    82.35%          65                 3    95.38%           0                 0         -
List/ListP27.swift                 24                 2    91.67%          13                 2    84.62%          45                 2    95.56%           0                 0         -
List/ListP28.swift                  2                 0   100.00%           2                 0   100.00%           8                 0   100.00%           0                 0         -
Numbers/NumbersP29.swift            9                 0   100.00%           4                 0   100.00%          10                 0   100.00%           0                 0         -
Numbers/NumbersP30.swift            9                 0   100.00%           2                 0   100.00%           7                 0   100.00%           0                 0         -
Numbers/NumbersP31.swift            1                 0   100.00%           1                 0   100.00%           3                 0   100.00%           0                 0         -
Numbers/NumbersP32.swift            2                 0   100.00%           2                 0   100.00%           4                 0   100.00%           0                 0         -
Numbers/NumbersP33.swift           12                 0   100.00%           1                 0   100.00%          15                 0   100.00%           0                 0         -
Numbers/NumbersP34.swift           12                 0   100.00%           1                 0   100.00%          18                 0   100.00%           0                 0         -
Numbers/NumbersP35.swift            3                 0   100.00%           1                 0   100.00%           8                 0   100.00%           0                 0         -
Numbers/NumbersP36.swift            8                 1    87.50%           3                 1    66.67%          12                 1    91.67%           0                 0         -
Numbers/NumbersP40.swift           11                 1    90.91%           3                 0   100.00%          11                 1    90.91%           0                 0         -
Numbers/NumbersP41.swift           24                 1    95.83%           4                 0   100.00%          29                 1    96.55%           0                 0         -
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TOTAL                             433                33    92.38%         153                27    82.35%         659                37    94.39%           0                 0         -
</pre>

#### Compiler warnings (updated by CI)
<pre>
No warnings! :)
</pre>

