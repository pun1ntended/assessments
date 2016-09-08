/**
 * Created by Sven on 9/8/16.
 */
function custom_reverse(string){
  new_string = []
  for (let i = 0; i < string.length; i++) {
    new_string.unshift(string[i])
  }
  return new_string.join("")
}