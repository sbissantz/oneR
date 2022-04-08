# One R to Rule Them All!

    "One R[...] to rule them all, One R[...] to find them, One R[...] to bring
    them all. and in the darkness bind them." 
    
    – J.R.R. Tolkien, The Fellowship of the Ring 

## I-i-intro!

Hey dude! Welcome to my repository `teachR`. Happy to have you here! If you
know nothing about R, congrats, you are at the right place. The repo should
teach you some nuggets of R. Noting more. Do you want the power of the R-verse
to fully unfold over your head? Well, then you should probably pilgrimage to
the `py-R-amids`. Nerd joke. Sorry, that keeps me engaged.

What else? Ah, the content will be in Englisch. Surprise, surprise. But why the
hell English?! Isn't that a damn German R-course? It is. However, I chose
English mainly for two reasons. First, familiarize yourself with this beautiful
and figurative language. It is and will be a loyal companion throughout your
career. Trust me. Second, I'm practicing for my Ph.D. So pardon my selfishness!

Besides, there are numerous reasons to tackle R this way. For example, English
the everyday language of the R-verse. All public manuals on CRAN, every
vignette, all help pages are written in–you've guessed it– English. Have a
problem, found a bug, etc.? Ask for help on `StackOverflow` or contact the
maintainer on GitHub in...(*hold on*)...English. I am running out of examples,
so I hope I've convinced you. 

Did I miss anything? Yes! If you want to enjoy my live performance on stage
*Tuesday morning*, *10:15-11:45*, the course language will be German. In short,
repo lecture: English; course lecture: German. Maybe this nudges you to attend
the course. We will see.

Let's finish the read-me with a place for you to (re-)start. For the course, I
highly recommend the following two additional resources. I will draw heavily on
them. However, feel free to deviate from my suggestion if you find something
that works better for you.

- https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf
- https://csgillespie.github.io/efficientR/index.html

## R 

You can download the latest R-version on CRAN (Comprehensive R Archive Network,
see: [https://cran.r-project.org/]). Full-metal Linux users (like me), can also
utilize their robots package manager. On Fedora, for example, I solely run `DNF
install R` as root. If you have macOS, as I do professionally, you can use
Homebrew (https://brew.sh/) to simplify the installation process. Just hack
`brew install R` in a terminal.


## R & R Studio

R comes with a bare-bone programming environment. The R console is an
operational battle station but lacks user-friendliness. Try it yourself. Open a
terminal and type `R`. Do you know what I mean? Don't get me wrong; there are
good reasons to use R's rudimentary user interface (e.g., if you drive a
minimal-resource strategy). But we are not out for efficiency. We want to get
the most out of our R experience. That's why we will stick with a creamy IDE
(Integrated Development Environment) called `RStudio`. Don't get loose in
details. The only thing I want you to remember is: *R is not RStudio*. RStduio
operates on top of R. It provides a fully equipped, user-friendly environment
to produce R code. Neat isn't it! If you want to give it a shot, download
RStudio on their website (https://www.rstudio.com/products/rstudio/). To make
you jump right of the ground, please "Take a tour of RStudio’s IDE". The link
is the same. 

## R-Studio Shortcuts 

Shortcuts are butter and bread for an efficient workflow. Within RStudio, you
can always find a reference under `Tools > Keyboard Shortcuts Help`. If you
want to remember only one shortcut in particular, try: `Alt + Shift + k`
(Windows, Linux), `Option + Shift + k` (macOS). Why this one? Well, it opens
the reference to all the others. If you like to view them in your browser,
follow the links below.

### Linux & Windows
https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts

### macOS 
https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts

## Open OLAT

I'm not a big fan of OLAT. Sorry! But I am also convinced, wrangling R and
RStudio is enough for one semester. Taming Version Control Systems (VCS) and
their Hubs would be a bit of a overkill. So, good news, we'll stick with OLAT.
But in a master seminar you won't get away so easily. Then the time has come to
learn Git. But for now, as promised, the OLAT course link.

https://olat.vcrp.de/url/RepositoryEntry/3699835679

There's a password securing the entry, willing to give access only to the
chosen ones. A riddle blocks your way: 

    Find Descartes' famous quote. What's it go to do with R? This is what you
    have to find out. Document it! Word by word, you'll find out. The quote
    must be in English. Use SnakeCases. The last will be the first. Erase it;
    replace it -- the "R" will guide you.

Ease cheesy, right? If you cannot solve the riddle, shame on you! I am just
kidding! Visit the course or ask one of your fellows.

### Schedule 

The schedule outlines the topics you will master. The first six sessions are
way off the lecture. I call it the R boot camp -- or should I say "ICU"?
Another bad joke. Never mind, the first six weeks will equip you with some
basic R knowledge, which we'll need for the rest of the course. The second half
will teach you how to do data analyses in R. After thirteen weeks of intense
instructions, coding, and tingling fingertips, you have made it! Congrats, you
are a proficient R user. Keep on practicing!

### English Version

| Unit | Week | Description |
|----- | ---- | ----------- |
| 1 | 17 | I-i-intro |
| 2 | 18 | Reading in data |
| 3 | 19 | Data W-rrr-angling |
| 4 | 20 | Graphics & Plots |
| 5 | 21 | Descriptive Statistics |
| 6 | 22 | t-Test 1.0 |
| - | 23 | Vacation |
| 7 | 24 | T-Test 2.0 |
| 8 | 25 | Power & Confidence Intervals |
| 9 | 26 | One-Factor ANOVA |
| 10 | 27 | Two-Factor ANOVA |
| 11 | 28 | Correlations & Simple Linear Regression |
| 12 | 29 | Multiple Linear Regression & Partial correlations |
| 13 | 30 | [Buffer session] |

### German Version

In compliance with the lecture, the German version of the schedule:

| Einheit | Kalenderwoche | Beschreibung |
|----- | ---- | ----------- |
| 1 | 17 | Einführung |
| 2 | 18 | Daten einlesen |
| 3 | 19 | Datenmanagement |
| 4 | 20 | Grafiken |
| 5 | 21 | Deskriptivstatistik |
| 6 | 22 | t-Test 1 |
| - | 23 | Pfingstferien |
| 7 | 24 | t-Test 2 |
| 8 | 25 | Power und Konfidenzintervalle |
| 9 | 26 | Einfaktorielle ANOVA |
| 10 | 27 | Zweifaktorielle ANOVA |
| 11 | 28 | Korrelation und einfache Regression |
| 12 | 29 | Multiple Regression und Partialkorrelation |
| 13 | 30 | [Puffer] |

## Initial To-Dos 

1. Download R & RStudio [x]
2. Gain access to the course materials! [x] 
3. Make friends with others! [x]
4. Download Swirl & Swirly [x] 

If you're psyched, have a look into the R-intro ([here](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf)).

