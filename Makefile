REBAR=./rebar3

all: compile

compile:
	$(REBAR) compile

clean:
	$(REBAR) clean

bench: compile
	./exomler_bench test_01.xml 1000
	./exomler_bench test_02.xml 1000
	./exomler_bench test_03.xml 1000
	./exomler_bench test_04.xml 1000
