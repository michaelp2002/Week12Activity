/**
 * @description Find all public methods that are called by tests
 * @kind problem
 * @id javascript/public-methods-called-by-tests
 * @problem.severity recommendation
 */

import javascript

predicate isPublicMethod(Function fn) {
  fn.isExported()
}

from Function fn, FunctionCall call
where isPublicMethod(fn) and 
      call.getTarget() = fn and 
      call.getEnclosingFunction().getName().matches("%test%")
select fn, "Public method is called by a test"
