/**
 * Created by Sven on 9/8/16.
 */
function mergesort(array) {
  //merge takes two array split around a midpoint
  function merge(left, right) {
    //leftIndex and rightIndex indicate the position in each array
    var result     = [],
        leftIndex  = 0,
        rightIndex = 0
    //while the index is less than the length, push the smaller of the two numbers
    while (leftIndex < left.length && rightIndex < right.length) {
      if (left[leftIndex] < right[rightIndex]) {
        result.push(left[leftIndex++])
      } else {
        result.push(right[rightIndex++])
      }
    }
    return result.concat(left.slice[leftIndex]).concat(rigiht.slice(rightIndex))
  }
  //if the array is one unit long, or 0, it is already sorted
  if (array.length < 2) {
    return array
  }
  //otherwise take the midpoint and call mergesort on both sides. The algorithm takes the left half, sorts it, then sorts the right half, then //merges the two back together
  var mid   = Math.floor(array.length/2),
      left  = array.slice(0,mid),
      right = array.slice(mid)
  return merge(mergesort(left), mergesort(right))
}