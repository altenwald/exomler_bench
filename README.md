XML Benchmark
=============

This benchmark is specific giving a try with 4 different documents and testing 6 different XML libraries available for Erlang/OTP.

These libraries are:

- [xmerl](http://erlang.org/doc/man/xmerl.html) Available inside of Erlang/OTP.
- [erlsom](https://github.com/willemdj/erlsom) XML parser for Erlang (100% Erlang/OTP)
- [exomler](https://github.com/altenwald/exomler) Fast XML parser for Erlang (100% Erlang/OTP)
- [fast_xml](https://github.com/processone/fast_xml) Fast Expat based Erlang XML parsing library (81% Erlang/OTP, 15% C, 3% Elixir)
- [exml](https://github.com/esl/exml) XML parsing library in Erlang (66% Erlang/OTP, 29% C)
- [mochiweb](https://github.com/mochi/mochiweb) Mochiweb is an Erlang library for building lightweight HTTP servers (but it has HTML parser we can use for XML documents) (100% Erlang/OTP).

The results in a MacBook Pro (2017) 2,9 GHz Intel Core i7, 16GB 2133MHz LPDDR3 running macOS High Sierra (10.13.1):

```
./exomler_bench test_01.xml 1000
-------------------------------------------------------
     parser    min time  total time    memory     speed
-------------------------------------------------------
      xmerl      104mcs      185mls      86KB     1MB/s
     erlsom       26mcs      133mls      25KB     2MB/s
    exomler       18mcs       79mls      28KB     3MB/s
   fast_xml       12mcs       15mls      21KB    19MB/s
       exml        3mcs      111mls      16KB     2MB/s
   mochiweb       38mcs      109mls       8KB     2MB/s
-------------------------------------------------------
./exomler_bench test_02.xml 1000
-------------------------------------------------------
     parser    min time  total time    memory     speed
-------------------------------------------------------
      xmerl      236mcs      370mls     172KB     2MB/s
     erlsom       51mcs      185mls     106KB     5MB/s
    exomler       49mcs      134mls      21KB     8MB/s
   fast_xml       36mcs       46mls      66KB    23MB/s
       exml        3mcs      134mls      16KB     8MB/s
   mochiweb      114mcs      188mls      66KB     5MB/s
-------------------------------------------------------
./exomler_bench test_03.xml 1000
-------------------------------------------------------
     parser    min time  total time    memory     speed
-------------------------------------------------------
      xmerl      943mcs     1564mls     673KB     3MB/s
     erlsom      310mcs      585mls     106KB     8MB/s
    exomler      323mcs      525mls     139KB     8MB/s
   fast_xml      197mcs      286mls     449KB    16MB/s
       exml        3mcs      222mls      16KB    21MB/s
   mochiweb      615mcs      801mls     278KB     5MB/s
-------------------------------------------------------
./exomler_bench test_04.xml 1000
-------------------------------------------------------
     parser    min time  total time    memory     speed
-------------------------------------------------------
      xmerl     2326mcs     2806mls    2849KB     7MB/s
     erlsom     1145mcs     1512mls     673KB    14MB/s
    exomler      271mcs      449mls     139KB    47MB/s
   fast_xml      206mcs      294mls     277KB    72MB/s
       exml        5mcs      217mls      28KB    98MB/s
   mochiweb     1211mcs     1468mls     192KB    14MB/s
-------------------------------------------------------
```
