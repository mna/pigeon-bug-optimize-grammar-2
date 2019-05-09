PARSER_GRAMMAR := parser.peg
GENERATED_PARSER := gen_parser.go

DEBUG ?= 0
PIGEON_FLAGS =

# Use: $ DEBUG=1 make
# to generate the parser without any optimization.
ifneq ($(DEBUG),1)
	PIGEON_FLAGS += --optimize-grammar
endif

.PHONY: all
all: $(GENERATED_PARSER)

$(GENERATED_PARSER): $(PARSER_GRAMMAR)
	pigeon $(PIGEON_FLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -f $(GENERATED_PARSER)

