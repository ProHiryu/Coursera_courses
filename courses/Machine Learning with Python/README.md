# Notes in Machine Learning with Python (1)
## Environment Problem
+ [numpy and scipy](https://www.zhihu.com/question/30188492?sort=created "problem on windows")
+ normal ones:pip install pandas quandl sklearn numpy matplotlib
+ [pythonprogramming.net](https://pythonprogramming.net/ "Great")
+ [github](https://github.com/ProHiryu/Coursera_courses/tree/master/courses/Machine%20Learning%20with%20Python)
## Regression
+ [reference](http://pandas.pydata.org/pandas-docs/stable/indexing.html)
+ ``dataframe.shift(num)`` just move the dataset num times rightwards
+ ``dataframe.iloc[num]`` Selection by Position - is primarily integer position based (from 0 to length-1 of the axis)
+ ``dataframe.loc[text]`` Selection by Label
+ python list - ``list[-1]`` the last element of the list
+ python date:
  - time string : ``time.ctime()`` 'Mon Dec 17 21:02:55 2012'
  - datetime tuple(datetime obj) : ``datetime.now()`` ``datetime.datetime(2012, 12, 17, 21, 3, 44, 139715)``
  - time tuple(time obj) : ``time.struct_time(tm_year=2008, tm_mon=11, tm_mday=10, tm_hour=17, tm_min=53, tm_sec=59, tm_wday=0, tm_yday=315, tm_isdst=-1)``
  - timestamp : ʱ�������:��1970��1��1��(00:00:00 GMT)����������
  - ![NOT FOUND!](http://s9.sinaimg.cn/large/b09d4602xd10ea8f9ab88&690 "change relation")
+ **python iteration ``np.nan for _ in range()`` means nothing,the variable is not going to be used** - [nan, nan, nan, nan, nan, 781.29480101781269]

## Matplotlib
```python
style.use('ggplot')

df['Adj. Close'].plot()
df['Forecast'].plot()
plt.legend(loc=4)
plt.xlabel('Date')
plt.ylabel('Price')
plt.show()
```

## Pickle
```python
# clf = LinearRegression(n_jobs=-1)
# clf.fit(X_train, y_train)
# with open('linearregression.pickle','wb') as f:
#     pickle.dump(clf, f)

pickle_in = open('linearregression.pickle','rb')
clf = pickle.load(pickle_in)
```