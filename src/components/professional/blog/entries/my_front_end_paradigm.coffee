\
exports.metadata = metadata =
    date_created: new Date(2016, 6 - 1, 27)
    date_updated: new Date(2016, 6 - 1, 27)
    title: "My frontend paradigm"
    preview_text: "I've been building SPAs for four years now; what have I learned and what do I look forward to ?"
    tags: ["nonsense", "dynamic routing", "other stuff"]

top_nav = rc_generic(require('../../top_nav_001_.coffee'))
table_contents_nav = rc_generic(require('../table_contents_nav.coffee'))

exports.component = entry = rr

    render: ->
        {theme, height } = @props
        {text_color , background_color} = theme_definitions[theme]
        # main1 =
        #     style:
        #         color: theme.text_color
        svg
            width: '100%'
            height: '200%'
            ,
            rect
                x: 0
                y: 0
                width: '100%'
                height: "100%"
                fill: background_color

            foreignObject
                x: '30%'
                y: '10%'
                width: '50%'
                height: '100%'
                ,
                div
                    style:
                        color: text_color
                        # height: '100%'
                    ,
                    h6 null, "created: #{metadata.date_created.toDateString()}, updated: #{metadata.date_updated.toDateString()}"
                    h1 null,
                        "
My Frontend Paradigm
                        "
                    p null,
                        "
I've been developing single page applications (SPAs) for some years now."
                    p null,
                        "
It was only a few years ago that surfing the web -- for me is text navigation -- involved perpetual annoyance at the few-second waiting times for intra-site navigation to render, as every navigation action --within a site-- demanded a new server request, could take 5 seconds could take 30... ; to add insult to injury, depending on caching even a page I'd just been reading could require a fresh request.  It was clear to me at least (I remember when I thought I had a relatively original idea here!) that it would be easy to preload what was mostly just text, and make the navigation simply a client side calculation.  Later on I learned that other people had the same idea, and they called it the singe-page-app (SPA). Today I've been programming SPAs for 3+ years, first with Jade templates and JQuery, then Angular-1 for a year, and then two years now of React, this is a reality.  There are many options for frameworks; I recommend React as best all around.
                        "
                    h3 null, "Reflections on lessons learned, comments on how I put together my 'apps'"
                    ul null,
                        li null,
                            "
React:  There may be some similarly good options out there, but they are probably for obscure langs like Erlang without much support for the whole Npm ecosystem.  React does the one thing right that needed to be done right: declarative views, enabling pure functional coding of view over parametric state.  Redux takes care of state, and that's all you need.  Angular-1 was a nightmare, poorly conceived.  The greatest strength of Angular-2 is that it can be used in a stripped down way as a React clone, with the VDOM and none of the nonsense toys they add in to confuse aspiring architects, like arbitrary 2-way binding, watching, observables.  Related sidenote: I'm interested in RxJS, but haven't had much chance to use it.
                            "
                        li null,
                            "
SVG over HTML/CSS. HTML/CSS are tools for typesetting, they are not all purspose tools for building graphical components or a graphical environment.  HTML/CSS are typesetting tools.  Typesetting tools deal with type, meaning the written word. If you want to make a progress bar, program an SVG; you want a button, or a tooltip window animation, best be working with SVG.  Sure, an experienced HTML/CSS hacker can make these things happen with their **typesetting** tool, but that's an observation equivalent to noticing that we can implement a pretty good MonaLisa with ASCII art. Sure, doesn't make it the best tool.  If you want to make a graphical user interface (GUI) with a rectangular lightboard, you need to think more generally and isometrically in terms of planar space, geometry, etc.  Cartesian coordinates, transforms, shapes, polygons, paths, these kinds of things.  For this in the web-browser there is a most awesome toolset, the SVG API.  It's really awesome and flexible.  I organise my app so that the root element and most of the main components be SVG components.  Any substantial text content within the app can be rendered as HTML/CSS by using the SVG API's `foreignObject` function.
                            "
                        li null,
                            "
Pure functions over templates, pure functions over JSX.  My markup is mercilessly free from JSX, I implement the React render function using pure functions.  Just CoffeeScript.  Rendering a `div` is just a function called `div`.  Just pure CoffeeScript, and you can do the same thing in JS vanilla.  I don't have anything against JSX, but it's a messy protocol that is not optimal in spite of being widely adopted.
                            "
                        li null,
                            "
CoffeeScript over ES6/ES7.  Mosnt all the features found in ES6/7 were in CoffeeScript already years ago, the few that weren't like generators have found speedy implementation.  When ES20 adopts a terse Python/Ruby style syntax, then it will be `==` CoffeeScript, and the great internecine war will come to a bizarre conclusion.  Until then, I'll just stay ahead of the game by using ES20 (CoffeeScript) now.  Unless I'm contributing to OS project written in ES6 or doing professional duties; in such situations no complaints and no problem, I am fine with it. Just a preference and best practice, imho.  TypeScript: Carries ES6's pointless syntactic verbosity baggage, but facilitates solidifying type/parameter/function-signature protocol across an application stack.  This is attractive feature to those building large systems, but I think similar function can be hand-rolled by carefull application of development protocol. I'm against systematizing it in a language; you can test for it as a separated concern, thus avoiding overburdening the language and primary coding activity.
                            "
                        li null,
                            "
React, Redux, ImmutableJS, Webpack.  I don't use the DevTools; I think if I need something like that I'll add it in adhoc-- it's not so difficult to do.  I don't use HotModuleReload, prefer to manually reload as I save files a bunch of times a minute and don't need so much background stuff going on everytime I do that.
                            "
                    h3 null, "Things that I haven't mastered yet, are still goals "
                    ul null,
                        li null,
                            "
 WebRTC :: Make P2P happen, for gaming, for business communications topologies, distributed systems generally.
                            "
                        li null,
                            "
WebWorkers / concurrency :: I've gotten some primitive WebWorkers tasks started, but I've never implemented hardcore concurrency solution on a computationally demanding webapp, and I think this is a gold standard to strive towards.  There are so many processors in modern devices, we need to leverage them or we are not providing full value.
                            "
                        li null,
                            "
Progressive and responsive:  I'm very happy with what my SVG methodology can provide in terms of responsive visual presentation algorithms.  Computational SVG is incredibly flexible, and together with homogeneous coordinate driven composed matrix transforms offer tremendous options and workflow arrangement.  But I haven't actually had a chance to implement much of this.  I know the potential is there, next need a project which demands it. Similarly with progressive webapps, I know how to implement Webpack assets on demand, but haven't had a project yet requiring an app of suffcient size to demand it.  Exciting stuff, look forward to working with it.
                            "
                        li null,
                            "
WebRTC again:  Did you know WebRTC has the API for audio in the browser , not to mention the microphone ?  While it's true that misplaced audio can be annoying in a website, when we're talking about more immersive apps (think Slack) there is a lot of room for creative features that take advantage of audio inputs and outputs.
                            "
                        li null,
                            "
WebGL:  I'm just getting started with WebGL.  It's tremendous and beautiful.  I hope to implement a flight simulator in the browser before years end.
                            "


            table_contents_nav()
            top_nav()
            bars_nav_001()
