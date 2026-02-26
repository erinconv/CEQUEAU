

# Class DateChrono



[**ClassList**](annotated.md) **>** [**DateChrono**](classDateChrono.md)










































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**DateChrono**](#function-datechrono-13) (int year, int month, int day) <br> |
|   | [**DateChrono**](#function-datechrono-23) (std::chrono::system\_clock::time\_point timePoint) <br> |
|   | [**DateChrono**](#function-datechrono-33) () <br> |
|  void | [**display**](#function-display) () const<br> |
|  int | [**getDay**](#function-getday) () const<br> |
|  int | [**getDayNumber**](#function-getdaynumber) () const<br> |
|  int | [**getDayOfYear**](#function-getdayofyear) () const<br> |
|  int | [**getJulianDay**](#function-getjulianday) () const<br> |
|  int | [**getMonth**](#function-getmonth) () const<br> |
|  std::chrono::system\_clock::time\_point | [**getTimePoint**](#function-gettimepoint) () <br> |
|  int | [**getYear**](#function-getyear) () const<br> |
|  bool | [**operator!=**](#function-operator) (const [**DateChrono**](classDateChrono.md) & other) const<br> |
|  [**DateChrono**](classDateChrono.md) | [**operator+**](#function-operator_1) (int days) const<br> |
|  [**DateChrono**](classDateChrono.md) & | [**operator+=**](#function-operator_2) (int days) <br> |
|  [**DateChrono**](classDateChrono.md) | [**operator-**](#function-operator-) (int days) const<br> |
|  bool | [**operator&lt;**](#function-operator_3) (const [**DateChrono**](classDateChrono.md) & other) const<br> |
|  bool | [**operator&lt;=**](#function-operator_4) (const [**DateChrono**](classDateChrono.md) & other) const<br> |
|  bool | [**operator==**](#function-operator_5) (const [**DateChrono**](classDateChrono.md) & other) const<br> |
|  bool | [**operator&gt;**](#function-operator_6) (const [**DateChrono**](classDateChrono.md) & other) const<br> |
|  bool | [**operator&gt;=**](#function-operator_7) (const [**DateChrono**](classDateChrono.md) & other) const<br> |
|  double | [**toMatlabDatenum**](#function-tomatlabdatenum) () const<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**DateChrono**](classDateChrono.md) | [**fromMatlabDatenum**](#function-frommatlabdatenum) (double matlabDatenum) <br> |


























## Public Functions Documentation




### function DateChrono [1/3]

```C++
DateChrono::DateChrono (
    int year,
    int month,
    int day
) 
```




<hr>



### function DateChrono [2/3]

```C++
DateChrono::DateChrono (
    std::chrono::system_clock::time_point timePoint
) 
```




<hr>



### function DateChrono [3/3]

```C++
DateChrono::DateChrono () 
```




<hr>



### function display 

```C++
void DateChrono::display () const
```




<hr>



### function getDay 

```C++
int DateChrono::getDay () const
```




<hr>



### function getDayNumber 

```C++
int DateChrono::getDayNumber () const
```




<hr>



### function getDayOfYear 

```C++
int DateChrono::getDayOfYear () const
```




<hr>



### function getJulianDay 

```C++
int DateChrono::getJulianDay () const
```




<hr>



### function getMonth 

```C++
int DateChrono::getMonth () const
```




<hr>



### function getTimePoint 

```C++
std::chrono::system_clock::time_point DateChrono::getTimePoint () 
```




<hr>



### function getYear 

```C++
int DateChrono::getYear () const
```




<hr>



### function operator!= 

```C++
bool DateChrono::operator!= (
    const DateChrono & other
) const
```




<hr>



### function operator+ 

```C++
DateChrono DateChrono::operator+ (
    int days
) const
```




<hr>



### function operator+= 

```C++
DateChrono & DateChrono::operator+= (
    int days
) 
```




<hr>



### function operator- 

```C++
DateChrono DateChrono::operator- (
    int days
) const
```




<hr>



### function operator&lt; 

```C++
bool DateChrono::operator< (
    const DateChrono & other
) const
```




<hr>



### function operator&lt;= 

```C++
bool DateChrono::operator<= (
    const DateChrono & other
) const
```




<hr>



### function operator== 

```C++
bool DateChrono::operator== (
    const DateChrono & other
) const
```




<hr>



### function operator&gt; 

```C++
bool DateChrono::operator> (
    const DateChrono & other
) const
```




<hr>



### function operator&gt;= 

```C++
bool DateChrono::operator>= (
    const DateChrono & other
) const
```




<hr>



### function toMatlabDatenum 

```C++
double DateChrono::toMatlabDatenum () const
```




<hr>
## Public Static Functions Documentation




### function fromMatlabDatenum 

```C++
static DateChrono DateChrono::fromMatlabDatenum (
    double matlabDatenum
) 
```




<hr>## Friends Documentation





### friend operator&lt;&lt; 

```C++
std::ostream & DateChrono::operator<< (
    std::ostream & os,
    const DateChrono & date
) 
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/DateChrono.h`

