class Arithmetic
{
public static void main(String[] args)
{
try
{
int a=10/0;
}
catch (ArithmeticException e)
{
System.out.println("Error:"+e.getMessage());
}
finally
{
System.out.println("finally exception done");
}
}
}