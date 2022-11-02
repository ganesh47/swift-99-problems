#!/usr/bin/env bash
for file in .build/debug/List.build/*.o
do
  objectArg="${objectArg} --object $file"
done
if [[ "$OSTYPE" == "darwin"* ]]; then
  prefixCmd="xcrun"
fi
${prefixCmd} llvm-cov show --format=html --instr-profile .build/debug/codecov/default.profdata ${objectArg} > code-coverage-report.html


export COVERAGE_TEXT=`${prefixCmd} llvm-cov report --instr-profile .build/debug/codecov/default.profdata ${objectArg}`
export COMPILER_WARNINGS=`swift build | grep warning`
cat README.md.template | envsubst > README.md