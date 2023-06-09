<!-- Generated with Stardoc: http://skydoc.bazel.build -->


# API

`load` as always:

```starlark
load("@lib_common//:defs.bzl", "...")
```


<a id="every"></a>

## every

<pre>
every(<a href="#every-f">f</a>, <a href="#every-arr">arr</a>)
</pre>

Check if every item of `arr` passes function `f`.

Example:
  every(lambda i: i.endswith(".js"), ["app.js", "lib.js"]) // True


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="every-f"></a>f |  function to execute on every item,   |  none |
| <a id="every-arr"></a>arr |  list to iterate over,   |  none |

**RETURNS**

True or False


<a id="filter"></a>

## filter

<pre>
filter(<a href="#filter-f">f</a>, <a href="#filter-arr">arr</a>)
</pre>

Filter a list `arr` by applying a function `f` to each item.

Example:
  filter(lambda i: i.endswith(".js"), ["app.ts", "app.js", "lib.ts", "lib.js"]) // ["app.js", "lib.js"]


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="filter-f"></a>f |  function to execute on every item,   |  none |
| <a id="filter-arr"></a>arr |  list to iterate over,   |  none |

**RETURNS**

A new list containing items that passed the filter function.


<a id="find"></a>

## find

<pre>
find(<a href="#find-f">f</a>, <a href="#find-arr">arr</a>)
</pre>

Find a particular item from list `arr` by a given function `f`.

Unlike `pick`, the `find` method returns a tuple of the index and the value of first item passing by `f`.
Furhermore `find` does not fail if no item passes `f`.
In this case `(-1, None)` is returned.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="find-f"></a>f |  function to execute on every item,   |  none |
| <a id="find-arr"></a>arr |  list to iterate over,   |  none |

**RETURNS**

Tuple (index, item)


<a id="map"></a>

## map

<pre>
map(<a href="#map-f">f</a>, <a href="#map-arr">arr</a>)
</pre>

Apply a function `f` with each item of `arr` and return a list with all items where said funtion returns truthy.

Example:
  map(lambda i: i*2, [1, 2, 3]) // [2, 4, 6]


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="map-f"></a>f |  function to execute on every item.   |  none |
| <a id="map-arr"></a>arr |  list to iterate over.   |  none |

**RETURNS**

A new list with all mapped items.


<a id="occurs"></a>

## occurs

<pre>
occurs(<a href="#occurs-i">i</a>, <a href="#occurs-arr">arr</a>)
</pre>

Know, if an item `i` occurs in a list `arr`.

Example:
  occurs(2, [1, 2, 3]) // True
  occurs("foo", ["bar", "baz"]) // False


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="occurs-i"></a>i |  item to search for   |  none |
| <a id="occurs-arr"></a>arr |  list to search   |  none |

**RETURNS**

True or False


<a id="once"></a>

## once

<pre>
once(<a href="#once-f">f</a>, <a href="#once-arr">arr</a>)
</pre>

Check if exactly one item in list `arr` passes the given function `f`.

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="once-f"></a>f |  function to execute on every item,   |  none |
| <a id="once-arr"></a>arr |  list to iterate over,   |  none |

**RETURNS**

True or False


<a id="pick"></a>

## pick

<pre>
pick(<a href="#pick-f">f</a>, <a href="#pick-arr">arr</a>)
</pre>

Pick a particular item in list `arr` by a given function `f`.

Unlike `filter`, the `pick` method returns the first item _found_ by `f`.
If no item has passed `f`, the function will _fail_.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="pick-f"></a>f |  function to execute on every item,   |  none |
| <a id="pick-arr"></a>arr |  list to iterate over,   |  none |

**RETURNS**

item


<a id="some"></a>

## some

<pre>
some(<a href="#some-f">f</a>, <a href="#some-arr">arr</a>)
</pre>

Check if at least one item of `arr` passes function `f`.

Example:
  some(lambda i: i.endswith(".js"), ["app.js", "lib.ts"]) // True


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="some-f"></a>f |  function to execute on every item,   |  none |
| <a id="some-arr"></a>arr |  list to iterate over,   |  none |

**RETURNS**

True or False


