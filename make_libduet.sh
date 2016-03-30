make
echo "************* Linking libduet.so: *************"
cd _build/duet/src/
ocamlfind ocamlopt -output-obj -g -linkpkg -package Z3 -package batteries -package apron.polkaMPQ -package apron.boxMPQ -package apron.octMPQ -package deriving -package ocamlgraph -package cil -package cil.default-features -o libduet.so ../../apak/apakEnum.cmx ../../apak/apak.cmx ../../ark/ark.cmx core.cmx afg.cmx ast.cmx hlir.cmx report.cmx cfgIr.cmx cmdLine.cmx pa.cmx call.cmx solve.cmx ai.cmx config.cmx datalog.cmx inline.cmx bddpa.cmx interproc.cmx cra.cmx translateCil.cmx cbpAst.cmx cbpLex.cmx cbpParse.cmx translateCbp.cmx eqLogic.cmx lockLogic.cmx exponential.cmx live.cmx dg.cmx aliasLogic.cmx concDep.cmx newton_interface.cmx dominator.cmx inferFrames.cmx dependence.cmx safety.cmx duet.cmx || exit 1
cd ../../..
echo "****** Successful end of make_libduet.sh ******"