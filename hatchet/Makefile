# Makefile for building Hatchet, a Haskell type checking tool
# requires ghc 5.02 or higher

HC         = ghc 

HC_OPTS    = -cpp -fglasgow-exts -package lang 

SRCS       = AHsPretty.hs \
             AnnotatedHsSyn.lhs  \
             Class.hs \
             DataConsAssump.hs \
             DeclsDepends.hs \
             DependAnalysis.hs \
             Desugar.hs \
             Diagnostic.hs \
             Digraph.lhs \
             Env.hs \
             FiniteMaps.hs  \
             GetOpt.hs \
             HaskellPrelude.hs  \
             HsLexer.lhs \
             HsParseMonad.lhs \
             HsParsePostProcess.hs  \
             HsParseUtils.lhs       \
             HsParser.hs       \
             HsPretty.hs \
             HsSyn.lhs \
             Infix.hs \
             KindInference.hs \
             Main.hs \
             MultiModule.hs \
             MultiModuleBasics.hs \
             Opts.hs           \
             PPrint.hs              \
             ParseLib.hs \
             Pretty.lhs  \
             Representation.hs \
             Rename.hs \
             SynConvert.hs \
             TIMain.hs  \
             TIModule.hs \
             TIMonad.hs \
             TidyModule.hs \
             Type.hs \
             TypeSigs.hs \
             TypeSynonyms.hs \
             TypeUtils.hs \
             Utils.hs


OBJS       = AHsPretty.o \
             AnnotatedHsSyn.o  \
             Class.o \
             DataConsAssump.o \
             DeclsDepends.o \
             DependAnalysis.o \
             Desugar.o \
             Diagnostic.o \
             Digraph.o \
             Env.o \
             FiniteMaps.o  \
             GetOpt.o \
             HaskellPrelude.o  \
             HsLexer.o \
             HsParseMonad.o \
             HsParsePostProcess.o  \
             HsParseUtils.o       \
             HsParser.o       \
             HsPretty.o \
             HsSyn.o \
             Infix.o \
             KindInference.o \
             Main.o \
             MultiModule.o \
             MultiModuleBasics.o \
             Opts.o           \
             PPrint.o              \
             ParseLib.o \
             Pretty.o  \
             Representation.o \
             Rename.o \
             SynConvert.o \
             TIMain.o  \
             TIModule.o \
             TIMonad.o \
             TidyModule.o \
             Type.o \
             TypeSigs.o \
             TypeSynonyms.o \
             TypeUtils.o \
             Utils.o

# by default the executable is called tc
EXE        = hatch 

HAPPY      = happy
HAPPYSRC   = HsParser.ly
HAPPYFLAGS = --ghc

.SUFFIXES : .o .hi .lhs .hs .hc .s

# this is so we don't recompile every time (if nothing's changed)!
all: ti

ti: $(OBJS)         
	$(HC) $(HC_OPTS) -o $(EXE) $(OBJS)
	chmod g+x $(EXE)

# -Onot turns off Optimisations, DON't try to compile HsParser.hs with -O

HsParser.o :
	$(HC) $(HC_OPTS) -H80M -Onot -c HsParser.hs


# Standard suffix rules
.o.hi:
	@:

.lhs.o:
	$(HC) -c $< $(HC_OPTS)

.hs.o:
	$(HC) -c $< $(HC_OPTS)

# target for making the haskell parser from the happy input

hsparser :
	$(HAPPY) $(HAPPYFLAGS) $(HAPPYSRC) --info


depend :
	ghc -M $(HC_OPTS) $(SRCS)

clean :
	/bin/rm -fr *.o

clobber : clean
	/bin/rm -fr $(EXE) *.hi





