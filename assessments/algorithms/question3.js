
function isPalindrome(string) {
  if (string.length > 1) {
    if (string.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "").replace(" ", "").split("").first == string.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "").replace(" ", "").split("").last) {
      return isPalindrome(string.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "").replace(" ", "").slice(1, string.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "").replace(" ", "").length - 2))
    } else {
      return false
    }
  } else {
    return string == string
  }

}
