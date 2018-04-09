
library(readxl)

anova1 <- read_excel("9장 낚시터.xlsx")

group <- as.character(anova1$낚시터)
boxplot(anova1$물고기 ~ group)
bartlett.test(anova1$물고기 ~ group)

with(anova1, tapply(물고기, group, mean))
# with(anova1, tapply(물고기, group, ad))

#linear model함수 사용
out1 = lm(anova1$물고기 ~ group)

# 귀무가설 : 낚시터에 따라 잡히는 물고기 비율이 같다
# p-value값 < 0.05, 귀무가설 기각
summary(out1)

# lm = aov(Analysis of variance model)
out2 = aov(formula = anova1$물고기 ~  group)
summary(out2)

out3=anova(out1)
out3

# TukeyHSD(out1) 실행 불가 : lm의 객체에 적용된 TukeyHSD에 사용할 수 X
# p adj : 조정된 p-value값을 의미
TukeyHSD(out2)

anova <- read_excel("fisher.xlsx")
group <- as.character(anova$낚시터)

anova <- read_excel("이원분산분석.xls")

group1 <- as.character(anova$흡연석여부)
group2 <- as.character(anova$위치)

boxplot(anova$매출액 ~ group1)
boxplot(anova$매출액 ~ group2)
with(anova, tapply(anova$매출액, group1, mean))
with(anova, tapply(anova$매출액, group2, mean))

# 매출액에 영향을 미치는 흡연석여부, 위치, 흡연석&위치가 서로 영향을 받아 주는 영향
out1=aov(anova$매출액~ group1 + group2 + group1*group2)
anova(out1)
out2=aov(anova$매출액~ group1 + group2)
anova(out2)
TukeyHSD(out1)


plot(dist ~ speed, data = cars, type = "p", pch = 20, col = 3)

# 공분산
# 딘위가 다르기 때문에 숫자가 100~ 나옴, 관계분석이 난해함
# 이러한 공분산을 표준화시키기 위해 '상관계수'를 사용함
cov(cars$dist, cars$speed)

# 1에 가까워 질 수록 강한 선형모양이 보임
cor(cars$dist, cars$speed)

# cor : 0.8068949 → 강한 상관관계를 보임
cor.test(~dist+speed, data=cars, method = c("pearson"))

ad <- read_excel("단순 회귀분석.xls")

plot(매출액 ~ 광고비, data = ad, type = "p", pch = 20, col = "blue")

cov(ad$매출액, ad$광고비)
cor(ad$매출액, ad$광고비)

# 상관관계 
# 귀무가설: 
# 상관관계가 0이 아님을 채택
cor.test(~매출액+광고비, data=ad, method = c("pearson"))

# 관츧빈도
vacation <- c(68, 32)
# 기대빈도
prob <- c(0.5, 0.5)

# 카이제곱 검정 (빈도에 대한 검정)
chisq.test(vacation, p=prob)

# p-value = 0.0003182 : 귀무가설을 기각 (바다에 대한 선호도 != 산에 대한 선호도)

mendel <- c(315, 101, 108, 32)
prob <- c(9, 3, 3, 1)/16

# p-value = 0.9254 : 귀무가설 기각 실패 (완두콩을 재배해보니 멘델의 법칙을 따른다.)
chisq.test(mendel, p=prob)

purchasing <- read_excel("교차_카이제곱.xls")
purchasing.table <- xtabs(~구매의사+지역, data = purchasing)
purchasing.table

# 귀무가설 : 구매의사와 지역은 독립적이다 
# p-value값이 0에 가까움, 귀무가설을 기각함(지역에 따라 구매의사가 다르다)
chisq.test(purchasing.table)

 회귀식의 유의성 검정
    - 귀무가설 : 회귀식이 유의하지 않다.
    - 대립가설 : 회귀식이 유의하다.

ad <- read_excel("단순 회귀분석.xls")
plot(매출액 ~ 광고비, data = ad, type = "p", pch = 20, col = "blue")

reg=lm(ad$매출액 ~ ad$광고비)

summary(reg)

# 신뢰구간
confint(reg)

# 잔차(Residuals d) : 잔차의 평균이 0이다

# 계수(Coefficients)
 # std.Error : 표준오차
 # t value : 우리가 추정한 것이 유효한지 비교함

# R-squared : 회기식이 이 자료를 얼마나 잘 표현하고 있는가

종속변수 : 매출액
광고비 : 독립변


베타0, 베타1을 추정해야 함



2. 추정을 했는데 회귀식이 이 자료를 얼마나 설명하고 있는가?
    : 결정계수 R squared

3. 표준오차보다 회귀식으로 설명되는 것이 많은지 
    : 분산분석

4. 회귀식의 회귀계수가 유의한가?
    : t value와 pr을 보기

5. 신뢰구간을 확인하는 것
    : confint() 95%가 디폴트


d <- read_excel("연습문제1.xlsx")

plot(친절도 ~ 재구매, data = d, type = "p", pch = 20, col = "blue")

reg = lm(d$친절도 ~ d$재구매)

summary(reg)


confint(reg)


?par() 


par(mfrow=c(2, 2))
plot(reg)
res = residuals(reg)

#정규성을 가지고 있는가?
shapiro.test(res)

phone <- read_excel("다중 회귀분석_요인저장_변수 계산.xls")

# 종속변수로 둘 것을 +로 나열함
reg1 = lm(phone$만족감 ~ phone$외관 + phone$유용성 + phone$편의성)
reg1
summary(reg1)
confint(reg1)

# Intercept
# R-squared :  : 
# 조정된 수정된 r- : 이 회귀식이 자료를 얼마나 잘 보여주는가
# 분산분석 : 이 회귀식이 유의한가?

# p-value : 값이 유의함

par(mfrow=c(2,2))
plot(reg1)

잔차들이 패턴을 가지고 있는지 확인해줄 수 있음

a <- read_excel("연습문제2.xlsx")
reg1 = lm(a$재구매 ~ a$친절도 + a$사은품)
reg1
summary(reg1)
confint(reg1)

par(mfrow = c(2, 2))
plot(reg1)
res = residuals(reg1)

# 정규성 검정
shapiro.test(res)

# 잔차 독립성 검정
# 2근처면 독립, 1.4보다 작으면 양의 상관


library(car)
res1 = residuals(reg1)
durbinWatsonTest(res1)
