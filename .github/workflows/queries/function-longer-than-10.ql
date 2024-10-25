/**
 * @description Find functions that are longer than 10 lines
 * @kind problem
 * @id javascript/functions-too-long
 * @problem.severity recommendation
 */

import javascript

from Function fn
where fn.getNumLines() > 10
select fn, "Function is longer than 10 lines"
