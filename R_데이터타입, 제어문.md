
# R의 기초

## 기본 자료형
   
   ### 자료구조
     - vector(벡터)
         : 단일값들의 모임, 동일한 자료형을 갖는 값들의 집합
     - vector 생성함수
         Ex. c(1, 2, 3), rep( ), seq() 
         
     * 의미 해석    
     - NA : 결측치
     - (- Inf, Inf) : 음과 양의 무한대
     - NaN : 수의 연산에서 불능의 경우 표현 0/0
 
     * 자료형 확인 함수
       : is.tnteger(x)  → TRUE or FALSE


#### vector, vector생성함수(c( ), seq( ), rep( ))


```R
# vector 
1 : 5
5 : 1
6 : -3
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
</ol>




<ol class=list-inline>
	<li>5</li>
	<li>4</li>
	<li>3</li>
	<li>2</li>
	<li>1</li>
</ol>




<ol class=list-inline>
	<li>6</li>
	<li>5</li>
	<li>4</li>
	<li>3</li>
	<li>2</li>
	<li>1</li>
	<li>0</li>
	<li>-1</li>
	<li>-2</li>
	<li>-3</li>
</ol>




```R
# vector 생성함수 1. c()
x <- c(1, 2, 3)
y <- c(4, 5, c(6, 7, 8))

x
y
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
</ol>




<ol class=list-inline>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
</ol>




```R
# seq()
# from: 초기값, to: 종료값, by: 증가분, length out: 생성함
seq(from=1, to=5, by=2)
seq(1, 5, by=2)
seq(0, 1, by=0.001)

# 최종 백터길이 (총 순서 값 갯수)
seq(0, 1, length.out=1000)
```


<ol class=list-inline>
	<li>1</li>
	<li>3</li>
	<li>5</li>
</ol>




<ol class=list-inline>
	<li>1</li>
	<li>3</li>
	<li>5</li>
</ol>



```R
# rep() : 반복 생성 함수
# times: 자료 x의 전체 반복 횟수, each: 자료 x의 각 요소들의 반복
rep(c(1,2,3), times=2)
rep(c(1,2,3), each=2)
rep(c(1,2,3), each=2, times=2)
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>1</li>
	<li>2</li>
	<li>3</li>
</ol>




<ol class=list-inline>
	<li>1</li>
	<li>1</li>
	<li>2</li>
	<li>2</li>
	<li>3</li>
	<li>3</li>
</ol>




<ol class=list-inline>
	<li>1</li>
	<li>1</li>
	<li>2</li>
	<li>2</li>
	<li>3</li>
	<li>3</li>
	<li>1</li>
	<li>1</li>
	<li>2</li>
	<li>2</li>
	<li>3</li>
	<li>3</li>
</ol>




```R
# vector(ex)
# length(x) : vetor의 원소의 갯수

x <- c(5, 4, 3, 2, 1)
length(x)
x[1]
x[c(1, 2, 3)]
x[-c(1, 2, 3)]
```


5



5



<ol class=list-inline>
	<li>5</li>
	<li>4</li>
	<li>3</li>
</ol>




<ol class=list-inline>
	<li>2</li>
	<li>1</li>
</ol>




```R
# vector sum
x <- c(1, 2, 3, 4)
y <- c(5, 6, 7, 8)
z <- c(1, 2)
w <- c(1, 2, 3)

2 + x
x + y
x + z
x + w
```


<ol class=list-inline>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
</ol>




<ol class=list-inline>
	<li>6</li>
	<li>8</li>
	<li>10</li>
	<li>12</li>
</ol>




<ol class=list-inline>
	<li>2</li>
	<li>4</li>
	<li>4</li>
	<li>6</li>
</ol>



    Warning message in x + w:
    "두 객체의 길이가 서로 배수관계에 있지 않습니다"


<ol class=list-inline>
	<li>2</li>
	<li>4</li>
	<li>6</li>
	<li>5</li>
</ol>



#### 자료형 확인


```R
# is, as
x <- c(1, 2, 3, 4)
is.vector(x)

f <- factor(x)
is.vector(f)

v <- as.vector(f)
f
is.vector(f) 


f # f는 factor
v # v는 vector


```


TRUE



FALSE



<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
</ol>




FALSE



<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
</ol>




<ol class=list-inline>
	<li>'1'</li>
	<li>'2'</li>
	<li>'3'</li>
	<li>'4'</li>
</ol>




```R
# all(), any(0)
x <- 1:5
x > 3
all(x>3)
any(x>3)
```


<ol class=list-inline>
	<li>FALSE</li>
	<li>FALSE</li>
	<li>FALSE</li>
	<li>TRUE</li>
	<li>TRUE</li>
</ol>




FALSE



TRUE



```R
# names(), name(변수명)

names(x)

height <- c(80, 90, 70, 170)
names(height) <- c("A", "B", "C")
height


tall <- c(171, 178, 168)
names(tall) <- c("A", "B", "C")
tall
```


    NULL



<dl class=dl-horizontal>
	<dt>A</dt>
		<dd>80</dd>
	<dt>B</dt>
		<dd>90</dd>
	<dt>C</dt>
		<dd>70</dd>
	<dt>4</dt>
		<dd>170</dd>
</dl>




<dl class=dl-horizontal>
	<dt>A</dt>
		<dd>171</dd>
	<dt>B</dt>
		<dd>178</dd>
	<dt>C</dt>
		<dd>168</dd>
</dl>




```R
# head(x, n), tail(x, n)

x <- 1:100
head(x)
head(x, n=10)

tail(x)
tail(x, n=4)
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
</ol>




<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
	<li>9</li>
	<li>10</li>
</ol>




<ol class=list-inline>
	<li>95</li>
	<li>96</li>
	<li>97</li>
	<li>98</li>
	<li>99</li>
	<li>100</li>
</ol>




<ol class=list-inline>
	<li>97</li>
	<li>98</li>
	<li>99</li>
	<li>100</li>
</ol>




```R
# sample(x, size, replace=FALSE, prob=NULL)  
# prob : a vector of probability weights 

sample(10)
sample(45, 6)

# replace=TRUE : 복원추출
sample(10, 3, replace=TRUE)

# 확률을 다르게 적용함
sample(10, 3, prob=(1:10)/55)

# 0~1까지 0.1 간격으로 증가하는 값을 출력
x <- seq(0, 1, by=0.1)
x

# 동일한 방식 
x[sample(length(x), 3)]
sample(x, 3)

```


<ol class=list-inline>
	<li>10</li>
	<li>4</li>
	<li>8</li>
	<li>3</li>
	<li>7</li>
	<li>6</li>
	<li>1</li>
	<li>5</li>
	<li>2</li>
	<li>9</li>
</ol>




<ol class=list-inline>
	<li>25</li>
	<li>37</li>
	<li>33</li>
	<li>40</li>
	<li>43</li>
	<li>38</li>
</ol>




<ol class=list-inline>
	<li>6</li>
	<li>4</li>
	<li>5</li>
</ol>




<ol class=list-inline>
	<li>10</li>
	<li>9</li>
	<li>5</li>
</ol>




<ol class=list-inline>
	<li>0</li>
	<li>0.1</li>
	<li>0.2</li>
	<li>0.3</li>
	<li>0.4</li>
	<li>0.5</li>
	<li>0.6</li>
	<li>0.7</li>
	<li>0.8</li>
	<li>0.9</li>
	<li>1</li>
</ol>




<ol class=list-inline>
	<li>0.3</li>
	<li>0.6</li>
	<li>0.8</li>
</ol>




<ol class=list-inline>
	<li>0.6</li>
	<li>0.2</li>
	<li>0</li>
</ol>




```R
x <- c(2, 4, -1, 3)
which(x > 2)

names(x) <- c("list", "2nd", "3rd", "4th")
which(x > 2)
```


<ol class=list-inline>
	<li>2</li>
	<li>4</li>
</ol>




<dl class=dl-horizontal>
	<dt>2nd</dt>
		<dd>2</dd>
	<dt>4th</dt>
		<dd>4</dd>
</dl>




```R
1차원 : 3개의 벡터
2차원 : 5개의 백터
3차원 : 10개의 백터

전체 원소의 개수 : 3*5*10 = 150개
```

#### 배열(array)
    : matrix가 2차원 행렬이라면 배열(array)은 n차원 행렬


```R
arr <- array(1:3, c(2,4))  # 2*4 = 8개의 원소가 나와야 함
arr

arr[1,]    #1행 출력
arr[, 3]   #3열 출력
```


<table>
<tbody>
	<tr><td>1</td><td>3</td><td>2</td><td>1</td></tr>
	<tr><td>2</td><td>1</td><td>3</td><td>2</td></tr>
</tbody>
</table>




<ol class=list-inline>
	<li>1</li>
	<li>3</li>
	<li>2</li>
	<li>1</li>
</ol>




<ol class=list-inline>
	<li>2</li>
	<li>3</li>
</ol>




```R
# array(data = NA, dim = length(data), dimnames = NULL)
# dimnames = NULL: either NULL or the names for the dimensions./ This must a list (or it will be ignored) 

dimnamearr = list(c("1st","2nd"), c("1st","2nd","3rd","4th"))
arr2 <- array(1:3, c(2,4),dimnames = dimnamearr)    # 행,열의 이름 정하기
arr2
arr2["1st",]
arr2[,"3rd"]
```


<table>
<thead><tr><th></th><th scope=col>1st</th><th scope=col>2nd</th><th scope=col>3rd</th><th scope=col>4th</th></tr></thead>
<tbody>
	<tr><th scope=row>1st</th><td>1</td><td>3</td><td>2</td><td>1</td></tr>
	<tr><th scope=row>2nd</th><td>2</td><td>1</td><td>3</td><td>2</td></tr>
</tbody>
</table>




<dl class=dl-horizontal>
	<dt>1st</dt>
		<dd>1</dd>
	<dt>2nd</dt>
		<dd>3</dd>
	<dt>3rd</dt>
		<dd>2</dd>
	<dt>4th</dt>
		<dd>1</dd>
</dl>




<dl class=dl-horizontal>
	<dt>1st</dt>
		<dd>2</dd>
	<dt>2nd</dt>
		<dd>3</dd>
</dl>




```R
# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
# byrow=FALSE: data를 행 단위로 배치할지 여부 (default: 열 단위 배치)
tmp <- 1:12
tmp

# nrow: 행의 갯수
matrix(tmp, nrow=3)
# byrow=TRUE: 1행부터 자료를 채워나감 
matrix(tmp, nrow=3, byrow=TRUE)
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
	<li>9</li>
	<li>10</li>
	<li>11</li>
	<li>12</li>
</ol>




<table>
<tbody>
	<tr><td>1 </td><td>4 </td><td>7 </td><td>10</td></tr>
	<tr><td>2 </td><td>5 </td><td>8 </td><td>11</td></tr>
	<tr><td>3 </td><td>6 </td><td>9 </td><td>12</td></tr>
</tbody>
</table>




<table>
<tbody>
	<tr><td>1 </td><td> 2</td><td> 3</td><td> 4</td></tr>
	<tr><td>5 </td><td> 6</td><td> 7</td><td> 8</td></tr>
	<tr><td>9 </td><td>10</td><td>11</td><td>12</td></tr>
</tbody>
</table>




```R
v1 <- c(1, 2, 3, 4)
v2 <- c(5, 6, 7, 8)
v3 <- c(9, 10, 11, 12)

# vector을 열 단위로 합침
cbind(v1, v2, v3)
# vector을 행 단위로 합침
rbind(v1, v2, v3)
```


<table>
<thead><tr><th scope=col>v1</th><th scope=col>v2</th><th scope=col>v3</th></tr></thead>
<tbody>
	<tr><td>1 </td><td>5 </td><td> 9</td></tr>
	<tr><td>2 </td><td>6 </td><td>10</td></tr>
	<tr><td>3 </td><td>7 </td><td>11</td></tr>
	<tr><td>4 </td><td>8 </td><td>12</td></tr>
</tbody>
</table>




<table>
<tbody>
	<tr><th scope=row>v1</th><td>1 </td><td> 2</td><td> 3</td><td> 4</td></tr>
	<tr><th scope=row>v2</th><td>5 </td><td> 6</td><td> 7</td><td> 8</td></tr>
	<tr><th scope=row>v3</th><td>9 </td><td>10</td><td>11</td><td>12</td></tr>
</tbody>
</table>



##### apply(X, MARGIN, FUN, ...) : 행별, 열별 특정 값을 구하고 싶을 때 


```R
# x: apply를 적용할 배열, MARGIN: 함수를 적용할 차원, FUN: 적용할 함수
m1 <- cbind(v1, v2, v3)
m1

# 행별로 평균을 출력
apply(m1, 1, mean)
# 열별로 평균을 출력
apply(m1, 2, mean)

```


<table>
<thead><tr><th scope=col>v1</th><th scope=col>v2</th><th scope=col>v3</th></tr></thead>
<tbody>
	<tr><td>1 </td><td>5 </td><td> 9</td></tr>
	<tr><td>2 </td><td>6 </td><td>10</td></tr>
	<tr><td>3 </td><td>7 </td><td>11</td></tr>
	<tr><td>4 </td><td>8 </td><td>12</td></tr>
</tbody>
</table>




<ol class=list-inline>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
</ol>




<dl class=dl-horizontal>
	<dt>v1</dt>
		<dd>2.5</dd>
	<dt>v2</dt>
		<dd>6.5</dd>
	<dt>v3</dt>
		<dd>10.5</dd>
</dl>



#### factor 
    : 데이터에 순서가 없는 명목형 변수(Nominal)를 만듦
    순서형(Ordinal) 변수로 만들기 위해 ordered()를 사용하거나 factor() 호출시 ordered=TRUE)


```R
# 요인(Factor)은 '범주형'자료를 저장함
# factor(x = character(), levels, labels = levels, exclude = NA, ordered = is.ordered(x), nmax = NA)
# exclude = NA : 사용하지 않을 값을 지정

x <- c(1, 2, 3, 4, 5)

# levels를 통해 자료중 1,2,3,4 네 개의 값만 요인으로 사용
factor(x, levels=c(1,2,3,4))
factor(x, levels=c(1,2,3,4), exclude=c(1,2))

#Levels: 3 < 4 라고도 찍힘
factor(x, levels=c(1,2,3,4), exclude=c(1,2), ordered=TRUE)

```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>&lt;NA&gt;</li>
</ol>




<ol class=list-inline>
	<li>&lt;NA&gt;</li>
	<li>&lt;NA&gt;</li>
	<li>3</li>
	<li>4</li>
	<li>&lt;NA&gt;</li>
</ol>




<ol class=list-inline>
	<li>&lt;NA&gt;</li>
	<li>&lt;NA&gt;</li>
	<li>3</li>
	<li>4</li>
	<li>&lt;NA&gt;</li>
</ol>




```R
v <- c(1, 2, 3, 4)
x <- factor(v)
```


```R
is.factor(x)
as.factor(x)
```


TRUE



<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
</ol>



#### tapply( )


```R
# tapply(X, INDEX, FUN = NULL, ..., default = NA, simplify = TRUE)
# simplify = TRUE: 결과가 Scalar로 출력 / FALSE: 리스트로 출력
score <- c(92, 90, 82, 88, 78, 64, 82, 90)
subject <- c("k", "k", "m", "m", "m", "m", "k", "k")
tapply(score, subject, mean)
```


<dl class=dl-horizontal>
	<dt>k</dt>
		<dd>88.5</dd>
	<dt>m</dt>
		<dd>78</dd>
</dl>



#### data.frame( ) : 행열 형태로 출력


```R
# 서로 다른 기본 자료형을 갖고 있는 data를 모음 
name <- c("철수", "영희", "길홍")
age <- c(21, 24, 25)
gender <- c("M", "F", "M")
character <- data.frame(name, age, gender)
character

character[ ,2]
character[1, ]
character[3, 1]
```


<table>
<thead><tr><th scope=col>name</th><th scope=col>age</th><th scope=col>gender</th></tr></thead>
<tbody>
	<tr><td>철수</td><td>21  </td><td>M   </td></tr>
	<tr><td>영희</td><td>24  </td><td>F   </td></tr>
	<tr><td>길홍</td><td>25  </td><td>M   </td></tr>
</tbody>
</table>




<ol class=list-inline>
	<li>21</li>
	<li>24</li>
	<li>25</li>
</ol>




<table>
<thead><tr><th scope=col>name</th><th scope=col>age</th><th scope=col>gender</th></tr></thead>
<tbody>
	<tr><td>철수</td><td>21  </td><td>M   </td></tr>
</tbody>
</table>




길홍


#### attach( ), detach( )  / with( )


```R
head(airquality)

# 값을 읽어오지 못함
Ozone

# 열의 이름을 변수명처럼 사용할 수 있음
attach(airquality)
# 결과값으로 41, 36, 12, 18, NA, 26을 출력
Ozone[1:5]

Ozone = c(1, 2, 3)
attach(airquality)
# 결과값으로 1, 2, 3 출력
Ozone
Month[1:5]

```


<table>
<thead><tr><th scope=col>Ozone</th><th scope=col>Solar.R</th><th scope=col>Wind</th><th scope=col>Temp</th><th scope=col>Month</th><th scope=col>Day</th></tr></thead>
<tbody>
	<tr><td>41  </td><td>190 </td><td> 7.4</td><td>67  </td><td>5   </td><td>1   </td></tr>
	<tr><td>36  </td><td>118 </td><td> 8.0</td><td>72  </td><td>5   </td><td>2   </td></tr>
	<tr><td>12  </td><td>149 </td><td>12.6</td><td>74  </td><td>5   </td><td>3   </td></tr>
	<tr><td>18  </td><td>313 </td><td>11.5</td><td>62  </td><td>5   </td><td>4   </td></tr>
	<tr><td>NA  </td><td> NA </td><td>14.3</td><td>56  </td><td>5   </td><td>5   </td></tr>
	<tr><td>28  </td><td> NA </td><td>14.9</td><td>66  </td><td>5   </td><td>6   </td></tr>
</tbody>
</table>



    The following object is masked _by_ .GlobalEnv:
    
        Ozone
    
    The following objects are masked from airquality (pos = 3):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 4):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 5):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 6):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 7):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 8):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 9):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 10):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 11):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 12):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 13):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following object is masked _by_ .GlobalEnv:
    
        Ozone
    
    The following objects are masked from airquality (pos = 3):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 4):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 5):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 6):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 7):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 8):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 9):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 10):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 11):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 12):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 13):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    The following objects are masked from airquality (pos = 14):
    
        Day, Month, Ozone, Solar.R, Temp, Wind
    
    


```R
# with(data, expr, ...)
head(cars)
# attach를 사용하지 않고, with를 사용해서
# 바로 열 이름을 변수명으로 사용가능
mean(cars$speed)
mean(cars$dist)

with(cars, mean(speed))
with(cars, mean(dist))
```


<table>
<thead><tr><th scope=col>speed</th><th scope=col>dist</th></tr></thead>
<tbody>
	<tr><td>4 </td><td> 2</td></tr>
	<tr><td>4 </td><td>10</td></tr>
	<tr><td>7 </td><td> 4</td></tr>
	<tr><td>7 </td><td>22</td></tr>
	<tr><td>8 </td><td>16</td></tr>
	<tr><td>9 </td><td>10</td></tr>
</tbody>
</table>




15.4



42.98



15.4



42.98


####  subset( ) : 조건에 맞는 부분집합을 추출
    ##### Default S3 method:
        subset(x, subset, ...)

    ##### S3 method for class 'matrix'
        subset(x, subset, select, drop = FALSE, ...)

    ##### S3 method for class 'data.frame'
        subset(x, subset, select, drop = FALSE, ...)


```R
#select : 보고 싶은 변수만 지정가능
airquality
subset(airquality, Temp > 80)
```


<table>
<thead><tr><th scope=col>Ozone</th><th scope=col>Solar.R</th><th scope=col>Wind</th><th scope=col>Temp</th><th scope=col>Month</th><th scope=col>Day</th></tr></thead>
<tbody>
	<tr><td> 41 </td><td>190 </td><td> 7.4</td><td>67  </td><td>5   </td><td> 1  </td></tr>
	<tr><td> 36 </td><td>118 </td><td> 8.0</td><td>72  </td><td>5   </td><td> 2  </td></tr>
	<tr><td> 12 </td><td>149 </td><td>12.6</td><td>74  </td><td>5   </td><td> 3  </td></tr>
	<tr><td> 18 </td><td>313 </td><td>11.5</td><td>62  </td><td>5   </td><td> 4  </td></tr>
	<tr><td> NA </td><td> NA </td><td>14.3</td><td>56  </td><td>5   </td><td> 5  </td></tr>
	<tr><td> 28 </td><td> NA </td><td>14.9</td><td>66  </td><td>5   </td><td> 6  </td></tr>
	<tr><td> 23 </td><td>299 </td><td> 8.6</td><td>65  </td><td>5   </td><td> 7  </td></tr>
	<tr><td> 19 </td><td> 99 </td><td>13.8</td><td>59  </td><td>5   </td><td> 8  </td></tr>
	<tr><td>  8 </td><td> 19 </td><td>20.1</td><td>61  </td><td>5   </td><td> 9  </td></tr>
	<tr><td> NA </td><td>194 </td><td> 8.6</td><td>69  </td><td>5   </td><td>10  </td></tr>
	<tr><td>  7 </td><td> NA </td><td> 6.9</td><td>74  </td><td>5   </td><td>11  </td></tr>
	<tr><td> 16 </td><td>256 </td><td> 9.7</td><td>69  </td><td>5   </td><td>12  </td></tr>
	<tr><td> 11 </td><td>290 </td><td> 9.2</td><td>66  </td><td>5   </td><td>13  </td></tr>
	<tr><td> 14 </td><td>274 </td><td>10.9</td><td>68  </td><td>5   </td><td>14  </td></tr>
	<tr><td> 18 </td><td> 65 </td><td>13.2</td><td>58  </td><td>5   </td><td>15  </td></tr>
	<tr><td> 14 </td><td>334 </td><td>11.5</td><td>64  </td><td>5   </td><td>16  </td></tr>
	<tr><td> 34 </td><td>307 </td><td>12.0</td><td>66  </td><td>5   </td><td>17  </td></tr>
	<tr><td>  6 </td><td> 78 </td><td>18.4</td><td>57  </td><td>5   </td><td>18  </td></tr>
	<tr><td> 30 </td><td>322 </td><td>11.5</td><td>68  </td><td>5   </td><td>19  </td></tr>
	<tr><td> 11 </td><td> 44 </td><td> 9.7</td><td>62  </td><td>5   </td><td>20  </td></tr>
	<tr><td>  1 </td><td>  8 </td><td> 9.7</td><td>59  </td><td>5   </td><td>21  </td></tr>
	<tr><td> 11 </td><td>320 </td><td>16.6</td><td>73  </td><td>5   </td><td>22  </td></tr>
	<tr><td>  4 </td><td> 25 </td><td> 9.7</td><td>61  </td><td>5   </td><td>23  </td></tr>
	<tr><td> 32 </td><td> 92 </td><td>12.0</td><td>61  </td><td>5   </td><td>24  </td></tr>
	<tr><td> NA </td><td> 66 </td><td>16.6</td><td>57  </td><td>5   </td><td>25  </td></tr>
	<tr><td> NA </td><td>266 </td><td>14.9</td><td>58  </td><td>5   </td><td>26  </td></tr>
	<tr><td> NA </td><td> NA </td><td> 8.0</td><td>57  </td><td>5   </td><td>27  </td></tr>
	<tr><td> 23 </td><td> 13 </td><td>12.0</td><td>67  </td><td>5   </td><td>28  </td></tr>
	<tr><td> 45 </td><td>252 </td><td>14.9</td><td>81  </td><td>5   </td><td>29  </td></tr>
	<tr><td>115 </td><td>223 </td><td> 5.7</td><td>79  </td><td>5   </td><td>30  </td></tr>
	<tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr>
	<tr><td>96  </td><td>167 </td><td> 6.9</td><td>91  </td><td>9   </td><td> 1  </td></tr>
	<tr><td>78  </td><td>197 </td><td> 5.1</td><td>92  </td><td>9   </td><td> 2  </td></tr>
	<tr><td>73  </td><td>183 </td><td> 2.8</td><td>93  </td><td>9   </td><td> 3  </td></tr>
	<tr><td>91  </td><td>189 </td><td> 4.6</td><td>93  </td><td>9   </td><td> 4  </td></tr>
	<tr><td>47  </td><td> 95 </td><td> 7.4</td><td>87  </td><td>9   </td><td> 5  </td></tr>
	<tr><td>32  </td><td> 92 </td><td>15.5</td><td>84  </td><td>9   </td><td> 6  </td></tr>
	<tr><td>20  </td><td>252 </td><td>10.9</td><td>80  </td><td>9   </td><td> 7  </td></tr>
	<tr><td>23  </td><td>220 </td><td>10.3</td><td>78  </td><td>9   </td><td> 8  </td></tr>
	<tr><td>21  </td><td>230 </td><td>10.9</td><td>75  </td><td>9   </td><td> 9  </td></tr>
	<tr><td>24  </td><td>259 </td><td> 9.7</td><td>73  </td><td>9   </td><td>10  </td></tr>
	<tr><td>44  </td><td>236 </td><td>14.9</td><td>81  </td><td>9   </td><td>11  </td></tr>
	<tr><td>21  </td><td>259 </td><td>15.5</td><td>76  </td><td>9   </td><td>12  </td></tr>
	<tr><td>28  </td><td>238 </td><td> 6.3</td><td>77  </td><td>9   </td><td>13  </td></tr>
	<tr><td> 9  </td><td> 24 </td><td>10.9</td><td>71  </td><td>9   </td><td>14  </td></tr>
	<tr><td>13  </td><td>112 </td><td>11.5</td><td>71  </td><td>9   </td><td>15  </td></tr>
	<tr><td>46  </td><td>237 </td><td> 6.9</td><td>78  </td><td>9   </td><td>16  </td></tr>
	<tr><td>18  </td><td>224 </td><td>13.8</td><td>67  </td><td>9   </td><td>17  </td></tr>
	<tr><td>13  </td><td> 27 </td><td>10.3</td><td>76  </td><td>9   </td><td>18  </td></tr>
	<tr><td>24  </td><td>238 </td><td>10.3</td><td>68  </td><td>9   </td><td>19  </td></tr>
	<tr><td>16  </td><td>201 </td><td> 8.0</td><td>82  </td><td>9   </td><td>20  </td></tr>
	<tr><td>13  </td><td>238 </td><td>12.6</td><td>64  </td><td>9   </td><td>21  </td></tr>
	<tr><td>23  </td><td> 14 </td><td> 9.2</td><td>71  </td><td>9   </td><td>22  </td></tr>
	<tr><td>36  </td><td>139 </td><td>10.3</td><td>81  </td><td>9   </td><td>23  </td></tr>
	<tr><td> 7  </td><td> 49 </td><td>10.3</td><td>69  </td><td>9   </td><td>24  </td></tr>
	<tr><td>14  </td><td> 20 </td><td>16.6</td><td>63  </td><td>9   </td><td>25  </td></tr>
	<tr><td>30  </td><td>193 </td><td> 6.9</td><td>70  </td><td>9   </td><td>26  </td></tr>
	<tr><td>NA  </td><td>145 </td><td>13.2</td><td>77  </td><td>9   </td><td>27  </td></tr>
	<tr><td>14  </td><td>191 </td><td>14.3</td><td>75  </td><td>9   </td><td>28  </td></tr>
	<tr><td>18  </td><td>131 </td><td> 8.0</td><td>76  </td><td>9   </td><td>29  </td></tr>
	<tr><td>20  </td><td>223 </td><td>11.5</td><td>68  </td><td>9   </td><td>30  </td></tr>
</tbody>
</table>




<table>
<thead><tr><th></th><th scope=col>Ozone</th><th scope=col>Solar.R</th><th scope=col>Wind</th><th scope=col>Temp</th><th scope=col>Month</th><th scope=col>Day</th></tr></thead>
<tbody>
	<tr><th scope=row>29</th><td> 45 </td><td>252 </td><td>14.9</td><td>81  </td><td>5   </td><td>29  </td></tr>
	<tr><th scope=row>35</th><td> NA </td><td>186 </td><td> 9.2</td><td>84  </td><td>6   </td><td> 4  </td></tr>
	<tr><th scope=row>36</th><td> NA </td><td>220 </td><td> 8.6</td><td>85  </td><td>6   </td><td> 5  </td></tr>
	<tr><th scope=row>38</th><td> 29 </td><td>127 </td><td> 9.7</td><td>82  </td><td>6   </td><td> 7  </td></tr>
	<tr><th scope=row>39</th><td> NA </td><td>273 </td><td> 6.9</td><td>87  </td><td>6   </td><td> 8  </td></tr>
	<tr><th scope=row>40</th><td> 71 </td><td>291 </td><td>13.8</td><td>90  </td><td>6   </td><td> 9  </td></tr>
	<tr><th scope=row>41</th><td> 39 </td><td>323 </td><td>11.5</td><td>87  </td><td>6   </td><td>10  </td></tr>
	<tr><th scope=row>42</th><td> NA </td><td>259 </td><td>10.9</td><td>93  </td><td>6   </td><td>11  </td></tr>
	<tr><th scope=row>43</th><td> NA </td><td>250 </td><td> 9.2</td><td>92  </td><td>6   </td><td>12  </td></tr>
	<tr><th scope=row>44</th><td> 23 </td><td>148 </td><td> 8.0</td><td>82  </td><td>6   </td><td>13  </td></tr>
	<tr><th scope=row>61</th><td> NA </td><td>138 </td><td> 8.0</td><td>83  </td><td>6   </td><td>30  </td></tr>
	<tr><th scope=row>62</th><td>135 </td><td>269 </td><td> 4.1</td><td>84  </td><td>7   </td><td> 1  </td></tr>
	<tr><th scope=row>63</th><td> 49 </td><td>248 </td><td> 9.2</td><td>85  </td><td>7   </td><td> 2  </td></tr>
	<tr><th scope=row>64</th><td> 32 </td><td>236 </td><td> 9.2</td><td>81  </td><td>7   </td><td> 3  </td></tr>
	<tr><th scope=row>65</th><td> NA </td><td>101 </td><td>10.9</td><td>84  </td><td>7   </td><td> 4  </td></tr>
	<tr><th scope=row>66</th><td> 64 </td><td>175 </td><td> 4.6</td><td>83  </td><td>7   </td><td> 5  </td></tr>
	<tr><th scope=row>67</th><td> 40 </td><td>314 </td><td>10.9</td><td>83  </td><td>7   </td><td> 6  </td></tr>
	<tr><th scope=row>68</th><td> 77 </td><td>276 </td><td> 5.1</td><td>88  </td><td>7   </td><td> 7  </td></tr>
	<tr><th scope=row>69</th><td> 97 </td><td>267 </td><td> 6.3</td><td>92  </td><td>7   </td><td> 8  </td></tr>
	<tr><th scope=row>70</th><td> 97 </td><td>272 </td><td> 5.7</td><td>92  </td><td>7   </td><td> 9  </td></tr>
	<tr><th scope=row>71</th><td> 85 </td><td>175 </td><td> 7.4</td><td>89  </td><td>7   </td><td>10  </td></tr>
	<tr><th scope=row>72</th><td> NA </td><td>139 </td><td> 8.6</td><td>82  </td><td>7   </td><td>11  </td></tr>
	<tr><th scope=row>74</th><td> 27 </td><td>175 </td><td>14.9</td><td>81  </td><td>7   </td><td>13  </td></tr>
	<tr><th scope=row>75</th><td> NA </td><td>291 </td><td>14.9</td><td>91  </td><td>7   </td><td>14  </td></tr>
	<tr><th scope=row>77</th><td> 48 </td><td>260 </td><td> 6.9</td><td>81  </td><td>7   </td><td>16  </td></tr>
	<tr><th scope=row>78</th><td> 35 </td><td>274 </td><td>10.3</td><td>82  </td><td>7   </td><td>17  </td></tr>
	<tr><th scope=row>79</th><td> 61 </td><td>285 </td><td> 6.3</td><td>84  </td><td>7   </td><td>18  </td></tr>
	<tr><th scope=row>80</th><td> 79 </td><td>187 </td><td> 5.1</td><td>87  </td><td>7   </td><td>19  </td></tr>
	<tr><th scope=row>81</th><td> 63 </td><td>220 </td><td>11.5</td><td>85  </td><td>7   </td><td>20  </td></tr>
	<tr><th scope=row>83</th><td> NA </td><td>258 </td><td> 9.7</td><td>81  </td><td>7   </td><td>22  </td></tr>
	<tr><th scope=row>...</th><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr>
	<tr><th scope=row>92</th><td> 59 </td><td>254 </td><td> 9.2</td><td>81  </td><td>7   </td><td>31  </td></tr>
	<tr><th scope=row>93</th><td> 39 </td><td> 83 </td><td> 6.9</td><td>81  </td><td>8   </td><td> 1  </td></tr>
	<tr><th scope=row>94</th><td>  9 </td><td> 24 </td><td>13.8</td><td>81  </td><td>8   </td><td> 2  </td></tr>
	<tr><th scope=row>95</th><td> 16 </td><td> 77 </td><td> 7.4</td><td>82  </td><td>8   </td><td> 3  </td></tr>
	<tr><th scope=row>96</th><td> 78 </td><td> NA </td><td> 6.9</td><td>86  </td><td>8   </td><td> 4  </td></tr>
	<tr><th scope=row>97</th><td> 35 </td><td> NA </td><td> 7.4</td><td>85  </td><td>8   </td><td> 5  </td></tr>
	<tr><th scope=row>98</th><td> 66 </td><td> NA </td><td> 4.6</td><td>87  </td><td>8   </td><td> 6  </td></tr>
	<tr><th scope=row>99</th><td>122 </td><td>255 </td><td> 4.0</td><td>89  </td><td>8   </td><td> 7  </td></tr>
	<tr><th scope=row>100</th><td> 89 </td><td>229 </td><td>10.3</td><td>90  </td><td>8   </td><td> 8  </td></tr>
	<tr><th scope=row>101</th><td>110 </td><td>207 </td><td> 8.0</td><td>90  </td><td>8   </td><td> 9  </td></tr>
	<tr><th scope=row>102</th><td> NA </td><td>222 </td><td> 8.6</td><td>92  </td><td>8   </td><td>10  </td></tr>
	<tr><th scope=row>103</th><td> NA </td><td>137 </td><td>11.5</td><td>86  </td><td>8   </td><td>11  </td></tr>
	<tr><th scope=row>104</th><td> 44 </td><td>192 </td><td>11.5</td><td>86  </td><td>8   </td><td>12  </td></tr>
	<tr><th scope=row>105</th><td> 28 </td><td>273 </td><td>11.5</td><td>82  </td><td>8   </td><td>13  </td></tr>
	<tr><th scope=row>117</th><td>168 </td><td>238 </td><td> 3.4</td><td>81  </td><td>8   </td><td>25  </td></tr>
	<tr><th scope=row>118</th><td> 73 </td><td>215 </td><td> 8.0</td><td>86  </td><td>8   </td><td>26  </td></tr>
	<tr><th scope=row>119</th><td> NA </td><td>153 </td><td> 5.7</td><td>88  </td><td>8   </td><td>27  </td></tr>
	<tr><th scope=row>120</th><td> 76 </td><td>203 </td><td> 9.7</td><td>97  </td><td>8   </td><td>28  </td></tr>
	<tr><th scope=row>121</th><td>118 </td><td>225 </td><td> 2.3</td><td>94  </td><td>8   </td><td>29  </td></tr>
	<tr><th scope=row>122</th><td> 84 </td><td>237 </td><td> 6.3</td><td>96  </td><td>8   </td><td>30  </td></tr>
	<tr><th scope=row>123</th><td> 85 </td><td>188 </td><td> 6.3</td><td>94  </td><td>8   </td><td>31  </td></tr>
	<tr><th scope=row>124</th><td> 96 </td><td>167 </td><td> 6.9</td><td>91  </td><td>9   </td><td> 1  </td></tr>
	<tr><th scope=row>125</th><td> 78 </td><td>197 </td><td> 5.1</td><td>92  </td><td>9   </td><td> 2  </td></tr>
	<tr><th scope=row>126</th><td> 73 </td><td>183 </td><td> 2.8</td><td>93  </td><td>9   </td><td> 3  </td></tr>
	<tr><th scope=row>127</th><td> 91 </td><td>189 </td><td> 4.6</td><td>93  </td><td>9   </td><td> 4  </td></tr>
	<tr><th scope=row>128</th><td> 47 </td><td> 95 </td><td> 7.4</td><td>87  </td><td>9   </td><td> 5  </td></tr>
	<tr><th scope=row>129</th><td> 32 </td><td> 92 </td><td>15.5</td><td>84  </td><td>9   </td><td> 6  </td></tr>
	<tr><th scope=row>134</th><td> 44 </td><td>236 </td><td>14.9</td><td>81  </td><td>9   </td><td>11  </td></tr>
	<tr><th scope=row>143</th><td> 16 </td><td>201 </td><td> 8.0</td><td>82  </td><td>9   </td><td>20  </td></tr>
	<tr><th scope=row>146</th><td> 36 </td><td>139 </td><td>10.3</td><td>81  </td><td>9   </td><td>23  </td></tr>
</tbody>
</table>




```R
# Ozone과 Temp만을 출력한 결과
subset(airquality, Temp > 80, select = c(Ozone, Temp))
# Ozone과 Temp를 제외한 결과
subset(airquality, Temp > 80, select = -c(Ozone, Temp))
```


<table>
<thead><tr><th></th><th scope=col>Ozone</th><th scope=col>Temp</th></tr></thead>
<tbody>
	<tr><th scope=row>29</th><td> 45</td><td>81 </td></tr>
	<tr><th scope=row>35</th><td> NA</td><td>84 </td></tr>
	<tr><th scope=row>36</th><td> NA</td><td>85 </td></tr>
	<tr><th scope=row>38</th><td> 29</td><td>82 </td></tr>
	<tr><th scope=row>39</th><td> NA</td><td>87 </td></tr>
	<tr><th scope=row>40</th><td> 71</td><td>90 </td></tr>
	<tr><th scope=row>41</th><td> 39</td><td>87 </td></tr>
	<tr><th scope=row>42</th><td> NA</td><td>93 </td></tr>
	<tr><th scope=row>43</th><td> NA</td><td>92 </td></tr>
	<tr><th scope=row>44</th><td> 23</td><td>82 </td></tr>
	<tr><th scope=row>61</th><td> NA</td><td>83 </td></tr>
	<tr><th scope=row>62</th><td>135</td><td>84 </td></tr>
	<tr><th scope=row>63</th><td> 49</td><td>85 </td></tr>
	<tr><th scope=row>64</th><td> 32</td><td>81 </td></tr>
	<tr><th scope=row>65</th><td> NA</td><td>84 </td></tr>
	<tr><th scope=row>66</th><td> 64</td><td>83 </td></tr>
	<tr><th scope=row>67</th><td> 40</td><td>83 </td></tr>
	<tr><th scope=row>68</th><td> 77</td><td>88 </td></tr>
	<tr><th scope=row>69</th><td> 97</td><td>92 </td></tr>
	<tr><th scope=row>70</th><td> 97</td><td>92 </td></tr>
	<tr><th scope=row>71</th><td> 85</td><td>89 </td></tr>
	<tr><th scope=row>72</th><td> NA</td><td>82 </td></tr>
	<tr><th scope=row>74</th><td> 27</td><td>81 </td></tr>
	<tr><th scope=row>75</th><td> NA</td><td>91 </td></tr>
	<tr><th scope=row>77</th><td> 48</td><td>81 </td></tr>
	<tr><th scope=row>78</th><td> 35</td><td>82 </td></tr>
	<tr><th scope=row>79</th><td> 61</td><td>84 </td></tr>
	<tr><th scope=row>80</th><td> 79</td><td>87 </td></tr>
	<tr><th scope=row>81</th><td> 63</td><td>85 </td></tr>
	<tr><th scope=row>83</th><td> NA</td><td>81 </td></tr>
	<tr><th scope=row>...</th><td>...</td><td>...</td></tr>
	<tr><th scope=row>92</th><td> 59</td><td>81 </td></tr>
	<tr><th scope=row>93</th><td> 39</td><td>81 </td></tr>
	<tr><th scope=row>94</th><td>  9</td><td>81 </td></tr>
	<tr><th scope=row>95</th><td> 16</td><td>82 </td></tr>
	<tr><th scope=row>96</th><td> 78</td><td>86 </td></tr>
	<tr><th scope=row>97</th><td> 35</td><td>85 </td></tr>
	<tr><th scope=row>98</th><td> 66</td><td>87 </td></tr>
	<tr><th scope=row>99</th><td>122</td><td>89 </td></tr>
	<tr><th scope=row>100</th><td> 89</td><td>90 </td></tr>
	<tr><th scope=row>101</th><td>110</td><td>90 </td></tr>
	<tr><th scope=row>102</th><td> NA</td><td>92 </td></tr>
	<tr><th scope=row>103</th><td> NA</td><td>86 </td></tr>
	<tr><th scope=row>104</th><td> 44</td><td>86 </td></tr>
	<tr><th scope=row>105</th><td> 28</td><td>82 </td></tr>
	<tr><th scope=row>117</th><td>168</td><td>81 </td></tr>
	<tr><th scope=row>118</th><td> 73</td><td>86 </td></tr>
	<tr><th scope=row>119</th><td> NA</td><td>88 </td></tr>
	<tr><th scope=row>120</th><td> 76</td><td>97 </td></tr>
	<tr><th scope=row>121</th><td>118</td><td>94 </td></tr>
	<tr><th scope=row>122</th><td> 84</td><td>96 </td></tr>
	<tr><th scope=row>123</th><td> 85</td><td>94 </td></tr>
	<tr><th scope=row>124</th><td> 96</td><td>91 </td></tr>
	<tr><th scope=row>125</th><td> 78</td><td>92 </td></tr>
	<tr><th scope=row>126</th><td> 73</td><td>93 </td></tr>
	<tr><th scope=row>127</th><td> 91</td><td>93 </td></tr>
	<tr><th scope=row>128</th><td> 47</td><td>87 </td></tr>
	<tr><th scope=row>129</th><td> 32</td><td>84 </td></tr>
	<tr><th scope=row>134</th><td> 44</td><td>81 </td></tr>
	<tr><th scope=row>143</th><td> 16</td><td>82 </td></tr>
	<tr><th scope=row>146</th><td> 36</td><td>81 </td></tr>
</tbody>
</table>




<table>
<thead><tr><th></th><th scope=col>Solar.R</th><th scope=col>Wind</th><th scope=col>Month</th><th scope=col>Day</th></tr></thead>
<tbody>
	<tr><th scope=row>29</th><td>252 </td><td>14.9</td><td>5   </td><td>29  </td></tr>
	<tr><th scope=row>35</th><td>186 </td><td> 9.2</td><td>6   </td><td> 4  </td></tr>
	<tr><th scope=row>36</th><td>220 </td><td> 8.6</td><td>6   </td><td> 5  </td></tr>
	<tr><th scope=row>38</th><td>127 </td><td> 9.7</td><td>6   </td><td> 7  </td></tr>
	<tr><th scope=row>39</th><td>273 </td><td> 6.9</td><td>6   </td><td> 8  </td></tr>
	<tr><th scope=row>40</th><td>291 </td><td>13.8</td><td>6   </td><td> 9  </td></tr>
	<tr><th scope=row>41</th><td>323 </td><td>11.5</td><td>6   </td><td>10  </td></tr>
	<tr><th scope=row>42</th><td>259 </td><td>10.9</td><td>6   </td><td>11  </td></tr>
	<tr><th scope=row>43</th><td>250 </td><td> 9.2</td><td>6   </td><td>12  </td></tr>
	<tr><th scope=row>44</th><td>148 </td><td> 8.0</td><td>6   </td><td>13  </td></tr>
	<tr><th scope=row>61</th><td>138 </td><td> 8.0</td><td>6   </td><td>30  </td></tr>
	<tr><th scope=row>62</th><td>269 </td><td> 4.1</td><td>7   </td><td> 1  </td></tr>
	<tr><th scope=row>63</th><td>248 </td><td> 9.2</td><td>7   </td><td> 2  </td></tr>
	<tr><th scope=row>64</th><td>236 </td><td> 9.2</td><td>7   </td><td> 3  </td></tr>
	<tr><th scope=row>65</th><td>101 </td><td>10.9</td><td>7   </td><td> 4  </td></tr>
	<tr><th scope=row>66</th><td>175 </td><td> 4.6</td><td>7   </td><td> 5  </td></tr>
	<tr><th scope=row>67</th><td>314 </td><td>10.9</td><td>7   </td><td> 6  </td></tr>
	<tr><th scope=row>68</th><td>276 </td><td> 5.1</td><td>7   </td><td> 7  </td></tr>
	<tr><th scope=row>69</th><td>267 </td><td> 6.3</td><td>7   </td><td> 8  </td></tr>
	<tr><th scope=row>70</th><td>272 </td><td> 5.7</td><td>7   </td><td> 9  </td></tr>
	<tr><th scope=row>71</th><td>175 </td><td> 7.4</td><td>7   </td><td>10  </td></tr>
	<tr><th scope=row>72</th><td>139 </td><td> 8.6</td><td>7   </td><td>11  </td></tr>
	<tr><th scope=row>74</th><td>175 </td><td>14.9</td><td>7   </td><td>13  </td></tr>
	<tr><th scope=row>75</th><td>291 </td><td>14.9</td><td>7   </td><td>14  </td></tr>
	<tr><th scope=row>77</th><td>260 </td><td> 6.9</td><td>7   </td><td>16  </td></tr>
	<tr><th scope=row>78</th><td>274 </td><td>10.3</td><td>7   </td><td>17  </td></tr>
	<tr><th scope=row>79</th><td>285 </td><td> 6.3</td><td>7   </td><td>18  </td></tr>
	<tr><th scope=row>80</th><td>187 </td><td> 5.1</td><td>7   </td><td>19  </td></tr>
	<tr><th scope=row>81</th><td>220 </td><td>11.5</td><td>7   </td><td>20  </td></tr>
	<tr><th scope=row>83</th><td>258 </td><td> 9.7</td><td>7   </td><td>22  </td></tr>
	<tr><th scope=row>...</th><td>...</td><td>...</td><td>...</td><td>...</td></tr>
	<tr><th scope=row>92</th><td>254 </td><td> 9.2</td><td>7   </td><td>31  </td></tr>
	<tr><th scope=row>93</th><td> 83 </td><td> 6.9</td><td>8   </td><td> 1  </td></tr>
	<tr><th scope=row>94</th><td> 24 </td><td>13.8</td><td>8   </td><td> 2  </td></tr>
	<tr><th scope=row>95</th><td> 77 </td><td> 7.4</td><td>8   </td><td> 3  </td></tr>
	<tr><th scope=row>96</th><td> NA </td><td> 6.9</td><td>8   </td><td> 4  </td></tr>
	<tr><th scope=row>97</th><td> NA </td><td> 7.4</td><td>8   </td><td> 5  </td></tr>
	<tr><th scope=row>98</th><td> NA </td><td> 4.6</td><td>8   </td><td> 6  </td></tr>
	<tr><th scope=row>99</th><td>255 </td><td> 4.0</td><td>8   </td><td> 7  </td></tr>
	<tr><th scope=row>100</th><td>229 </td><td>10.3</td><td>8   </td><td> 8  </td></tr>
	<tr><th scope=row>101</th><td>207 </td><td> 8.0</td><td>8   </td><td> 9  </td></tr>
	<tr><th scope=row>102</th><td>222 </td><td> 8.6</td><td>8   </td><td>10  </td></tr>
	<tr><th scope=row>103</th><td>137 </td><td>11.5</td><td>8   </td><td>11  </td></tr>
	<tr><th scope=row>104</th><td>192 </td><td>11.5</td><td>8   </td><td>12  </td></tr>
	<tr><th scope=row>105</th><td>273 </td><td>11.5</td><td>8   </td><td>13  </td></tr>
	<tr><th scope=row>117</th><td>238 </td><td> 3.4</td><td>8   </td><td>25  </td></tr>
	<tr><th scope=row>118</th><td>215 </td><td> 8.0</td><td>8   </td><td>26  </td></tr>
	<tr><th scope=row>119</th><td>153 </td><td> 5.7</td><td>8   </td><td>27  </td></tr>
	<tr><th scope=row>120</th><td>203 </td><td> 9.7</td><td>8   </td><td>28  </td></tr>
	<tr><th scope=row>121</th><td>225 </td><td> 2.3</td><td>8   </td><td>29  </td></tr>
	<tr><th scope=row>122</th><td>237 </td><td> 6.3</td><td>8   </td><td>30  </td></tr>
	<tr><th scope=row>123</th><td>188 </td><td> 6.3</td><td>8   </td><td>31  </td></tr>
	<tr><th scope=row>124</th><td>167 </td><td> 6.9</td><td>9   </td><td> 1  </td></tr>
	<tr><th scope=row>125</th><td>197 </td><td> 5.1</td><td>9   </td><td> 2  </td></tr>
	<tr><th scope=row>126</th><td>183 </td><td> 2.8</td><td>9   </td><td> 3  </td></tr>
	<tr><th scope=row>127</th><td>189 </td><td> 4.6</td><td>9   </td><td> 4  </td></tr>
	<tr><th scope=row>128</th><td> 95 </td><td> 7.4</td><td>9   </td><td> 5  </td></tr>
	<tr><th scope=row>129</th><td> 92 </td><td>15.5</td><td>9   </td><td> 6  </td></tr>
	<tr><th scope=row>134</th><td>236 </td><td>14.9</td><td>9   </td><td>11  </td></tr>
	<tr><th scope=row>143</th><td>201 </td><td> 8.0</td><td>9   </td><td>20  </td></tr>
	<tr><th scope=row>146</th><td>139 </td><td>10.3</td><td>9   </td><td>23  </td></tr>
</tbody>
</table>




```R
#data frame은 모든 속성(열 요소)들의 크기가 일정
# List: 서로 다른 기본 자료형을 가질 수 있음/ 순서존재
title <- "My List"
ages <- c(31, 41, 21)
numbers <- matrix(1:9, nrow=3)
names <- c("Baby", "Gentle", "none")
listEx <- list(title, ages, numbers, names)
listEx
```


<ol>
	<li>'My List'</li>
	<li><ol class=list-inline>
	<li>31</li>
	<li>41</li>
	<li>21</li>
</ol>
</li>
	<li><table>
<tbody>
	<tr><td>1</td><td>4</td><td>7</td></tr>
	<tr><td>2</td><td>5</td><td>8</td></tr>
	<tr><td>3</td><td>6</td><td>9</td></tr>
</tbody>
</table>
</li>
	<li><ol class=list-inline>
	<li>'Baby'</li>
	<li>'Gentle'</li>
	<li>'none'</li>
</ol>
</li>
</ol>




```R
listEx[[1]]
```


'My List'



```R
#
listEx2 <- list(title=title, age=ages, number=numbers, name=names)
listEx2
listEx2[[1]]
listEx2$title
listEx2$age
listEx2$number
listEx2$name
```


<dl>
	<dt>$title</dt>
		<dd>'My List'</dd>
	<dt>$age</dt>
		<dd><ol class=list-inline>
	<li>31</li>
	<li>41</li>
	<li>21</li>
</ol>
</dd>
	<dt>$number</dt>
		<dd><table>
<tbody>
	<tr><td>1</td><td>4</td><td>7</td></tr>
	<tr><td>2</td><td>5</td><td>8</td></tr>
	<tr><td>3</td><td>6</td><td>9</td></tr>
</tbody>
</table>
</dd>
	<dt>$name</dt>
		<dd><ol class=list-inline>
	<li>'Baby'</li>
	<li>'Gentle'</li>
	<li>'none'</li>
</ol>
</dd>
</dl>




'My List'



'My List'



<ol class=list-inline>
	<li>31</li>
	<li>41</li>
	<li>21</li>
</ol>




<table>
<tbody>
	<tr><td>1</td><td>4</td><td>7</td></tr>
	<tr><td>2</td><td>5</td><td>8</td></tr>
	<tr><td>3</td><td>6</td><td>9</td></tr>
</tbody>
</table>




<ol class=list-inline>
	<li>'Baby'</li>
	<li>'Gentle'</li>
	<li>'none'</li>
</ol>




```R
# is.list(x), as.list(x)
x <- list(c(1,2,3,4), c(3,2,1))
v <- c(1,2,3,4)
is.list(v)
a.l <- as.list(v)
a.l
```


FALSE



<ol>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
</ol>



#### lapply( ): 결과를 List로 반환 , sapply( ): 결과를 백터로 반환


```R
# laaply(X, FUN, ...) 
# : 리스트의 각 요소에 평균을 구하고 결과를 리스트로 반환
# saaply()
# : 백터로 결과가 나옴
# FUN : 적용할 함수
# simplify:TRUE(디폴트)스칼라로, FALSE이면 리스트의 배열로 반환
# logic: 
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE))
lapply(x, mean)
sapply(x, mean)
```


<dl>
	<dt>$a</dt>
		<dd>5.5</dd>
	<dt>$beta</dt>
		<dd>4.53512523476476</dd>
	<dt>$logic</dt>
		<dd>0.333333333333333</dd>
</dl>




<dl class=dl-horizontal>
	<dt>a</dt>
		<dd>5.5</dd>
	<dt>beta</dt>
		<dd>4.53512523476476</dd>
	<dt>logic</dt>
		<dd>0.333333333333333</dd>
</dl>



### 특정 원소 출력하기


```R
# 자료구조의 특정 원소 가져오기
ex <- c(1, 3, 7, NA, 12)
ex[ex < 10]
ex[ex %% 2 == 0]
# NA인 것을 추출
ex[is.na(ex)]
ex[!is.na(ex)]
ex[ex %% 2 == 0 & !is.na(ex)]
```


<ol class=list-inline>
	<li>1</li>
	<li>3</li>
	<li>7</li>
	<li>&lt;NA&gt;</li>
</ol>




<ol class=list-inline>
	<li>&lt;NA&gt;</li>
	<li>12</li>
</ol>




&lt;NA&gt;



<ol class=list-inline>
	<li>1</li>
	<li>3</li>
	<li>7</li>
	<li>12</li>
</ol>




12



```R
name <- c("철수", "영희", "길동")
age <- c(21, 20, 34)
gender <- factor(c("M","F","M"))
# 열 중심 행렬구성
characters <- data.frame(name, age, gender)
characters
characters[characters$gender == "F", ]
characters[characters$age < 30 & characters$gender=="M", ]
```


<table>
<thead><tr><th scope=col>name</th><th scope=col>age</th><th scope=col>gender</th></tr></thead>
<tbody>
	<tr><td>철수</td><td>21  </td><td>M   </td></tr>
	<tr><td>영희</td><td>20  </td><td>F   </td></tr>
	<tr><td>길동</td><td>34  </td><td>M   </td></tr>
</tbody>
</table>




<table>
<thead><tr><th></th><th scope=col>name</th><th scope=col>age</th><th scope=col>gender</th></tr></thead>
<tbody>
	<tr><th scope=row>2</th><td>영희</td><td>20  </td><td>F   </td></tr>
</tbody>
</table>




<table>
<thead><tr><th scope=col>name</th><th scope=col>age</th><th scope=col>gender</th></tr></thead>
<tbody>
	<tr><td>철수</td><td>21  </td><td>M   </td></tr>
</tbody>
</table>




```R
# ifelse(test, yes, no)
x <- c(6:-4)
options(digits=3)
# 값에 루트를 씌워줌
# 경고메시지 발생 : 루트를 사용할 수 없는 값 존재
sqrt(x)
sqrt(ifelse(x >= 0, x, NA))
```

    Warning message in sqrt(x):
    "NaN이 생성되었습니다"


<ol class=list-inline>
	<li>2.44948974278318</li>
	<li>2.23606797749979</li>
	<li>2</li>
	<li>1.73205080756888</li>
	<li>1.4142135623731</li>
	<li>1</li>
	<li>0</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
	<li>NaN</li>
</ol>




<ol class=list-inline>
	<li>2.44948974278318</li>
	<li>2.23606797749979</li>
	<li>2</li>
	<li>1.73205080756888</li>
	<li>1.4142135623731</li>
	<li>1</li>
	<li>0</li>
	<li>&lt;NA&gt;</li>
	<li>&lt;NA&gt;</li>
	<li>&lt;NA&gt;</li>
	<li>&lt;NA&gt;</li>
</ol>



### 조건문


```R
x <- c(1, 2, 3)
x <- factor(x)
if(is.factor(x)) length(x)
```


3



```R
if(is.factor(x)) {
  length(x)
} else {
  sum(x)
}
```


3



```R
x <- c(1, 2, 3)
x <- list(x)

if(is.factor(x)) {
  length(x)
} else if(is.integer(x)) {
    sum(x)
} else {
    paste(x, "element")
}

```


'c(1, 2, 3) element'


### 반복문


```R
i <- 20
repeat {
  if(i > 25) {
    break
  } else {
    print(i)
    i <- i + 1
  }
}
```

    [1] 20
    [1] 21
    [1] 22
    [1] 23
    [1] 24
    [1] 25
    

### while문


```R
dan <- 2
i <- 1
while (i < 10) {
  times <- i * dan
  print(paste(dan, "X", i, " = ", times))
  i <- i + 1
}
```

### for문


```R
dan <- 9
i <- 1
for(i in 1:9) {
  times <- i * dan
  # 결과값이 한 번에 묶여서 나오도록 paste를 이용해 출력
  # +를 사용해 연결할 경우,
  # in dan + "X" : non-numeric argument란 오류가 뜸
  print(paste(dan , "X", i , " = " , times))
  }
```

    [1] "9 X 1  =  9"
    [1] "9 X 2  =  18"
    [1] "9 X 3  =  27"
    [1] "9 X 4  =  36"
    [1] "9 X 5  =  45"
    [1] "9 X 6  =  54"
    [1] "9 X 7  =  63"
    [1] "9 X 8  =  72"
    [1] "9 X 9  =  81"
    
