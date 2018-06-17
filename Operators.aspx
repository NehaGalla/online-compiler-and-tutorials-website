<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Operators.aspx.cs" Inherits="Operators" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
     <div class="content">
       <div class="container">
        <div class="navbar navbar-inverse navbar-fixed-left">
            <ul class="nav navbar-nav" style="padding-top:0px">
                <li><a href="DataTypes.aspx" style="color: White">Data Types</a></li>
                <li><a href="Variables.aspx" style="color: White">Variables</a></li>
                <li><a href="Constants.aspx" style="color: White">Constants</a></li>
                <li><a href="Storageclasses.aspx" style="color: White">Storage Classes</a></li>
                <li><a href="Operators.aspx" style="color: White">Operators</a></li>
                <li><a href="DecisionMaking.aspx" style="color: White">Decision Making</a></li>
                <li><a href="Loops.aspx" style="color: White">Loops</a></li>
                <li><a href="Functions.aspx" style="color: White">Funcitons</a></li>
                <li><a href="ScopeRules.aspx" style="color: White">Scope Rules</a></li>
                <li><a href="Arrays.aspx" style="color: White">Arrays</a></li>
                <li><a href="Pointers.aspx" style="color: White">Pointers</a></li>
                <li><a href="Strings.aspx" style="color: White">Strings</a></li>
                <li><a href="Structures.aspx" style="color: White">Structures</a></li>
                <li><a href="Union.aspx" style="color: White">Unions</a></li>
                <li><a href="BitFields.aspx" style="color: White">Bit Fields</a></li>
                <li><a href="TypeDef.aspx" style="color: White">Type Def</a></li>
                <li><a href="InputAndOutput.aspx" style="color: White">Input & Output</a></li>
                <li><a href="FileIO.aspx" style="color: White">File I/O</a></li>
                <li><a href="Preprocessor.aspx" style="color: White">Preprocessor</a></li>
                <li><a href="HeaderFiles.aspx" style="color: White">Header Files</a></li>
                <li><a href="TypeCasting.aspx" style="color: White">Type Casting</a></li>
                <li><a href="ErrorHandling.aspx" style="color: White">Error Handling</a></li>
                <li><a href="Recursion.aspx" style="color: White">Recursion</a></li>
                <li><a href="VariableArguments.aspx" style="color: White">Variable Arguments</a></li>
                <li><a href="MemoryManagement.aspx" style="color: White">Memory Management</a></li>
                <li><a href="CommandLineArguments.aspx" style="color: White">Command Line Arguments</a></li>
            </ul>
        </div>
      <div class="storage classes"  style="padding-left:320px;padding-top:120px">
          <hr />
          <h1>C - Operators</h1><hr />
<p>An operator is a symbol that tells the compiler to perform specific mathematical or logical functions. C language is rich in built-in operators and provides the following types of operators &minus;</p>
<ul class="list">
<li>Arithmetic Operators</li>
<li>Relational Operators</li>
<li>Logical Operators</li>
<li>Bitwise Operators</li>
<li>Assignment Operators</li>
<li>Misc Operators</li>
</ul>
<p>We will, in this chapter, look into the way each operator works.</p>
<h2>Arithmetic Operators</h2>
<p>The following table shows all the arithmetic operators supported by the C language. Assume variable <b>A</b> holds 10 and variable <b>B</b> holds 20 then &minus;</p>
<p><a href="/cprogramming/c_arithmetic_operators.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr>
<th style="width:10%">Operator</th>
<th style="width:55%;">Description</th>
<th>Example</th>
</tr>
<tr>
<td>&plus;</td>
<td>Adds two operands.</td>
<td>A &plus; B = 30</td>
</tr>
<tr>
<td>&minus;</td>
<td>Subtracts second operand from the first.</td>
<td>A &minus; B = -10</td>
</tr>
<tr>
<td>*</td>
<td>Multiplies both operands.</td>
<td>A * B = 200</td>
</tr>
<tr>
<td>/</td>
<td>Divides numerator by de-numerator.</td>
<td>B / A = 2</td>
</tr>
<tr>
<td>%</td>
<td>Modulus Operator and remainder of after an integer division.</td>
<td>B % A = 0</td>
</tr>
<tr>
<td>++</td>
<td>Increment operator increases the integer value by one.</td>
<td>A++ = 11</td>
</tr>
<tr>
<td>--</td>
<td>Decrement operator decreases the integer value by one.</td>
<td>A-- = 9</td>
</tr>
</table>
<h2>Relational Operators</h2>
<p>The following table shows all the relational operators supported by C. Assume variable <b>A</b> holds 10 and variable <b>B</b> holds 20 then &minus;</p>
<p><a href="/cprogramming/c_relational_operators.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr>
<th style="width:10%">Operator</th>
<th style="width:55%;">Description</th>
<th>Example</th>
</tr>
<tr>
<td>==</td>
<td>Checks if the values of two operands are equal or not. If yes, then the condition becomes true.</td>
<td>(A == B) is not true. </td>
</tr>
<tr>
<td>!=</td>
<td>Checks if the values of two operands are equal or not. If the values are not equal, then the condition becomes true.</td>
<td>(A != B) is true.</td>
</tr>
<tr>
<td>&gt;</td>
<td>Checks if the value of left  operand is greater than the value of right operand. If yes, then the condition becomes true.</td>
<td>(A &gt; B) is not true.</td>
</tr>
<tr>
<td>&lt;</td>
<td>Checks if the value of left operand is less than the value of right operand. If yes, then the condition becomes true.</td>
<td>(A &lt; B) is true.</td>
</tr>
<tr>
<td>&gt;=</td>
<td>Checks if the value of left operand is greater than or equal to the value of right operand. If yes, then the condition becomes true.</td>
<td>(A &gt;= B) is not true.</td>
</tr>
<tr>
<td>&lt;=</td>
<td>Checks if the value of left operand is less than or equal to the value of right operand. If yes, then the condition becomes true.</td>
<td>(A &lt;= B) is true.</td>
</tr>
</table>
<h2>Logical Operators</h2>
<p>Following table shows all the logical operators supported by C language. Assume variable <b>A</b> holds 1 and variable <b>B</b> holds 0, then &minus;</p>
<p><a href="/cprogramming/c_logical_operators.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr>
<th style="width:10%">Operator</th>
<th style="width:55%;">Description</th>
<th>Example</th>
</tr>
<tr>
<td>&amp;&amp;</td>
<td>Called Logical AND operator. If both the operands are non-zero, then the condition becomes true.</td>
<td>(A &amp;&amp; B) is false.</td>
</tr>
<tr>
<td>||</td>
<td>Called Logical OR Operator. If any of the two operands is non-zero, then the condition becomes true.</td>
<td>(A || B) is true.</td>
</tr>
<tr>
<td>!</td>
<td>Called Logical NOT Operator. It is used to reverse the logical state of its operand. If a condition is true, then Logical NOT operator will make it false.</td>
<td>!(A &amp;&amp; B) is true.</td>
</tr>
</table>
<h2>Bitwise Operators</h2>
<p>Bitwise operator works on bits and perform bit-by-bit operation. The truth tables for &amp;, |, and ^ is as follows &minus;</p>
<table class="table table-bordered">
<tr>
<th style="width:20%">p</th>
<th style="width:20%">q</th>
<th style="width:20%">p &amp; q</th>
<th style="width:20%">p | q</th>
<th style="width:20%">p ^ q</th>
</tr>
<tr>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr>
<td>0</td>
<td>1</td>
<td>0</td>
<td>1</td>
<td>1</td>
</tr>
<tr>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>1</td>
<td>0</td>
<td>0</td>
<td>1</td>
<td>1</td>
</tr>
</table>
<p>Assume A = 60 and B = 13 in binary format, they will be as follows &minus;</p>
<p>A = 0011 1100</p>
<p>B = 0000 1101</p>
<p>-----------------</p>
<p>A&amp;B = 0000 1100</p>
<p>A|B = 0011 1101</p>
<p>A^B = 0011 0001</p>
<p>~A = 1100 0011</p>
<p>The following table lists the bitwise operators supported by C. Assume variable 'A' holds 60 and variable 'B' holds 13, then &minus;</p>
<p><a href="/cprogramming/c_bitwise_operators.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr>
<th style="width:10%">Operator</th>
<th style="width:55%;">Description</th>
<th>Example</th>
</tr>
<tr>
<td>&amp;</td>
<td>Binary AND Operator copies a bit to the result if it exists in both operands. </td>
<td>(A &amp; B) = 12, i.e., 0000 1100</td>
</tr>
<tr>
<td>|</td>
<td>Binary OR Operator copies a bit if it exists in either operand.</td>
<td>(A | B) = 61, i.e., 0011 1101</td>
</tr>
<tr>
<td>^</td>
<td>Binary XOR Operator copies the bit if it is set in one operand but not both. </td>
<td>(A ^ B) = 49, i.e., 0011 0001</td>
</tr>
<tr>
<td>~</td>
<td>Binary Ones Complement Operator is unary and has the effect of 'flipping' bits.</td>
<td>(~A ) = -61, i.e,. 1100 0011 in 2's complement form.</td>
</tr>
<tr>
<td>&lt;&lt;</td>
<td>Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand.</td>
<td>A &lt;&lt; 2 = 240 i.e., 1111 0000</td>
</tr>
<tr>
<td>&gt;&gt;</td>
<td>Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand.</td>
<td>A &gt;&gt; 2 = 15 i.e., 0000 1111</td>
</tr>
</table>
<h2>Assignment Operators</h2>
<p>The following table lists the assignment operators supported by the C language &minus;</p>
<p><a href="/cprogramming/c_assignment_operators.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr>
<th style="width:10%">Operator</th>
<th style="width:55%;">Description</th>
<th>Example</th>
</tr>
<tr>
<td>=</td>
<td>Simple assignment operator. Assigns values from right side operands to left side operand</td>
<td>C = A + B will assign the value of A + B to C</td>
</tr>
<tr>
<td>+=</td>
<td>Add AND assignment operator. It adds the right operand to the left operand and assign the result to the left operand.</td>
<td>C += A is equivalent to C = C + A</td>
</tr>
<tr>
<td>-=</td>
<td>Subtract AND assignment operator. It subtracts the right operand from the left operand and assigns the result to the left operand.</td>
<td>C -= A is equivalent to C = C - A</td>
</tr>
<tr>
<td>*=</td>
<td>Multiply AND assignment operator. It multiplies the right operand with the left operand and assigns the result to the left operand.</td>
<td>C *= A is equivalent to C = C * A</td>
</tr>
<tr>
<td>/=</td>
<td>Divide AND assignment operator. It divides the left operand with the right operand and assigns the result to the left operand.</td>
<td>C /= A is equivalent to C = C / A</td>
</tr>
<tr>
<td>%=</td>
<td>Modulus AND assignment operator. It takes modulus using two operands and assigns the result to the left operand.</td>
<td>C %= A is equivalent to C = C % A</td>
</tr>
<tr>
<td>&lt;&lt;=</td>
<td>Left shift AND assignment operator.</td>
<td>C &lt;&lt;= 2 is same as  C = C &lt;&lt; 2</td>
</tr>
<tr>
<td>&gt;&gt;=</td>
<td>Right shift AND assignment operator.</td>
<td>C &gt;&gt;= 2 is same as  C = C &gt;&gt; 2</td>
</tr>
<tr>
<td>&amp;=</td>
<td>Bitwise AND assignment operator.</td>
<td>C &amp;= 2 is same as  C = C &amp; 2</td>
</tr>
<tr>
<td>^=</td>
<td>Bitwise exclusive OR and assignment operator.</td>
<td>C ^= 2 is same as  C = C ^ 2</td>
</tr>
<tr>
<td>|=</td>
<td>Bitwise inclusive OR and assignment operator.</td>
<td>C |= 2 is same as  C = C | 2</td>
</tr>
</table>
<h2>Misc Operators &map; sizeof &amp; ternary</h2>
<p>Besides the operators discussed above, there are a few other important operators including <b>sizeof</b> and <b>? :</b> supported by the C Language.</p>
<p><a href="/cprogramming/c_sizeof_operator.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr>
<th style="width:10%">Operator</th>
<th style="width:55%;">Description</th>
<th>Example</th>
</tr>
<tr>
<td>sizeof()</td>
<td>Returns the size of a variable.</td>
<td>sizeof(a), where a is integer, will return 4.</td>
</tr>
<tr>
<td>&amp;</td>
<td>Returns the address of a variable.</td>
<td>&amp;a; returns the actual address of the variable.</td>
</tr>
<tr>
<td>*</td>
<td>Pointer to a variable.</td>
<td>*a;</td>
</tr>
<tr>
<td>? :</td>
<td>Conditional Expression.</td>
<td>If Condition is true ? then value X : otherwise value Y</td>
</tr>
</table>
<h2>Operators Precedence in C</h2>
<p>Operator precedence determines the grouping of terms in an expression and decides how an expression is evaluated. Certain operators have higher precedence than others; for example, the multiplication operator has a higher precedence than the addition operator.</p>
<p>For example, x = 7 + 3 * 2; here, x is assigned 13, not 20 because operator * has a higher precedence than +, so it first gets multiplied with 3*2 and then adds into 7.</p>
<p>Here, operators with the highest precedence appear at the top of the table, those with the lowest appear at the bottom. Within an expression, higher precedence operators will be evaluated first.</p>
<p><a href="/cprogramming/c_operators_precedence.htm">Show Examples</a></p>
<table class="table table-bordered">
<tr> 
<th>Category</th> 
<th>Operator</th>
<th>Associativity</th> 
</tr> 
<tr> 
<td>Postfix</td>
<td>() [] -&gt; . ++ - -</td> 
<td>Left to right</td> 
</tr>
<tr> 
<td>Unary</td> 
<td>+  -  !  ~  ++  - -  (type)*  &amp; sizeof</td> 
<td>Right to left</td>
</tr> 
<tr> 
<td>Multiplicative</td> 
<td>*  /  %</td>
<td>Left to right</td> 
</tr> 
<tr> 
<td>Additive</td>
<td>+  -</td> 
<td>Left to right</td> 
</tr>
<tr> 
<td>Shift</td> 
<td>&lt;&lt; &gt;&gt;</td> 
<td>Left to right</td> 
</tr> 
<tr> 
<td>Relational</td>
<td>&lt; &lt;=  &gt; &gt;=</td> 
<td>Left to right</td> 
</tr>
<tr> 
<td>Equality</td> 
<td>==  !=</td> 
<td>Left to right</td> 
</tr> 
<tr> 
<td>Bitwise AND</td>
<td>&amp;</td> 
<td>Left to right</td> 
</tr> 
<tr> 
<td>Bitwise XOR</td> 
<td>^</td> 
<td>Left to right</td>
</tr> 
<tr> 
<td>Bitwise OR</td> 
<td>|</td> 
<td>Left to right</td>
</tr> 
<tr> 
<td>Logical AND</td>
<td>&amp;&amp;</td> 
<td>Left to right</td>
</tr>
<tr>
<td>Logical OR</td> 
<td>||</td> 
<td>Left to right</td>
</tr> 
<tr> 
<td>Conditional</td>
<td>?:</td> 
<td>Right to left</td> 
</tr>
<tr>
<td>Assignment</td> 
<td>=  +=  -=  *=  /=  %=&gt;&gt;=  &lt;&lt;=  &amp;=  ^= |=</td>
<td>Right to left</td>
</tr>
<tr> 
<td>Comma</td> 
<td>,</td> 
<td>Left to right</td>
</tr> 
</table>
<hr />

          </div></div>
</asp:Content>

