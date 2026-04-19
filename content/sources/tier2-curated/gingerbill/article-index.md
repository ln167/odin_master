xml version="1.0" encoding="UTF-8" ?



gingerBill - Articles
https://www.gingerbill.org/article/
Articles by gingerBill

Designing Odin's Casting Syntax
https://www.gingerbill.org/article/2026/02/23/designing-odins-casting-syntax/
https://www.gingerbill.org/article/2026/02/23/designing-odins-casting-syntax/
Mon, 23 Feb 2026 09:00:00 +0000
Odin;s declaration syntax becomes second nature to everyone who uses the language but I do sometimes get asked ;Why are there two ways to do type conversions?; Enough that I had to make an FAQ entry..The reason that there are two ways to do type conversions is because one approach may feel better than the other case. If you are converting a large expression, it sometimes a lot easier to use the operator-style approach, . The call syntax is commonly used to specify a type of an expression which may be relatively short such as or .There are...

Does Syntax Matter?
https://www.gingerbill.org/article/2026/02/21/does-syntax-matter/
https://www.gingerbill.org/article/2026/02/21/does-syntax-matter/
Sat, 21 Feb 2026 09:00:00 +0000
Yes.But not necessarily in the ways you might think n.b. This article could have been a lot longer than it currently is..Concrete and Abstract SyntaxesIn the previous article, Choosing a Language Based on its Syntax?, I talked about how many people will not pick up a language purely based on its declaration syntax not being familiar to them or the usage of semicolons or more.There were many lovely comments about the article, but some readers wrongly interpreted the article to mean that I don;t care about concrete syntax and only focus on the abstr...

Choosing a Language Based on its Syntax?
https://www.gingerbill.org/article/2026/02/19/choosing-a-language-based-on-syntax/
https://www.gingerbill.org/article/2026/02/19/choosing-a-language-based-on-syntax/
Thu, 19 Feb 2026 09:00:00 +0000
I am still perplexed by how people judge a language purely by its declaration syntax, and will decide whether to use the language purely based on whether they like that aspect or not I am specifically talking about declaration syntax here and not other aspects of concrete syntax. Please do not extrapolate further..The general categories of declarations can be classified as the following:---type-focused---name-focused---qualifier-focusedWhen designing a language, if your semantics are pretty clear you can trivially change this declaration syntax and th...

The Only Two Markup Languages
https://www.gingerbill.org/article/2026/01/19/two-families-of-markup-languages/
https://www.gingerbill.org/article/2026/01/19/two-families-of-markup-languages/
Mon, 19 Jan 2026 09:00:00 +0000
There are only two families of proper arbitrary markup languages: TeX and SGML I would normally link to official thing as reference but it's behind the "wonderful" ISO paywall: ISO 8879:1986.. By arbitrary, I mean the grammar specifically, and how it can be used to mark arbitrary plain text with information. And by proper, I mean the ability to have standalone nodes, user-definable nodes, nodes with attributes, and the wrapping of plain text. Everything else either lacks one of the these capabilities, or is a derivative or syntactic makeover of ...

Mitigating the Billion Dollar Mistake
https://www.gingerbill.org/article/2026/01/11/mitigating-the-billion-dollar-mistake/
https://www.gingerbill.org/article/2026/01/11/mitigating-the-billion-dollar-mistake/
Sun, 11 Jan 2026 09:00:00 +0000
This article is continuation to: Was it really a Billion Dollar Mistake?.After reading a lot of the comments on numerous social media sites on the original article, I think I need to clarify a lot more.The main points I wanted to clarify:Null pointer dereferences are empirically the easiest class of invalid memory addresses to catch at runtime, and are the least common kind of invalid memory addresses that happen in memory unsafe languages.I do think it was a costly mistake but the ;obvious solutions; to the problem are probably just as costly, i...

Was it really a Billion Dollar Mistake?
https://www.gingerbill.org/article/2026/01/02/was-it-really-a-billion-dollar-mistake/
https://www.gingerbill.org/article/2026/01/02/was-it-really-a-billion-dollar-mistake/
Fri, 02 Jan 2026 09:00:00 +0000
TL;DR pointer dereferences are empirically the easiest class of invalid memory addresses to catch at runtime, and are the least common kind of invalid memory addresses that happen in memory unsafe languages. The trivial solutions to remove the ;problem; pointers have numerous trade-offs which are not obvious, and the cause of why people think it is a ;problem; comes from a specific kind of individual-element mindset.Part Two of this article clarifies a lot more: Mitigating the Billion Dollar MistakeMost people have probably heard of the...

context—Odin's Most Misunderstood Feature
https://www.gingerbill.org/article/2025/12/15/odins-most-misunderstood-feature-context/
https://www.gingerbill.org/article/2025/12/15/odins-most-misunderstood-feature-context/
Mon, 15 Dec 2025 09:00:00 +0000
Even with the documentation on the topic, many people completely misunderstand what the system is for, and what problem it actually solves.For those not familiar with Odin, in each scope, there is an implicit value named . This context variable is local to each scope and is implicitly passed by pointer to any procedure call in that scope (if the procedure has the Odin calling convention).The main purpose of the implicit system is for the ability to intercept third-party code and libraries and modify their functionality. One such case is modifying how a...

Package Managers are Evil
https://www.gingerbill.org/article/2025/09/08/package-managers-are-evil/
https://www.gingerbill.org/article/2025/09/08/package-managers-are-evil/
Mon, 08 Sep 2025 09:00:00 +0000
n.b. This is a written version of a dialogue from a YouTube video: 2 Language Creators vs 2 Idiots | The StandupPackage managers (for programming languages) are evil The term "evil" is being used partially hyperbolic to make a point..To start, I need to make a few distinctions between concepts a lot of programmers mix up:A packagePackage RepositoriesBuild SystemsPackage ManagersThese are all separate and can have no relation to one another. I have nothing wrong with packages, in fact Odin has packages built into the language. I have nothing wrong ...

If Odin Had Macros
https://www.gingerbill.org/article/2025/07/31/if-odin-had-macros/
https://www.gingerbill.org/article/2025/07/31/if-odin-had-macros/
Thu, 31 Jul 2025 09:00:00 +0000
I sometimes get asked if Odin has any plans to add hygienic macros or some other similar construct. My general, and now (in)famous, answer is to many such questions is: No.I am not against macros nor metaprogramming in general, and in fact I do make metaprograms quite often (i.e. programs that make/analyse a program). However my approach with the design of Odin has been extremely pragmatic. I commonly ask people who ask for such things what are they specifically trying to solve? Usually they are not trying to do anything whatsoever and are just thinking ...

Unstructured Thoughts on the Problems of OSS/FOSS
https://www.gingerbill.org/article/2025/04/22/unstructured-thoughts-on-oss/
https://www.gingerbill.org/article/2025/04/22/unstructured-thoughts-on-oss/
Tue, 22 Apr 2025 09:00:00 +0000
Originally from replies to a Twitter thread: https://x.com/TheGingerBill/status/1914389352416993395This is not a structured argument against FOSS/OSS but my uncommon thoughts on the topic.I am not sure if I agree [that FOSS/OSS derives from the same thinking process as the ideology of communism], but I understand the sentiment. The fundamental issue is that software is trivially copyable. I have loads of issues with FOSS and OSS I am making a distinction between OSS (Open Source Software) and FOSS (Free [and] Open Source Software) in this article but ...

OpenGL is not Right-Handed
https://www.gingerbill.org/article/2024/11/10/opengl-is-not-right-handed/
https://www.gingerbill.org/article/2024/11/10/opengl-is-not-right-handed/
Sun, 10 Nov 2024 09:00:00 +0000
The original Twitter thread: https://x.com/TheGingerBill/status/1508833104567414785I have a huge gripe when I read articles/tutorials on OpenGL: most people have no idea what they are talking about when it comes to coordinate systems and matrices.Specifically: OpenGL is NOT right-handed; the confusion over column-major ;matrices;.Let;s clear up the first point. Many people will say OpenGL uses a right-handed coordinate system. Loads of articles/tutorials will keep repeating the view that OpenGL uses a right-handed coordinate system. So the qu...

Marketing the Odin Programming Language is Weird
https://www.gingerbill.org/article/2024/09/08/odin-weird-to-market/
https://www.gingerbill.org/article/2024/09/08/odin-weird-to-market/
Sun, 08 Sep 2024 09:00:00 +0000
[Originally from a Twitter Thread]Original Twitter Post;Killer Feature;Odin is a weird programming language to advertise/market for.Odin is very pragmatic in terms of its design and overall philosophy. Unlike all popular languages out there, it has no ;killer feature;. I;ve tried to design it to solve actual problems with actual solutions.Those languages with a ;killer feature; to them do make them ;standout; and consequentially more ;hypeable;. The problem is that those ;killer features; are usually ab...

Why People are Angry over Go 1.23 Iterators
https://www.gingerbill.org/article/2024/06/17/go-iterator-design/
https://www.gingerbill.org/article/2024/06/17/go-iterator-design/
Mon, 17 Jun 2024 09:00:00 +0000
NOTE: This is based on, but completely rewritten, from a Twitter post:https://x.com/TheGingerBill/status/1802645945642799423TL;DR: It makes Go feel too ;functional; rather than being an unabashed imperative language.I recently saw a post on Twitter showing the upcoming Go iterator design for Go 1.23 (August 2024). From what I can gather, many people seem to dislike the design. I wanted to give my thoughts on it as a language designer.The merged PR for the proposal can be found here:https://github.com/golang/go/issues/61897It has a in-depth explan...

String Type Distinctions
https://www.gingerbill.org/article/2024/04/05/string-type-distinctions/
https://www.gingerbill.org/article/2024/04/05/string-type-distinctions/
Fri, 05 Apr 2024 09:00:00 +0000
[Originally from a Twitter Thread]Original Twitter PostOne thing many languages ; API designers get wrong is the concept of a string. I try to make a firm distinction between:string value ( or )string builder ( or )Backing buffer for a string ( or )They are not equivalent even if you can theoretically use them as such, and so many garbage collected language use them as such.They have different use cases which don;t actually overlap in practice. Most of the issues with strings come from trying to merge concepts into one.In Odin, the distinction be...

The Video That Inspired Me To Create Odin
https://www.gingerbill.org/article/2024/04/04/video-that-inspired-odin/
https://www.gingerbill.org/article/2024/04/04/video-that-inspired-odin/
Thu, 04 Apr 2024 09:00:00 +0000
[Originally from a Twitter Thread]Original Twitter PostMany people may not know this but this video by Sean Barrett @nothings is partially the reason why I made the Odin programming language.And I;ll explain what insights it gave me in this thread .A lot of these seem ;so obvious; but for some reason it never clicked to me before this video. A lot of the ;higher level; ;scripting; languages are not that much higher level than C. Those languages just have garbage collection and much better standard libraries than C.Those la...

Why I Hate Language Benchmarks
https://www.gingerbill.org/article/2024/01/22/comparing-language-benchmarks/
https://www.gingerbill.org/article/2024/01/22/comparing-language-benchmarks/
Mon, 22 Jan 2024 09:00:00 +0000
[Originally from a Twitter Thread]Original Twitter PostI don;t know if I have ;ranted; about this here before but:I absolutely HATE comparing programming languages with ;benchmarks;.Language benchmarks rarely ever actually test for anything useful when comparing one language against another. This goes for ANY language.Even in the best case scenario: you are comparing different compilers for the same language (and the same input). This means that you are just comparing how well the optimizing backends work for those compilers. Comparin...

Reverse Engineering Alembic
https://www.gingerbill.org/article/2022/07/11/reverse-engineering-alembic/
https://www.gingerbill.org/article/2022/07/11/reverse-engineering-alembic/
Mon, 11 Jul 2022 09:00:00 +0000
For my work at JangaFX, we require the use of the Alembic interchange file format. We have been using other libraries which wrap reading the Alembic file format but because it is not the native library, it has numerous issues due to the generic interface.I spent nearly 4 days trying to get the official Alembic C++ API, https://github.com/alembic/alembic/, to compile correctly and then use the API itself. Numerous times the compilation would get corrupted (it compiled but none of the tests even ran) and when I got it work (on another machine), the API its...

Multiple Return Values Research
https://www.gingerbill.org/article/2021/12/15/multiple-return-values-research/
https://www.gingerbill.org/article/2021/12/15/multiple-return-values-research/
Wed, 15 Dec 2021 09:00:00 +0000
I have recently been thinking about multiple return values as a concept, and wondering if there has been any kind of literature into the topic of ;true; multiple return values which are not emulated through tuples. My current working hypothesis is that I think I have come to the conclusion (unless there is evidence to the contrary) Odin has invented a new kind of type system, something to the akin of polyadic expressions.It appears that Go and Odin are the only ones with what I call ;true; multiple return values, but Odin;s approach i...

Memory Allocation Strategies - Part 6
https://www.gingerbill.org/article/2021/12/02/memory-allocation-strategies-006/
https://www.gingerbill.org/article/2021/12/02/memory-allocation-strategies-006/
Thu, 02 Dec 2021 09:00:00 +0000
Buddy Allocators

Memory Allocation Strategies - Part 5
https://www.gingerbill.org/article/2021/11/30/memory-allocation-strategies-005/
https://www.gingerbill.org/article/2021/11/30/memory-allocation-strategies-005/
Tue, 30 Nov 2021 09:00:00 +0000
Free List Allocators

The Value Propagation Experiment Part 2
https://www.gingerbill.org/article/2021/09/06/value-propagation-experiment-part-2/
https://www.gingerbill.org/article/2021/09/06/value-propagation-experiment-part-2/
Mon, 06 Sep 2021 09:00:00 +0000
[Originally from a Twitter Thread]I have revisited The Value Propagation Experiment and have come to a different conclusion as to why it failed and how I recovered it.The recovery work has been merged into master now with this PR: https://github.com/odin-lang/Odin/pull/1082I think there were three things which were confusing which make it look like a failure of an experiment: was a confusing name for what the semantics were. as a prefix was the wrong place.Unifying with was a bad idea for many reasons.Changes in the PR:Built-in procedure became a bina...

The Value Propagation Experiment
https://www.gingerbill.org/article/2021/07/05/value-propagation-experiment/
https://www.gingerbill.org/article/2021/07/05/value-propagation-experiment/
Mon, 05 Jul 2021 09:00:00 +0000
[Originally from a Twitter Thread]Part 2 of this ExperimentThe IdeaI recently experimented with adding a feature into Odin which allowed for a way to propagate a value by early returning if that value was or not . It was in a similar vein to Rust;s which became , or Zig;s , etc.I have now removed it from Odin. But why?The ProblemThe hypothesis was that that this idiom was common:where may be an enum, a (discriminated) union, or any other kind of value that has .And replace it with The concept of try worked by popping off the end value in a ...

Untyped Types
https://www.gingerbill.org/article/2021/03/07/untyped-types/
https://www.gingerbill.org/article/2021/03/07/untyped-types/
Sun, 07 Mar 2021 09:00:00 +0000
When I was designing the constant value system in Odin, I wanted literals (especially numbers) to ;just work;. I was inspired by how both Ada Ada Style Guide For Naming Conventions and Go I highly recommend reading the article regarding how Go implements its constant value system https://blog.golang.org/constants both handled their constant value systems. But this lead me to a realization that there are two general different models of thought when it comes to values in programming languages.Model-1: Expressions have a type, not all expressi...

Structured Control Flow (Brain Dump)
https://www.gingerbill.org/article/2021/02/02/structured-control-flow/
https://www.gingerbill.org/article/2021/02/02/structured-control-flow/
Tue, 02 Feb 2021 09:00:00 +0000
Note: This is a ;brain dump; article, and subject to be cleaned up.Categories of Structured Control FlowProcedure callTerminatingConditional, , Looping - loop with initial statement, condition, post statement, and body - loop with a value to be iterated over - loop with condition then body - loop with body then conditionBranching - go to end outside of the control statement - skip to the end of a loop - merge two switch case bodies, to have multiple entry points to the merged bodyLabels on other control flow statementsDeferred/Pseudo/Partial Cate...

The Essence of Programming
https://www.gingerbill.org/article/2021/02/01/the-essence-of-programming/
https://www.gingerbill.org/article/2021/02/01/the-essence-of-programming/
Mon, 01 Feb 2021 09:00:00 +0000
One thing I have noticed a lot when a programmer is struggling to solve a problem, especially a novice, is that he is stuck worrying about the ;best way; to implement the solution rather than actually understanding the problem he has. I believe a lot of this stems from not understanding the essence of what programming fundamentally is.Essentially Ordered AspectsIn a previous article of mine, I state that ;Programming is a tool to solve problems that you have in the domain of computers;. At the essence of everything to do with programming,...

The Fatal Flaw of Ownership Semantics
https://www.gingerbill.org/article/2020/06/21/the-ownership-semantics-flaw/
https://www.gingerbill.org/article/2020/06/21/the-ownership-semantics-flaw/
Sun, 21 Jun 2020 09:00:00 +0000
I have been toying with a theoretical idea for the past 18 months off-and-on in my head and I have not fully articulated it aloud yet. It is regarding the concept of Ownership Semantics (OS) or Move Semantics in programming languages. Fundamentally this article is a criticism of the concept and states that the concept is a duality of traditional OOP but applied to a different area.General Definitions of TerminologyA general list of definitions of terminology used within this article in order to minimize confusion.A Value is a datum with an associated typ...

Flash Fads Model (Audio Article)
https://www.gingerbill.org/article/2020/06/13/flash-fads-model/
https://www.gingerbill.org/article/2020/06/13/flash-fads-model/
Sat, 13 Jun 2020 09:00:00 +0000
Audio Article:

Pragmatism in Programming Proverbs
https://www.gingerbill.org/article/2020/05/31/programming-pragmatist-proverbs/
https://www.gingerbill.org/article/2020/05/31/programming-pragmatist-proverbs/
Sun, 31 May 2020 09:00:00 +0000
I was originally going to write a normal prose article regarding the topic of Pragmatism in Programming, however I thought I;d experiment in style by writing in a proverbial style.The following concepts express the school of thought that I subscribe to which I call Pragmatism in Programming.Proverbs written by Ginger BillThe concept of programmingProgramming is a tool to solve problems that you have in the domain of computersThe purpose of a program is, and ought to be, something that transforms data into other forms of dataTry to solve the specific ...

Relative Pointers
https://www.gingerbill.org/article/2020/05/17/relative-pointers/
https://www.gingerbill.org/article/2020/05/17/relative-pointers/
Sun, 17 May 2020 09:00:00 +0000
Absolute PointersPointers are a value type in programming languages that store a memory address. A pointer references a location in memory, and obtaining the value stored at this location in memory is known as dereferencing a pointer. Pointers are part and parcel of using languages like C, and are an extremely powerful tool. Pointers can be treated as a form of reference type, a value that refers to another typed value in memory.When most people think of a pointer, they usually treat them as if the pointer refers a physical memory address. I will call th...

A Reply to \_Let's stop copying C\_
https://www.gingerbill.org/article/2020/01/25/a-reply-to-lets-stop-copying-c/
https://www.gingerbill.org/article/2020/01/25/a-reply-to-lets-stop-copying-c/
Sat, 25 Jan 2020 09:00:00 +0000
I read the article Let;s stop copying C about 3 years ago. Recently someone brought it up again and I thought I would comment on the points being made. The article argues that newer languages ought not to copy the mistakes of C and comment on may of C;s mistakes.I recommend reading the original article first before reading this one as I will be commenting directly on the subsections of the article.A lot of my comments will be with regards to systems-level programming languages and not programming languages in general, and I will be referring back...

A Reply to \_The Road to Zig 1.0\_
https://www.gingerbill.org/article/2019/05/13/a-reply-to-the-road-to-zig/
https://www.gingerbill.org/article/2019/05/13/a-reply-to-the-road-to-zig/
Mon, 13 May 2019 09:00:00 +0000
It is lovely to see many new programming languages being produced to solve different issues that the designers are trying to address. Many of the new big ones include Rust, Go, and Swift, all of which are trying to solve different problems. There are some not-as-big programming languages that I recommend everyone to checkout:Odin For those who do not know, I am the creator of the Odin programming language.ScopesZigThey are all very good languages but with entirely different philosophies behind them. See if one suits your personal philosophy better!Whi...

A Quine in Odin
https://www.gingerbill.org/article/2019/03/10/quine-in-odin/
https://www.gingerbill.org/article/2019/03/10/quine-in-odin/
Sun, 10 Mar 2019 09:00:00 +0000
A Quine in Odin:

Memory Allocation Strategies - Part 4
https://www.gingerbill.org/article/2019/02/16/memory-allocation-strategies-004/
https://www.gingerbill.org/article/2019/02/16/memory-allocation-strategies-004/
Sat, 16 Feb 2019 09:00:00 +0000
Pool Allocators

Memory Allocation Strategies - Part 3
https://www.gingerbill.org/article/2019/02/15/memory-allocation-strategies-003/
https://www.gingerbill.org/article/2019/02/15/memory-allocation-strategies-003/
Fri, 15 Feb 2019 09:00:00 +0000
Stack Allocators

Memory Allocation Strategies - Part 2
https://www.gingerbill.org/article/2019/02/08/memory-allocation-strategies-002/
https://www.gingerbill.org/article/2019/02/08/memory-allocation-strategies-002/
Fri, 08 Feb 2019 09:00:00 +0000
Linear/Arena Allocators

Memory Allocation Strategies - Part 1
https://www.gingerbill.org/article/2019/02/01/memory-allocation-strategies-001/
https://www.gingerbill.org/article/2019/02/01/memory-allocation-strategies-001/
Fri, 01 Feb 2019 09:00:00 +0000
Thinking About Memory and Allocation

ExceptionsAnd Why Odin Will Never Have Them
https://www.gingerbill.org/article/2018/09/05/exceptions---and-why-odin-will-never-have-them/
https://www.gingerbill.org/article/2018/09/05/exceptions---and-why-odin-will-never-have-them/
Wed, 05 Sep 2018 09:00:00 +0000
Article was originally posted here: https://odin.handmade.network/blogs/p/3372-exceptions\_-\_and\_why\_odin\_will\_never\_have\_themOriginal Comments:https://github.com/odin-lang/Odin/issues/256#issuecomment-418073701https://github.com/odin-lang/Odin/issues/256#issuecomment-418289626There will never be software exceptions in the traditional sense. I hate the entire philosophy behind the concept. Go does have exceptions with the defer, panic, recover approach. They are weird on purpose. Odin could have something similar for exceptional cases. You can the exact s...

On the Aesthetics of the Syntax of Declarations
https://www.gingerbill.org/article/2018/03/12/on-the-aesthetics-of-the-syntax-of-declarations/
https://www.gingerbill.org/article/2018/03/12/on-the-aesthetics-of-the-syntax-of-declarations/
Mon, 12 Mar 2018 09:00:00 +0000
Article was originally posted here: https://odin.handmade.network/blogs/p/2994-on\_the\_aesthetics\_of\_the\_syntax\_of\_declarationsn.b. This is a philosophical article and not a technical article. There are no correct answers to the questions that I will pose -- only compromises.I;m considering what the ;best; declaration syntax would be. Historically, there have been two categories: which I will call qualifier-focused and type-focused. An example of qualifier-focused would be the Pascal family. An example of type-focused would be the C family. Od...

The Metaprogramming Dilemma
https://www.gingerbill.org/article/2016/12/01/the-metaprogramming-dilemma/
https://www.gingerbill.org/article/2016/12/01/the-metaprogramming-dilemma/
Thu, 01 Dec 2016 09:00:00 +0000
Article was originally posted here: https://odin.handmade.network/blogs/p/1723-the\_metaprogramming\_dilemmaDesigning this language has been difficult but fun. Two of the original goals of this language were simplicity and metaprogramming however, these together could be an oxymoron. But before I explain why, I first need to explain what I mean by ;metaprogramming;.Metaprogramming is an ;art; of writing programs to treats other programs as their data. This means that a program could generate, read, analyse, and transform code or even itself...

A Defer Statement For C++11
https://www.gingerbill.org/article/2015/08/19/defer-in-cpp/
https://www.gingerbill.org/article/2015/08/19/defer-in-cpp/
Wed, 19 Aug 2015 09:00:00 +0000
One of my favourite things about Go is the statement. The statement pushes a function call onto a list; the list of saved calls in called when the function returns.Imitating this is C++ is impossible. Instead of calling when the function calls, you can call at the end of scope; this is a better approach for C++. This is similar to how D has scope(exit).C++11 ImplementationExplanationOne of the most common examples for this in Go is files.In C/C++, before every return, must be called.You may say that RAII in C++ solves this issue but this would require...