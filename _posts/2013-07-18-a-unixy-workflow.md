---
title: A unixy workflow
layout: post
---

As a developer, chances are that you are on a Unix. Also, you might like
automating things that you don't care too much about but want them done
anyway. Here are a few things that I do on a day-to-day basis and that
help me a lot.

In short, here are the things that I use (almost) daily:

* cron
* git
* vim
* grep (or ack or ag)
* pandoc
* xmonad
* multiple users (and unix groups)
* mutt + offlineimap

# Cron

Cron helps me not ignore my battery indicator [1], fetch email,
sometimes is my news reader and tells me when I'm working too long.

I think every computer should have an easily accesible scheduling
system.

# Git

Everything I do is in git. My [projects][], my [dotfiles][], my bachelor
thesis, memories from old projects, most of the open-source libraries I
use and even the [notes I take][notes] in the browser.

Git allows me to look back in time, try out ideas, label them (with tags
and branches) and to all of this fast, whenever I want. Additionally,
it's availlable anywhere where I have internet access.

For example, here's what I do on a new machine (be it a server, new
computer or an account at my university):

    $ git clone git://github.com/heyLu/confidence
    $ mv confidence/.git .
    $ rm -rf confidence
    $ git checkout .

And then I have my favourite shell config, some small tools, my vim
config and a lot of convenient helpers availlable. I could even put it
into a script if I want. (That's one example of how unix lets you
compose things. And/or batch run them.)

# Vim

Well, as it turns out, IDEs are sometimes convenient (for example, I
don't know of good debugging support for Clojure in Vim), but for most
tasks I prefer Vim. It's fast, has loads of plugins [2] availlable and
doesn't make me repeat myself. At its core, it's a *vocabulary for
manipulating text*. That it also does syntax highlighting, source
browsing for various languages and has a horrible scripting language is
mostly an accident. But the ability to manipulate text sensibly? That's
what vim is for me.

Again, one example: typing `cw` and then a sequence of letters lets me
**c**hange a **w**ord. And then I can repeat that change using `.`. Vim
doesn't stop there, but gives you a whole new world of text-editing. And
if that's what you do a lot, you might want to try that.

# Grep (or ack or ag)

Code search. But also mail search. And config search. And whatnot. For
quick and dirty it's enough on its own and for more complex tasks you
can pipe things together.

Again. that's a feature that IDEs also have. But what they can't do is
compose things, put them into scripts and share them with other people
easily. These are the reasons that I believe that traditional IDEs won't
replace unixy tools. If anything will, then it might be something that
at least keeps the spirit. Things like LightTable might, because they
let you change them, because they provide abstractions, not finished
tools.

# pandoc

Everything I write is in some git repository. Most likely written in
Markdown. Or one of the other 10 formats that pandoc supports. So after
having written a blog post, thesis or weird other thing, pandoc can
convert it into HTML, PDFs or even ODTs.

This is one example of a tool that languages like Haskell make possible.
It's not only a converter, but also a data structure for documents. In
other languages you wouldn't be able to clearly see the underlying
structure, you'd be busy trying to convert documents. (Well, you might
discover it after a long time, or by thinking beforehand, but with
languages like Haskell it's natural and common to do this. You almost
always write code that is the solution to a bit more general problem
that you are trying to solve.)

# XMonad

My window manager. One I can trust. It always does what I want it to do.
And it's also written in Haskell, with an interesting underlying data
structure.

# Multiple users

I try to keep personal stuff, university and work separate. With
multiple users I can have different browser sessions, contexts,
histories. Sometimes even in parallel, with multiple X displays at once.

This isn't perfect yet, but it helps me focus on what I want/have to do.

Also, a unix group for myself helps me access shared files such as my
music library.

# Mutt + offlineimap

[1]: https://github.com/heyLu/confidence/blob/master/.crontab#L2
[projects]: https://github.com/heyLu?tab=repositories
[dotfiles]: https://github.com/heyLu/confidence
[notes]: https://github.com/heyLu/chrome-newtab-notes
[2]: https://github.com/heyLu/confidence/blob/master/.vimrc#L10-L33
