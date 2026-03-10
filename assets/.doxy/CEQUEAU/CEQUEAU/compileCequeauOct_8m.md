

# File compileCequeauOct.m



[**FileList**](files.md) **>** [**src**](dir_68267d1309a1af8e8297ef4c3efbcdba.md) **>** [**compileCequeauOct.m**](compileCequeauOct_8m.md)


























## Public Attributes

| Type | Name |
| ---: | :--- |
|   | [**COMPFLAGS**](#variable-compflags)   = `" "`<br> |
|   | [**CXXFLAGS**](#variable-cxxflags)   = `" -std=c++14"`<br> |
|  if debug | [**DBG\_FLAG**](#variable-dbg_flag)   = `" -g"`<br> |
|   | [**FLAGS**](#variable-flags)   = `strcat(OPT\_FLAG, " -DENV\_OCTAVE")`<br> |
|   | [**OPT\_FLAG**](#variable-opt_flag)   = `" -O0"`<br> |
|  end | [**OUTFILE**](#variable-outfile)   = `fullfile(mex\_dir, 'cequeauQuantiteOct')`<br> |
|  end | [**SOURCES**](#variable-sources)   = `' CequeauQuantiteMex.cpp '`<br> |
|   | [**command**](#variable-command)   = `/* multi line expression */`<br> |
|   | [**dbg**](#variable-dbg)   = `"\_DBG"`<br> |
|  end | [**debug**](#variable-debug)   = `false`<br> |
|   | [**log**](#variable-log)   = `false`<br> |
|   | [**mex\_dir**](#variable-mex_dir)   = `fullfile(script\_dir, '..', 'mex')`<br> |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  function | [**compileCequeauOct**](#function-compilecequeauoct) () <br> |
|   | [**eval**](#function-eval) (command) <br> |
|  if | [**~exist**](#function-exist) (mex\_dir, 'dir') <br> |




























## Public Attributes Documentation




### variable COMPFLAGS 

```Objective-C
if ~log COMPFLAGS;
```




<hr>



### variable CXXFLAGS 

```Objective-C
CXXFLAGS;
```




<hr>



### variable DBG\_FLAG 

```Objective-C
else DBG_FLAG;
```




<hr>



### variable FLAGS 

```Objective-C
FLAGS;
```




<hr>



### variable OPT\_FLAG 

```Objective-C
OPT_FLAG;
```




<hr>



### variable OUTFILE 

```Objective-C
OUTFILE;
```




<hr>



### variable SOURCES 

```Objective-C
SOURCES;
```




<hr>



### variable command 

```Objective-C
command;
```




<hr>



### variable dbg 

```Objective-C
dbg;
```




<hr>



### variable debug 

```Objective-C
end debug;
```




<hr>



### variable log 

```Objective-C
log;
```




<hr>



### variable mex\_dir 

```Objective-C
mex_dir;
```




<hr>
## Public Functions Documentation




### function compileCequeauOct 

```Objective-C
function compileCequeauOct () 
```




<hr>



### function eval 

```Objective-C
eval (
    command
) 
```




<hr>



### function ~exist 

```Objective-C
if ~exist (
    mex_dir,
    'dir'
) 
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/compileCequeauOct.m`

