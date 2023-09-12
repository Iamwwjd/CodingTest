/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */
var reduce = function(nums, fn, init) {
  if (nums.length === 0) {
    return init;
  }
    
var accumulator = init;
  
  for (var i = 0; i < nums.length; i++) {
    accumulator = fn(accumulator, nums[i]);
  }
  
  return accumulator;
};