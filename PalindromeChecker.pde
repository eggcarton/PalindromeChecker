public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String x = noSpaces(word);
  //String y = onlyLetters(x);  
  String z = noCaps(x);
  if (z.equals(reverse(z)))
    return true;
  else return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i>=0; i--)
    sNew = sNew + str.substring(i, i+1);
  return sNew;
}
public String noSpaces(String str)
{
  String x = new String();
  for (int i = 0; i < str.length(); i++)
    if (!str.substring(i, i+1).equals(" "))
      x = x +str.substring(i, i+1);
  return x;
}
public String onlyLetters(String str)
{
  String y = new String();
  for (int i = 0; i < str.length(); i++)
    if (Character.isLetter(str.charAt(i)))      
    y = y + str.substring(i, i+1);
  return y;
}
public String noCaps(String str) {
  return str.toLowerCase();
}