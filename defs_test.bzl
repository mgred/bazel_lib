"Test suite for defs.bzl"

load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//:defs.bzl", "filter", "find", "map")

def find_test_impl(ctx):
    env = unittest.begin(ctx)
    asserts.equals(env, find(2, [1, 2, 3]), True)
    asserts.equals(env, find("foo", ["bar", "baz"]), False)
    return unittest.end(env)

def filter_test_impl(ctx):
    env = unittest.begin(ctx)
    asserts.equals(env, filter(lambda i: i.endswith(".js"), ["app.ts", "app.js", "lib.ts", "lib.js"]), ["app.js", "lib.js"])
    return unittest.end(env)

def map_test_impl(ctx):
    env = unittest.begin(ctx)
    asserts.equals(env, map(lambda i: i * 2, [1, 2, 3]), [2, 4, 6])
    return unittest.end(env)

_find_test = unittest.make(find_test_impl)
_filter_test = unittest.make(filter_test_impl)
_map_test = unittest.make(map_test_impl)

def defs_test_suite(name):
    unittest.suite(name, _find_test, _filter_test, _map_test)
