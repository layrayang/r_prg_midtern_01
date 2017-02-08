#homework2
> data()
> cars
speed dist
1      4    2
2      4   10
3      7    4
4      7   22
5      8   16
6      9   10
7     10   18
8     10   26
9     10   34
10    11   17
11    11   28
12    12   14
13    12   20
14    12   24
15    12   28
16    13   26
17    13   34
18    13   34
19    13   46
20    14   26
21    14   36
22    14   60
23    14   80
24    15   20
25    15   26
26    15   54
27    16   32
28    16   40
29    17   32
30    17   40
31    17   50
32    18   42
33    18   56
34    18   76
35    18   84
36    19   36
37    19   46
38    19   68
39    20   32
40    20   48
41    20   52
42    20   56
43    20   64
44    22   66
45    23   54
46    24   70
47    24   92
48    24   93
49    24  120
50    25   85
#繪製散佈圖
plot(cars)
plot(cars$speed,cars$dist, main = "Speed v.s Distance", xlab = "Speed", ylab = "Distance" )
#繪製線圖
plot(cars$speed,cars$dist, main = "Speed v.s Distance", xlab = "Speed", ylab = "Distance", type = "l" )
#繪製直方圖
par(mfrow = c(1,2))
hist(cars$speed, main = "Distribution of speed variable",xlab = "Speed")
hist(cars$dist, main = "Distribution of distance variable",xlab = "Distance")
#繪製盒鬚圖
boxplot(cars$speed, main = "Distribution of speed variable")
boxplot(cars$dist, main = "Distribution of dist variable")
#繪製長條圖
str(cars)
'data.frame':	50 obs. of  2 variables:
  $ speed: num  4 4 7 7 8 9 10 10 10 11 ...
$ dist : num  2 10 4 22 16 10 18 26 34 17 ...
table(factor(cars$speed))

4  7  8  9 10 11 12 13 14 15 16 17 18 19 20 22 23 24 25 
2  2  1  1  3  2  4  4  4  3  2  3  4  3  5  1  1  4  1 

barplot(table(factor(cars$speed)),main = "ko")
barplot(table(factor(cars$speed)),main = "ko", xlab = "Speed", cex.names = 0.5)
barplot(table(factor(cars$speed)),main = "ko", xlab = "Speed", cex.names = 0.8)