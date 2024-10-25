/**
 * @description Find test functions that call a function named "pressActionKey"
 * @kind problem
 * @id javascript/tests-calling-pressActionKey
 * @problem.severity recommendation
 */

import javascript

from FunctionCall call, Function fn
where call.getTarget().getName() = "pressActionKey" and 
      fn.getName().matches("%test%")  // Assumes test functions have 'test' in their name or you could use other naming patterns as needed
select fn, "Test function calls pressActionKey"
