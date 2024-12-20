# Ada Array Iteration Bug

This repository demonstrates a subtle bug related to array iteration in Ada when using the `'Range` attribute.  The bug occurs when modifying the array's contents while iterating through its elements using a `for` loop based on `'Range`.  This can lead to unexpected skipping of elements in subsequent iterations.

The example shows a simple scenario where an array is iterated. If an element matches a specific value it is modified. Due to how `'Range` and for loops work in combination with array modification, elements can be skipped leading to unexpected outputs.

**Bug Description:** The provided Ada code attempts to modify an array element within a loop which iterates based on the `'Range` attribute. This results in elements being skipped and therefore not all elements are processed as expected.  The `'Range` attribute returns the bounds of the array, and modification while iterating may lead to unexpected results.

**Solution:**  The solution demonstrates the correct approach to avoid this issue by using a different approach for iteration to avoid the unexpected side effect of modifying the array during the iteration.  This ensures all array elements are correctly processed.