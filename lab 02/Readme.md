# Task 01

1) Create first file of name 19f_XXXX.txt use touch command to create file.

2) Create second file of your name use touch command.

3) To merge data of two files, use cat command to append first file data into second as.

```
 catfirst_file.txt >> second_file.txt.
```

![](/1.png)

 4) To display first two lines of file1 use the following command:

```ubuntu
 head -2 filename 
```

![](/2.png)

5) To display last 2 lines of file2 use following command:

```ubuntu
tail -2 filename
```

![](/3.png)

  6) To find your name in file use following command:

```ubuntu
 grep -r ‘your name’ filename
```

![](/7.png)

7) To grant permission of execute to the second file group use the following command:

```
chmod 010 filename2
```

![](/5.png)

8) To remove write permission from the owner use the following command.

```
chown 600 filename2
```

![](/14.png)

·        
To find your own location use following command to find location from root:

 **pwd ** (Hit Enter Button).

![](/8.png)

·        
To find all files present on desktop, go on desktop use following command.

```ubuntu
ls -l
```

![](/9.png)

To create a file for personal picture, use the following command.

```
mkdir (foldername)
```

![](/10.png)

To display current time, use the command.

```
date (press enter)
```

![](/11.png)

To display a thank you message use command: **echo ‘Thank You**.

![](/12.png)



# Task 2

To create file use touch command name as 19f-XXXX_OS-lab_rules.txt.

Using gedit command open the writeable file and write all rules in it and save it.

To edit the read, write information like this (-rwx r-x r--) use the following command: **chmod 111101100 ** filename. Convert this binary code to decimal and then run the command: **chmod754** file name. 

![](/13.png)

Check the permission by writing the command.

```
ls -l
```

To append all result come by ls command use command.

```
ls -l >> filename
```

![](/lst.png)

