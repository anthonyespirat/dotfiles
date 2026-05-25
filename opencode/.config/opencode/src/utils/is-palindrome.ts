export const isPalindrome = (str: string): boolean => {
  const cleanStr = str.toLowerCase().replace(/[\W_]/g, '');
  const reversedStr = cleanStr.split('').reverse().join('');
  return cleanStr === reversedStr;
};
