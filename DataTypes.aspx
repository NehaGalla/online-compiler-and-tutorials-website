<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="DataTypes.aspx.cs" Inherits="DataTypes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
    <!--container div-->
    <div class="content">
        <div class="container">
            <div class="navbar navbar-inverse navbar-fixed-left">
                <ul class="nav navbar-nav" style="padding-top: 0px">
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
            <div class="datatypes" style="padding-left: 320px; padding-top: 120px">

                <h1> Data Types</h1>
                <div class="links" style="left:1000px;position:absolute;top:150px" >
                   
                     <a href="codearea.aspx" style="color: black;font-size:20px;border:2px solid gray">practice online</a>

                    <a href="c%20quiz/data_types.aspx" style="color: black;font-size:20px;border:2px solid gray">Check your level</a>
                        
                        
                </div>
                <div class="clearer"></div>
                <hr />
                <p>Data types in c refer to an extensive system used for declaring variables or functions of different types. The type of a variable determines how much space it occupies in storage and how the bit pattern stored is interpreted.</p>
                <p>The types in C can be classified as follows &minus;</p>
                <table class="table table-bordered">
                    <tr>
                        <th>S.N.</th>
                        <th style="text-align: center;">Types &amp; Description</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>
                            <p><b>Basic Types</b></p>
                            <p>They are arithmetic types and are further classified into: (a) integer types and (b) floating-point types.</p>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                            <p><b>Enumerated types</b></p>
                            <p>They are again arithmetic types and they are used to define variables that can only assign certain discrete integer values throughout the program.</p>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                            <p><b>The type void</b></p>
                            <p>The type specifier <i>void</i> indicates that no value is available.</p>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>
                            <p><b>Derived types</b></p>
                            <p>They include (a) Pointer types, (b) Array types, (c) Structure types, (d) Union types and (e) Function types.</p>
                        </td>
                    </tr>
                </table>
                <p>The array types and structure types are referred collectively as the aggregate types. The type of a function specifies the type of the function's return value. We will see the basic types in the following section, where as other types will be covered in the upcoming chapters.</p>
                <h2>Integer Types</h2>
                <p>The following table provides the details of standard integer types with their storage sizes and value ranges &minus;</p>
                <table class="table table-bordered">
                    <tr>
                        <th style="width: 23%;">Type</th>
                        <th style="width: 20%;">Storage size</th>
                        <th>Value range</th>
                    </tr>
                    <tr>
                        <td>char</td>
                        <td>1 byte</td>
                        <td>-128 to 127 or 0 to 255</td>
                    </tr>
                    <tr>
                        <td>unsigned char</td>
                        <td>1 byte</td>
                        <td>0 to 255</td>
                    </tr>
                    <tr>
                        <td>signed char</td>
                        <td>1 byte</td>
                        <td>-128 to 127</td>
                    </tr>
                    <tr>
                        <td>int</td>
                        <td>2 or 4 bytes</td>
                        <td>-32,768 to 32,767 or -2,147,483,648 to 2,147,483,647</td>
                    </tr>
                    <tr>
                        <td>unsigned int</td>
                        <td>2 or 4 bytes</td>
                        <td>0 to 65,535 or 0 to 4,294,967,295</td>
                    </tr>
                    <tr>
                        <td>short</td>
                        <td>2 bytes</td>
                        <td>-32,768 to 32,767</td>
                    </tr>
                    <tr>
                        <td>unsigned short</td>
                        <td>2 bytes</td>
                        <td>0 to 65,535</td>
                    </tr>
                    <tr>
                        <td>long</td>
                        <td>4 bytes</td>
                        <td>-2,147,483,648 to 2,147,483,647</td>
                    </tr>
                    <tr>
                        <td>unsigned long</td>
                        <td>4 bytes</td>
                        <td>0 to 4,294,967,295</td>
                    </tr>
                </table>
                <p>To get the exact size of a type or a variable on a particular platform, you can use the <b>sizeof</b> operator. The expressions <i>sizeof(type)</i> yields the storage size of the object or type in bytes. Given below is an example to get the size of int type on any machine &minus;</p>
                <pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
#include &lt;limits.h&gt;

int main() {

   printf("Storage size for int : %d \n", sizeof(int));
   
   return 0;
}
</pre>
                <p>When you compile and execute the above program, it produces the following result on Linux &minus;</p>
                <pre class="result notranslate">
Storage size for int : 4
</pre>
                <h2>Floating-Point Types</h2>
                <p>The following table provide the details of standard floating-point types with storage sizes and value ranges and their precision &minus;</p>
                <table class="table table-bordered">
                    <tr>
                        <th>Type</th>
                        <th>Storage size</th>
                        <th>Value range</th>
                        <th>Precision</th>
                    </tr>
                    <tr>
                        <td>float</td>
                        <td>4 byte</td>
                        <td>1.2E-38 to 3.4E+38</td>
                        <td>6 decimal places</td>
                    </tr>
                    <tr>
                        <td>double</td>
                        <td>8 byte</td>
                        <td>2.3E-308 to 1.7E+308</td>
                        <td>15 decimal places</td>
                    </tr>
                    <tr>
                        <td>long double</td>
                        <td>10 byte</td>
                        <td>3.4E-4932 to 1.1E+4932</td>
                        <td>19 decimal places</td>
                    </tr>
                </table>
                <p>The header file float.h defines macros that allow you to use these values and other details about the binary representation of real numbers in your programs. The following example prints the storage space taken by a float type and its range values &minus;</p>
                <pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
#include &lt;float.h&gt;

int main() {

   printf("Storage size for float : %d \n", sizeof(float));
   printf("Minimum float positive value: %E\n", FLT_MIN );
   printf("Maximum float positive value: %E\n", FLT_MAX );
   printf("Precision value: %d\n", FLT_DIG );
   
   return 0;
}
</pre>
                <p>When you compile and execute the above program, it produces the following result on Linux &minus;</p>
                <pre class="result notranslate">
Storage size for float : 4
Minimum float positive value: 1.175494E-38
Maximum float positive value: 3.402823E+38
Precision value: 6
</pre>
                <h2>The void Type</h2>
                <p>The void type specifies that no value is available. It is used in three kinds of situations &minus;</p>
                <table class="table table-bordered">
                    <tr>
                        <th>S.N.</th>
                        <th style="text-align: center;">Types &amp; Description</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>
                            <p><b>Function returns as void</b></p>
                            <p>There are various functions in C which do not return any value or you can say they return void. A function with no return value has the return type as void. For example, <b>void exit (int status);</b></p>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                            <p><b>Function arguments as void</b></p>
                            <p>There are various functions in C which do not accept any parameter. A function with no parameter can accept a void. For example, <b>int rand(void);</b></p>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                            <p><b>Pointers to void</b></p>
                            <p>A pointer of type void * represents the address of an object, but not its type. For example, a memory allocation function <b>void *malloc( size_t size );</b> returns a pointer to void which can be casted to any data type.</p>
                        </td>
                    </tr>
                </table>
                <hr />
              <div id="page-wrapper">
                    <p id="msg"></p>

                    <div class="option">
                        <label for="voice">Voice</label>
                        <select name="voice" id="voice"></select>
                    </div>
                    <div class="option">
                        <label for="volume">Volume</label>
                        <input type="range" min="0" max="1" step="0.1" name="volume" id="volume" value="1">
                    </div>
                    <div class="option">
                        <label for="rate">Rate</label>
                        <input type="range" min="0.1" max="10" step="0.1" name="rate" id="rate" value="0.75">
                    </div>
                    <div class="option">
                        <label for="pitch">Pitch</label>
                        <input type="range" min="0" max="2" step="0.1" name="pitch" id="pitch" value="1">
                    </div>
                    <input type="button" id="startbtn" style="margin: 30px;" value="read" />
                    <input type="button" id="restartBtn" style="margin: 30px;" value="pause">
                </div>

            </div>

        </div>
        <script type="text/javascript">
            var supportMsg = document.getElementById('msg');

            if ('speechSynthesis' in window) {
                supportMsg.innerHTML = 'Your browser supports speech synthesis.';
            } else {
                supportMsg.innerHTML = 'Sorry your browser <strong>does not support</strong> speech synthesis.<br>Try this in <a href="http://www.google.co.uk/intl/en/chrome/browser/canary.html">Chrome Canary</a>.';
                supportMsg.classList.add('not-supported');
            }


            // Get the 'speak' button
            var button = document.getElementById('startbtn');

            // Get the text input element.
            var speechMsgInput = document.getElementById('speech-msg');

            // Get the voice select element.
            var voiceSelect = document.getElementById('voice');

            // Get the attribute controls.
            var volumeInput = document.getElementById('volume');
            var rateInput = document.getElementById('rate');
            var pitchInput = document.getElementById('pitch');


            // Fetch the list of voices and populate the voice options.
            function loadVoices() {
                // Fetch the available voices.
                var voices = speechSynthesis.getVoices();

                // Loop through each of the voices.
                voices.forEach(function (voice, i) {
                    // Create a new option element.
                    var option = document.createElement('option');

                    // Set the options value and text.
                    option.value = voice.name;
                    option.innerHTML = voice.name;

                    // Add the option to the voice selector.
                    voiceSelect.appendChild(option);
                });
            }

            // Execute loadVoices.
            loadVoices();

            // Chrome loads voices asynchronously.
            window.speechSynthesis.onvoiceschanged = function (e) {
                loadVoices();
            };


            // Create a new utterance for the specified text and add it to
            // the queue.
            function speak(text) {
                // Create a new instance of SpeechSynthesisUtterance.
                var msg = new SpeechSynthesisUtterance();

                // Set the text.
                msg.text = text;

                // Set the attributes.
                msg.volume = parseFloat(volumeInput.value);
                msg.rate = parseFloat(rateInput.value);
                msg.pitch = parseFloat(pitchInput.value);

                // If a voice has been selected, find the voice and set the
                // utterance instance's voice attribute.
                if (voiceSelect.value) {
                    msg.voice = speechSynthesis.getVoices().filter(function (voice) { return voice.name == voiceSelect.value; })[0];
                }

                // Queue this utterance.
                window.speechSynthesis.speak(msg);
            }


            // Set up an event listener for when the 'speak' button is clicked.
            button.addEventListener('click', function (e) {
              
                speak("INTRODUCTION TO C LANGUAGE, C is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. It keeps fluctuating at number one scale of popularity along with Java programming language, which is also equally popular and most widely used among modern software programmers. Overview,C is a general-purpose, high-level language that was originally developed by Dennis M. Ritchie to develop the UNIX operating system at Bell Labs. C was originally first implemented on the DEC PDP-11 computer in 1972.In 1978, Brian Kernighan and Dennis Ritchie produced the first publicly available description of C, now known as the K&amp;R standard.The UNIX operating system, the C compiler, and essentially all UNIX application programs have been written in C. C has now become a widely used professional language for various reasons, Easy to learn, Structured language, It produces efficient programs, It can handle low-level activities,It can be compiled on a variety of computer platforms, Facts about C, C was initially used for system development work, particularly the programs that make-up the operating system. C was adopted as a system development language because it produces code that runs nearly as fast as the code written in assembly language. Some examples of the use of C might be,Operating Systems, language compilers, assemblers, loaders, linkers Network Drivers,modern programs, language interpreters,");

                
            });
        </script>
    </div> 

        </div>
</asp:Content>

