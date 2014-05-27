what if we actually started thinking about an interesting future
for personal computing?

- programming languages (less language, more manipulation,
  interaction and exploration)
- systems (too much energy is wasted on getting software to
  communicate, a system should be designed to do this from
  the start)

    * history lessons to be learnt from past system designs
- non-linear, non-organized by default, needs a flexible model
  and have tools to shape structure over time
- everything local by default, syncing is supported but
  additional independent part
- services, not applications (if such distinctions are even
  applicable)
- data at the core, ui is just rendered data, multiple
  possible renderings for pieces of data
- contextual knowledge is encodable/normal, annotations for
  everything (margin notes, synced to video/audio, on any
  kind of document/thing)
- search as an interface to new functionality (e.g. no menu
  searching, but filterable lists of things to do/actions)
- documentation as a core feature of the system, not something
  separate, shown in context, without "effort", first thing
  to learn when getting to know the system
- reification (if we have a type system, then we can ask things
  about types; if we have syntax, then we can parse/generate
  that syntax; ...) to prevent us from using a different system
  to change the system itself
- explorable, some kind of linking facility that works on system
  functionality, documents
- history tree/graph
- an infinite canvas to store things in. or at least throw them
  in and look at them later. partially to not worry about
  organisation when it doesn't matter (having an idea), but also
  to have a common place where things go and to be able to use
  our visual thinking abilities to see patterns later on.
- multiple occurrences of the same thing in one or more structures
  (often things fit in multiple "categories" and "filing" it under
  one of them is unnecessary and might make them not discoverable
  later on)

how to build such a thing? i have no real idea. i imagine it would
involve abandoning all the current systems at the start to not be
held back by their limitations.

starting small, a common data model for things i do and want to
interact with would be good.

an example.

if often have ideas. in fact, this is one. some of them are stored
in pinboard, because they're related to something and almost some
kind of comment. others, again like this one, are general thoughts
on a topic, or rather a collection of interconnected thoughts with
a shared topic.

i tag those ideas to be able to impose a structure later. or rather,
to be able to find structures later that "fit" parts or all of the
data.

what's a note? at it's most simplest, just a piece of text. but it
often also has a title. and tags, as already mentioned. sometimes
they have a url attached, when they are comments, sometimes not.
that url has different meanings at different times, though. in some
cases it's the inspiration for the thought, but in others it's the
reason for it and the text "belongs" to the url or to a part of the
document that the url represents.

so those pieces of texts are actually different things. but they
are still pieces of texts and a history might want to show them as
such.

so, let's formalize this a bit.

    text: title, content, tags

the name is temporary, we'll figure one out later. but what to do
about the url? it can be a "topic", an "inspiration", a "source"
(for quotes, maybe, that might be something else).

ok, i think the name is important, so what could it be? note,
comment, quote, todo item, thought, idea.

note and comment sound similar, a quote is just an extract, not
something we write, but something we "select", a todo item belongs
to a larger collection and finally thoughts and ideas sound similar
as welll.

comments definitely belong to something. notes might be more general,
something like "remarks", but definitely belong to a moment in time
and the context will often be interesting. quotes also belong to
some document, as comments do. thoughts are kind of similar to notes
from a certain point of view because they also "remark" something, so
they might be the same or at least very similar after all. ideas are
inspired, so they have some sort of inspiration, whether that is
some thing in our system or something else, like taking a shower.

so, comments and quotes are tied to some specific things; notes,
thoughts and ideas are contextual and todo items belong to a specific
collection of other things to do.

    comment = text + source
    quote = text + source + location

notes are not quite specified. they can be similar to "comments", that
is, belonging in a document and noting something. or they are
independent of any specific thing, but still contextual.

ok, this is getting too long. i think i should go an record different
types of things and then look at those things and try to categorize
them again. (that "categorize" makes me suspicious, it hints that i'm
trying to do too much. because when i have difficulty in categorizing
something, maybe it doesn't have one? or it doesn't have a specific
one, but just the more general one. or maybe it belongs in multiple
categories.)
