<%@ Page Language="C#" AutoEventWireup="true" CodeFile="speech.aspx.cs" Inherits="speech" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <asp:Button ID="speak" runat="server" Text="speak" value="speak"  />
        <asp:Button ID="pause" runat="server" Text="pause" value="pause"/>
        <asp:Button ID="resume" runat="server" Text="resume" value="resume"/>
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
            var pause = document.getElementById('pause');
            var resume = document.getElementById('resume');
            // Get the text input element.
            var speechMsgInput = "INTRODUCTION TO C LANGUAGE, C is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. It keeps fluctuating at number one scale of popularity along with Java programming language, which is also equally popular and most widely used among modern software programmers. Overview,C is a general-purpose, high-level language that was originally developed by Dennis M. Ritchie to develop the UNIX operating system at Bell Labs. C was originally first implemented on the DEC PDP-11 computer in 1972.In 1978, Brian Kernighan and Dennis Ritchie produced the first publicly available description of C, now known as the K&amp;R standard.The UNIX operating system, the C compiler, and essentially all UNIX application programs have been written in C. C has now become a widely used professional language for various reasons, Easy to learn, Structured language, It produces efficient programs, It can handle low-level activities,It can be compiled on a variety of computer platforms, Facts about C, C was initially used for system development work, particularly the programs that make-up the operating system. C was adopted as a system development language because it produces code that runs nearly as fast as the code written in assembly language. Some examples of the use of C might be,Operating Systems, language compilers, assemblers, loaders, linkers Network Drivers,modern programs, language interpreters";

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

            //Execute loadVoices.
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
            function pause(text) {
                var msg = new SpeechSynthesisUtterance();
                window.speechSynthesis.pause(speechMsgInput);
              
            }


            // Set up an event listener for when the 'speak' button is clicked.
            button.addEventListener('click', function (e) {
                if (speechMsgInput.value.length > 0) {
                    speak(speechMsgInput.value);
                }
            });
            pause.addEventListener('click', function (e) {
                if (speechMsgInput.value.length > 0) {
                    pause(speechMsgInput.value);
                }
            });
        </script>
    </div>
    </form>
</body>
</html>
