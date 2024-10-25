/**
 * @description Find all exported functions that are not called by any test
 * @kind problem
 * @id javascript/exported-functions-not-called-by-tests
 * @problem.severity recommendation
 */

import javascript

predicate isExportedFunction(Function fn) {
  fn.isExported()
}

from Function fn
where isExportedFunction(fn) and 
      not exists(FunctionCall call |
        call.getTarget() = fn and 
        call.getEnclosingFunction().getName().matches("%test%")
      )
select fn, "Exported function is not called by any test"
