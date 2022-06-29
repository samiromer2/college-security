// C# code to implement Vigenere Cipher
using System;
	
class GFG
{

// This function generates the key in
// a cyclic manner until it's length isi'nt
// equal to the length of original text
static String generateKey(String str, String key)
{
	int x = str.Length;

	for (int i = 0; ; i++)
	{
		if (x == i)
			i = 0;
		if (key.Length == str.Length)
			break;
		key+=(key[i]);
	}
	return key;
}

// This function returns the encrypted text
// generated with the help of the key
static String cipherText(String str, String key)
{
	String cipher_text="";

	for (int i = 0; i < str.Length; i++)
	{
		// converting in range 0-25
		int x = (str[i] + key[i]) %26;

		// convert into alphabets(ASCII)
		x += 'A';

		cipher_text+=(char)(x);
	}
	return cipher_text;
}

// This function decrypts the encrypted text
// and returns the original text
static String originalText(String cipher_text, String key)
{
	String orig_text="";

	for (int i = 0 ; i < cipher_text.Length &&
							i < key.Length; i++)
	{
		// converting in range 0-25
		int x = (cipher_text[i] -
					key[i] + 26) %26;

		// convert into alphabets(ASCII)
		x += 'A';
		orig_text+=(char)(x);
	}
	return orig_text;
}

// Driver code
public static void Main(String[] args)
{
	String str = "GEEKSFORGEEKS";
	String keyword = "AYUSH";

	String key = generateKey(str, keyword);
	String cipher_text = cipherText(str, key);

	Console.WriteLine("Ciphertext : "
		+ cipher_text + "\n");

	Console.WriteLine("Original/Decrypted Text : "
		+ originalText(cipher_text, key));
	}
}

/* This code contributed by PrinciRaj1992 */
