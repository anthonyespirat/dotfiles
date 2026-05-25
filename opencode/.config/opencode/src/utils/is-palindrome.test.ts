import { isPalindrome } from './is-palindrome';

console.assert(isPalindrome('A man, a plan, a canal: Panama'), 'Test Case 1 Failed');
console.assert(isPalindrome('race a car') === false, 'Test Case 2 Failed');
console.assert(isPalindrome(' '), 'Test Case 3 Failed');
console.assert(isPalindrome('level'), 'Test Case 4 Failed');
console.assert(isPalindrome('hello') === false, 'Test Case 5 Failed');
console.assert(isPalindrome('121'), 'Test Case 6 Failed');

console.log('All test cases passed!');
