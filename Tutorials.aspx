<%@ Page Title="" Language="C#" MasterPageFile="MA.master"
    AutoEventWireup="true" CodeFile="Tutorials.aspx.cs" Inherits="Tutorials" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phtitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phlinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phcontent" runat="Server">
    <!--container div-->
    <!-- <script type="text/javascript">
        var preloader = new GSPreloader({
            radius: 42,
            dotSize: 15,
            dotCount: 10,
            colors: ["#61AC27", "#555", "purple", "#FF6600"],
            boxOpacity: 0.2,
            boxBorder: "1px solid #AAA",
            animationOffset: 1.8,
        });


        preloader.active(true);


        document.onclick = document.ontouchstart = function () {
            preloader.active(!preloader.active());
        };


        function GSPreloader(options) {
            options = options || {};
            var parent = options.parent || document.body,
                element = this.element = document.createElement("div"),
                radius = options.radius || 42,
                dotSize = options.dotSize || 15,
                animationOffset = options.animationOffset || 2.8,
                createDot = function (rotation) {
                    var dot = document.createElement("div");
                    element.appendChild(dot);
                    TweenLite.set(dot, { width: dotSize, height: dotSize, transformOrigin: (-radius + "px 0px"), x: radius, backgroundColor: colors[colors.length - 1], borderRadius: "50%", force3D: true, position: "absolute", rotation: rotation });
                    dot.className = options.dotClass || "preloader-dot";
                    return dot;
                },
                i = options.dotCount || 10,
                rotationIncrement = 360 / i,
                colors = options.colors || ["#61AC27", "black"],
                animation = new TimelineLite({ paused: true }),
                dots = [],
                isActive = false,
                box = document.createElement("div"),
                tl, dot, closingAnimation, j;
            colors.push(colors.shift());

            //setup background box
            TweenLite.set(box, { width: radius * 2 + 70, height: radius * 2 + 70, borderRadius: "14px", backgroundColor: options.boxColor || "white", border: options.boxBorder || "1px solid #AAA", position: "absolute", xPercent: -50, yPercent: -50, opacity: ((options.boxOpacity != null) ? options.boxOpacity : 0.3) });
            box.className = options.boxClass || "preloader-box";
            element.appendChild(box);

            parent.appendChild(element);
            TweenLite.set(element, { position: "fixed", top: "45%", left: "50%", perspective: 600, overflow: "visible", zIndex: 2000 });
            animation.from(box, 0.1, { opacity: 0, scale: 0.1, ease: Power1.easeOut }, animationOffset);
            while (--i > -1) {
                dot = createDot(i * rotationIncrement);
                dots.unshift(dot);
                animation.from(dot, 0.1, { scale: 0.01, opacity: 0, ease: Power1.easeOut }, animationOffset);

                tl = new TimelineMax({ repeat: -1, repeatDelay: 0.25 });
                for (j = 0; j < colors.length; j++) {
                    tl.to(dot, 2.5, { rotation: "-=360", ease: Power2.easeInOut }, j * 2.9)
                      .to(dot, 1.2, { skewX: "+=360", backgroundColor: colors[j], ease: Power2.easeInOut }, 1.6 + 2.9 * j);
                }

                animation.add(tl, i * 0.07);
            }
            if (TweenLite.render) {
                TweenLite.render();
            }


            this.active = function (show) {
                if (!arguments.length) {
                    return isActive;
                }
                if (isActive != show) {
                    isActive = show;
                    if (closingAnimation) {
                        closingAnimation.kill();
                    }
                    if (isActive) {
                        element.style.visibility = "visible";
                        TweenLite.set([element, box], { rotation: 0 });
                        animation.play(animationOffset);
                    } else {
                        closingAnimation = new TimelineLite();
                        if (animation.time() < animationOffset + 0.3) {
                            animation.pause();
                            closingAnimation.to(element, 1, { rotation: -360, ease: Power1.easeInOut }).to(box, 1, { rotation: 360, ease: Power1.easeInOut }, 0);
                        }
                        closingAnimation.staggerTo(dots, 0.3, { scale: 0.01, opacity: 0, ease: Power1.easeIn, overwrite: false }, 0.05, 0).to(box, 0.4, { opacity: 0, scale: 0.2, ease: Power2.easeIn, overwrite: false }, 0).call(function () { animation.pause(); closingAnimation = null; }).set(element, { visibility: "hidden" });
                    }
                }
                return this;
            };
        }

    </script>-->

    <style>
        .intro {
            background: linear-gradient( rgba(0, 0, 0, 0.80), rgba(0, 0, 0, 0.80) ), url('');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            height: 210vh;
            position: absolute;
            left: 300px;
            width: 100%;
        }

        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup2 {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 0px;
            padding-left: 0px;
            width: 390px;
            height: 300px;
        }

        .superShadow {
            text-shadow: 0 1px 0 hsl(174,5%,80%), 0 2px 0 hsl(174,5%,75%), 0 3px 0 hsl(174,5%,70%), 0 4px 0 hsl(174,5%,66%), 0 5px 0 hsl(174,5%,64%), 0 6px 0 hsl(174,5%,62%), 0 7px 0 hsl(174,5%,61%), 0 8px 0 hsl(174,5%,60%), 0 0 5px rgba(0,0,0,.05), 0 1px 3px rgba(0,0,0,.2), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.2), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.3);
        }

        strong {
            font-size: 200px;
        }

        #startbtn {
            top: 20px;
        }

        #pauses {
            top: 20px;
        }

        #resumes {
            top: 20px;
        }
    </style>

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
        <div class="intro">

            <div class="def1" style="padding-top: 100px; position: relative; padding-left: 20px;   top: 0px">
                <h1 style="color: white; position: relative">INTRODUCTION TO C LANGUAGE</h1>
                <p style="color: white" id="speech-msg" x-webkit-speech>C is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. It keeps fluctuating at number one scale of popularity along with Java programming language, which is also equally popular and most widely used among modern software programmers.</p>
            </div>


            <div class="def2" style="padding-top: 20px; position: absolute; padding-left: 20px">
                <h2 style="color: white">Overview</h2>
                <p style="color: white">C is a general-purpose, high-level language that was originally developed by Dennis M. Ritchie to develop the UNIX operating system at Bell Labs. C was originally first implemented on the DEC PDP-11 computer in 1972.</p>
                <p style="color: white">In 1978, Brian Kernighan and Dennis Ritchie produced the first publicly available description of C, now known as the K&amp;R standard.</p>
                <p style="color: white">The UNIX operating system, the C compiler, and essentially all UNIX application programs have been written in C. C has now become a widely used professional language for various reasons &minus;</p>
                <ul class="list">
                    <li style="color: white">Easy to learn</li>
                    <li style="color: white">Structured language</li>
                    <li style="color: white">It produces efficient programs</li>
                    <li style="color: white">It can handle low-level activities</li>
                    <li style="color: white">It can be compiled on a variety of computer platforms</li>
                </ul>
                <h2 style="color: white">Facts about C</h2>
                <ul class="list">
                    <li style="color: white">C was invented to write an operating system called UNIX.</li>
                    <li style="color: white">C is a successor of B language which was introduced around the early 1970s.</li>
                    <li style="color: white">The language was formalized in 1988 by the American National Standard Institute (ANSI).</li>
                    <li style="color: white">The UNIX OS was totally written in C.</li>
                    <li style="color: white">Today C is the most widely used and popular System Programming Language.</li>
                    <li style="color: white">Most of the state-of-the-art software have been implemented using C.</li>
                    <li style="color: white">Today's most popular Linux OS and RDBMS MySQL have been written in C.</li>
                </ul>
                <h2 style="color: white">Why use C?</h2>
                <p style="color: white">C was initially used for system development work, particularly the programs that make-up the operating system. C was adopted as a system development language because it produces code that runs nearly as fast as the code written in assembly language. Some examples of the use of C might be &minus;</p>
                <ul class="list">
                    <li style="color: white">Operating Systems</li>
                    <li style="color: white">Language Compilers</li>
                    <li style="color: white">Assemblers</li>
                    <li style="color: white">Text Editors</li>
                    <li style="color: white">Print Spoolers</li>
                    <li style="color: white">Network Drivers</li>
                    <li style="color: white">Modern Programs</li>
                    <li style="color: white">Databases</li>
                    <li style="color: white">Language Interpreters</li>
                    <li style="color: white">Utilities</li>
                </ul>
                <div id="page-wrapper">
                    <p id="msg"></p>

                    <div class="option" style="left:200px">
                        <label for="voice">Voice</label>
                        <select name="voice" id="voice"></select>
                    </div>
                    <div class="option" style="left:200px">
                        <label for="volume">Volume</label>
                        <input type="range" min="0" max="1" step="0.1" name="volume" id="volume" value="1">
                    </div>
                    <div class="option" style="left:200px">
                        <label for="rate">Rate</label>
                        <input type="range" min="0.1" max="10" step="0.1" name="rate" id="rate" value="0.75">
                    </div>
                    <div class="option" style="left:200px">
                        <label for="pitch">Pitch</label>
                        <input type="range" min="0" max="2" step="0.1" name="pitch" id="pitch" value="1">
                    </div>
                    <input type="button" id="startbtn" style="margin: 30px;" value="read" />
                    <input type="button" id="pause" style="margin: 30px;" value="pause"/>
                    <input type="button" id="resume" style="margin: 30px;" value="resume"/>
                    
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
            var pause = document.getElementById('pause');
            var resume  = document.getElementById('resume');
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
            function pause(text) {
                var msg = new SpeechSynthesisUtterance();

                // Set the text.
                msg.text = text;

                // Set the attributes.
                msg.volume = parseFloat(volumeInput.value);
                msg.rate = parseFloat(rateInput.value);
                msg.pitch = parseFloat(pitchInput.value);

                window.speechSynthesis.pause(msg);
              
            }
            function resume(text) {
                var msg = new SpeechSynthesisUtterance();

                // Set the text.
                msg.text = text;

                // Set the attributes.
                msg.volume = parseFloat(volumeInput.value);
                msg.rate = parseFloat(rateInput.value);
                msg.pitch = parseFloat(pitchInput.value);

                window.speechSynthesis.resume(msg);

            }

            // Set up an event listener for when the 'speak' button is clicked.
            button.addEventListener('click', function (e) {
               
                    speak(speechMsgInput);
                
                

                
            });
            pause.addEventListener('click', function (e) {
                
                
                    pause(speechMsgInput);
                
                }
                

            });
            resume.addEventListener('click', function (e) {
               
                    resume(speechMsgInput);
                


            });
        </script>
    </div>


</asp:Content>

