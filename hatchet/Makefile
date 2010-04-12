# Makefile for building Hatchet, a Haskell type checking tool
# requires ghc 5.02 or higher

HC         = ghc 

HC_OPTS    = -cpp -fglasgow-exts

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





# DO NOT DELETE: Beginning of Haskell dependencies
ParseLib.o : ParseLib.hs
HsSyn.o : HsSyn.lhs
HsParsePostProcess.o : HsParsePostProcess.hs
HsParsePostProcess.o : HsSyn.hi
HsParseMonad.o : HsParseMonad.lhs
HsParseMonad.o : HsSyn.hi
HsParseUtils.o : HsParseUtils.lhs
HsParseUtils.o : HsParseMonad.hi
HsParseUtils.o : HsSyn.hi
HsLexer.o : HsLexer.lhs
HsLexer.o : HsSyn.hi
HsLexer.o : HsParseUtils.hi
HsLexer.o : HsParseMonad.hi
HsParser.o : HsParser.hs
HsParser.o : HsParseUtils.hi
HsParser.o : HsLexer.hi
HsParser.o : HsParseMonad.hi
HsParser.o : HsSyn.hi
GetOpt.o : GetOpt.hs
Opts.o : Opts.hs
Opts.o : GetOpt.hi
Digraph.o : Digraph.lhs
FiniteMaps.o : FiniteMaps.hs
Pretty.o : Pretty.lhs
PPrint.o : PPrint.hs
PPrint.o : Pretty.hi
HsPretty.o : HsPretty.hs
HsPretty.o : Pretty.hi
HsPretty.o : HsSyn.hi
AnnotatedHsSyn.o : AnnotatedHsSyn.lhs
Utils.o : Utils.hs
Utils.o : PPrint.hi
Utils.o : Pretty.hi
Utils.o : HsPretty.hi
Utils.o : FiniteMaps.hi
Utils.o : AnnotatedHsSyn.hi
Env.o : Env.hs
Env.o : PPrint.hi
Env.o : Utils.hi
Env.o : AnnotatedHsSyn.hi
Env.o : FiniteMaps.hi
DependAnalysis.o : DependAnalysis.hs
DependAnalysis.o : Utils.hi
DependAnalysis.o : FiniteMaps.hi
DependAnalysis.o : Digraph.hi
TypeSynonyms.o : TypeSynonyms.hs
TypeSynonyms.o : Utils.hi
TypeSynonyms.o : AnnotatedHsSyn.hi
Representation.o : Representation.hs
Representation.o : FiniteMaps.hi
Representation.o : Utils.hi
Representation.o : PPrint.hi
Representation.o : Env.hi
Representation.o : AnnotatedHsSyn.hi
KindInference.o : KindInference.hs
KindInference.o : DependAnalysis.hi
KindInference.o : Utils.hi
KindInference.o : AnnotatedHsSyn.hi
KindInference.o : Env.hi
KindInference.o : Representation.hi
Type.o : Type.hs
Type.o : Representation.hi
Type.o : FiniteMaps.hi
Type.o : AnnotatedHsSyn.hi
HaskellPrelude.o : HaskellPrelude.hs
HaskellPrelude.o : Type.hi
HaskellPrelude.o : AnnotatedHsSyn.hi
HaskellPrelude.o : Representation.hi
TypeUtils.o : TypeUtils.hs
TypeUtils.o : KindInference.hi
TypeUtils.o : Utils.hi
TypeUtils.o : Type.hi
TypeUtils.o : HaskellPrelude.hi
TypeUtils.o : Representation.hi
TypeUtils.o : AnnotatedHsSyn.hi
Class.o : Class.hs
Class.o : FiniteMaps.hi
Class.o : HsPretty.hi
Class.o : PPrint.hi
Class.o : Type.hi
Class.o : Representation.hi
Class.o : TypeUtils.hi
Class.o : TypeSynonyms.hi
Class.o : KindInference.hi
Class.o : Utils.hi
Class.o : AnnotatedHsSyn.hi
Class.o : Env.hi
DataConsAssump.o : DataConsAssump.hs
DataConsAssump.o : Env.hi
DataConsAssump.o : KindInference.hi
DataConsAssump.o : FiniteMaps.hi
DataConsAssump.o : TypeUtils.hi
DataConsAssump.o : Utils.hi
DataConsAssump.o : HaskellPrelude.hi
DataConsAssump.o : Type.hi
DataConsAssump.o : Representation.hi
DataConsAssump.o : AnnotatedHsSyn.hi
TidyModule.o : TidyModule.hs
TidyModule.o : AnnotatedHsSyn.hi
Rename.o : Rename.hs
Rename.o : Utils.hi
Rename.o : TidyModule.hi
Rename.o : FiniteMaps.hi
Rename.o : AnnotatedHsSyn.hi
DeclsDepends.o : DeclsDepends.hs
DeclsDepends.o : Rename.hi
DeclsDepends.o : Utils.hi
DeclsDepends.o : DependAnalysis.hi
DeclsDepends.o : AnnotatedHsSyn.hi
Desugar.o : Desugar.hs
Desugar.o : TidyModule.hi
Desugar.o : TypeSynonyms.hi
Desugar.o : AnnotatedHsSyn.hi
Diagnostic.o : Diagnostic.hs
Diagnostic.o : PPrint.hi
Diagnostic.o : AnnotatedHsSyn.hi
Infix.o : Infix.hs
Infix.o : FiniteMaps.hi
Infix.o : TidyModule.hi
Infix.o : AnnotatedHsSyn.hi
MultiModuleBasics.o : MultiModuleBasics.hs
MultiModuleBasics.o : Representation.hi
MultiModuleBasics.o : AnnotatedHsSyn.hi
MultiModuleBasics.o : Rename.hi
MultiModuleBasics.o : ParseLib.hi
MultiModuleBasics.o : Class.hi
MultiModuleBasics.o : FiniteMaps.hi
MultiModuleBasics.o : KindInference.hi
MultiModuleBasics.o : Env.hi
MultiModule.o : MultiModule.hs
MultiModule.o : Class.hi
MultiModule.o : Representation.hi
MultiModule.o : Rename.hi
MultiModule.o : Utils.hi
MultiModule.o : AnnotatedHsSyn.hi
MultiModule.o : FiniteMaps.hi
MultiModule.o : HsSyn.hi
MultiModule.o : KindInference.hi
MultiModule.o : Env.hi
MultiModule.o : MultiModuleBasics.hi
SynConvert.o : SynConvert.hs
SynConvert.o : AnnotatedHsSyn.hi
SynConvert.o : HsSyn.hi
TypeSigs.o : TypeSigs.hs
TypeSigs.o : AnnotatedHsSyn.hi
TypeSigs.o : TypeUtils.hi
TypeSigs.o : Representation.hi
TypeSigs.o : KindInference.hi
TypeSigs.o : Type.hi
TypeSigs.o : Env.hi
TIMonad.o : TIMonad.hs
TIMonad.o : PPrint.hi
TIMonad.o : Env.hi
TIMonad.o : TypeSigs.hi
TIMonad.o : KindInference.hi
TIMonad.o : FiniteMaps.hi
TIMonad.o : Class.hi
TIMonad.o : Type.hi
TIMonad.o : Representation.hi
TIMonad.o : Diagnostic.hi
TIMonad.o : AnnotatedHsSyn.hi
AHsPretty.o : AHsPretty.hs
AHsPretty.o : Pretty.hi
AHsPretty.o : AnnotatedHsSyn.hi
TIMain.o : TIMain.hs
TIMain.o : DeclsDepends.hi
TIMain.o : Env.hi
TIMain.o : TypeSigs.hi
TIMain.o : TypeUtils.hi
TIMain.o : DependAnalysis.hi
TIMain.o : Rename.hi
TIMain.o : KindInference.hi
TIMain.o : FiniteMaps.hi
TIMain.o : Utils.hi
TIMain.o : HaskellPrelude.hi
TIMain.o : TIMonad.hi
TIMain.o : Class.hi
TIMain.o : Diagnostic.hi
TIMain.o : Type.hi
TIMain.o : Representation.hi
TIMain.o : AnnotatedHsSyn.hi
TIMain.o : AHsPretty.hi
TIMain.o : Desugar.hi
TIModule.o : TIModule.hs
TIModule.o : DeclsDepends.hi
TIModule.o : DependAnalysis.hi
TIModule.o : MultiModuleBasics.hi
TIModule.o : Type.hi
TIModule.o : Env.hi
TIModule.o : Class.hi
TIModule.o : TypeSigs.hi
TIModule.o : TidyModule.hi
TIModule.o : FiniteMaps.hi
TIModule.o : Utils.hi
TIModule.o : DataConsAssump.hi
TIModule.o : Representation.hi
TIModule.o : KindInference.hi
TIModule.o : Rename.hi
TIModule.o : TIMain.hi
TIModule.o : Desugar.hi
TIModule.o : PPrint.hi
TIModule.o : AHsPretty.hi
TIModule.o : SynConvert.hi
TIModule.o : AnnotatedHsSyn.hi
TIModule.o : Infix.hi
Main.o : Main.hs
Main.o : HsParsePostProcess.hi
Main.o : SynConvert.hi
Main.o : Representation.hi
Main.o : Type.hi
Main.o : FiniteMaps.hi
Main.o : Class.hi
Main.o : Utils.hi
Main.o : Opts.hi
Main.o : HaskellPrelude.hi
Main.o : Env.hi
Main.o : HsParseMonad.hi
Main.o : AnnotatedHsSyn.hi
Main.o : HsSyn.hi
Main.o : HsParser.hi
Main.o : TIModule.hi
Main.o : MultiModuleBasics.hi
Main.o : MultiModule.hi
# DO NOT DELETE: End of Haskell dependencies
