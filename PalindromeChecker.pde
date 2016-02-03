public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++){
    if(palindrome(justLetters(noSpaces(lines[i])).toLowerCase())==true)
    {
      println(lines[i] + " IS a palidrome.");
    } 
      else 
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public String noSpaces(String sWord)
{
  String s = "";
  for (int i = 0; i < sWord.length(); i++)
  {
      if (sWord.charAt(i) != ' ')
          s = s + sWord.charAt(i);
  }
  return s;      
}

public String justLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      s += sString.substring(i, i+1);
    }
  return s;
}

public String backwardsWord(String uWord)
{
  String sNew = "";
  for (int a = uWord.length()-1; a >= 0; a--)
  {
    sNew += (char)uWord.charAt(a);
  }
  return justLetters(noSpaces(sNew)).toLowerCase();
}

public boolean palindrome(String word)
{
  if(word.equals(backwardsWord(word)))
    return true;
  return false;
}

