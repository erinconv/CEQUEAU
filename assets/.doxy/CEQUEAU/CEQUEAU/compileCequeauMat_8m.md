

# File compileCequeauMat.m



[**FileList**](files.md) **>** [**src**](dir_68267d1309a1af8e8297ef4c3efbcdba.md) **>** [**compileCequeauMat.m**](compileCequeauMat_8m.md)


























## Public Attributes

| Type | Name |
| ---: | :--- |
|   | [**COMPFLAGS**](#variable-compflags)   = `" COMPFLAGS='$COMPFLAGS "`<br> |
|   | [**COMPILER\_COMP\_FLAGS**](#variable-compiler_comp_flags)   = `" /std:c++14 "`<br> |
|   | [**CXXFLAGS**](#variable-cxxflags)   = `" CXXFLAGS=$CXXFLAGS "`<br> |
|  if debug | [**DBG\_FLAG**](#variable-dbg_flag)   = `"-g "`<br> |
|   | [**LOG\_FLAG**](#variable-log_flag)   = `""`<br> |
|   | [**OUTFILE**](#variable-outfile)   = `"../mex/cequeauQuantiteMat"`<br> |
|  end source files | [**SOURCES**](#variable-sources)   = `' CequeauQuantiteMex.cpp '`<br> |
|   | [**command**](#variable-command)   = `strcat("mex -v -largeArrayDims -output ", OUTFILE, DBG\_FLAG, CXXFLAGS, COMPFLAGS, SOURCES)`<br> |
|   | [**compiler**](#variable-compiler)   = `string(mex.getCompilerConfigurations('c++').Manufacturer)`<br> |
|   | [**dbg**](#variable-dbg)   = `"\_DBG "`<br> |
|   | [**mex\_dir**](#variable-mex_dir)   = `fullfile(script\_dir, '..', 'mex')`<br> |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  function | [**compileCequeauMat**](#function-compilecequeaumat) () <br> |
|   | [**eval**](#function-eval) (command) <br> |
| virtual id | [**false**](#function-false) () <br> |
|  if | [**strcmp**](#function-strcmp) (compiler, 'Microsoft') <br> |
|  elseif | [**strcmp**](#function-strcmp) (compiler, 'GNU') <br> |
|  if | [**~exist**](#function-exist) (mex\_dir, 'dir') <br> |




























## Public Attributes Documentation




### variable COMPFLAGS 

```Objective-C
if ~log COMPFLAGS;
```




<hr>



### variable COMPILER\_COMP\_FLAGS 

```Objective-C
COMPILER_COMP_FLAGS;
```




<hr>



### variable CXXFLAGS 

```Objective-C
end CXXFLAGS;
```




<hr>



### variable DBG\_FLAG 

```Objective-C
else DBG_FLAG;
```




<hr>



### variable LOG\_FLAG 

```Objective-C
if ~log LOG_FLAG;
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



### variable compiler 

```Objective-C
compiler;
```




<hr>



### variable dbg 

```Objective-C
dbg;
```




<hr>



### variable mex\_dir 

```Objective-C
mex_dir;
```




<hr>
## Public Functions Documentation




### function compileCequeauMat 

```Objective-C
function compileCequeauMat () 
```




<hr>



### function eval 

```Objective-C
eval (
    command
) 
```




<hr>



### function false 

```Objective-C
virtual id false () 
```




<hr>



### function strcmp 

```Objective-C
if strcmp (
    compiler,
    'Microsoft'
) 
```




<hr>



### function strcmp 

```Objective-C
elseif strcmp (
    compiler,
    'GNU'
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
The documentation for this class was generated from the following file `src/compileCequeauMat.m`

