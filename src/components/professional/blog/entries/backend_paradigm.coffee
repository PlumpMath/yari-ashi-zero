exports.metadata = metadata =
    date_created: new Date(2016, 7 - 2, 30)
    date_updated: new Date(2016, 7 - 2, 30)
    title: "My backend /serverside paradigm"
    preview_text: "time to get back to some backend work, discussion"
    tags: ["nonsense", "dynamic routing", "other stuff"]



injectable = (that) ->
    {theme_name, height , width} = that.props
    p_st =
        style:
            margin: .01 * height
            fontSize: .016 * height

    st0 = ->  # todo make these globals or required
        style:
            fontFamily: "Times"
            textAlign: 'left'
            color: text_color
            margin: .01 * height
            lineHeight: .0016 * height
            letterSpacing: .002 * width
            fontSize: .017 * height

    {text_color , background_color} = theme_definitions[theme_name]

    div
        style:
            color: text_color
            # height: '100%'
        ,
        h6 null, "created: #{metadata.date_created.toDateString()}, updated: #{metadata.date_updated.toDateString()}"
        h4 null,
            "
This is a testt for templating and moving common setup code to boilerplate file
            "
        div null,
            p st0(), "
under construction:  things to discuss:

            "

            p st0(), "I'd love to get a nice contract to be responsible for design and build of a large scalable fullstack system.  Ideally I'd be able to hire another person within the first three months and another few more after that. "
            p st0(), "
 I'm under no illusions that I have the absolute best practices for over the entire stack for such a system -- large corporate systems like Facebook, Twitter etc are combined efforts of hundreds of specialists, and I'm just one generalist.
            "
            p st0(), "
But that's no cause for defeatism. Startups make gamechanging solutions and disrupt technology culture in good ways because people are willing to put new solutions on the table.
            "
            p st0(), "
Startups are built by optimistic realists who have a generalist orientation and want to build working systems. As an outsider and passionate neophyte a few years ago, I built a working realtime fullstack system for Bartr in Tel Aviv. We failed for funding reasons but my accomplishment was real, and still brings me confidence and joy.  A few years on, I'm still impassioned to build new crazy systems, I'm sure I could do muchMUCHMUCH much better now.  The web and social/work-media remains an exciting frontier ripe for groundbreaking and society altering/improving innovations.  Small (real) startups are the place to make this happen because these are the units willing to see the future differently and take risks to manifest that, to set themselves apart.

            "
            p st0(), "
So while I might not solve every technical problem in as optimised a way as the large composite team efforts of the majors around town, and maybe I haven't grokked all the latest best practices in every nook and cranny of the technical domain (who can?), it's extremely likely that working in the context of a (real, not a 'startup' offshoot of a major) startup I/we will hit upon elegant solutions in the process of experimentation, R&D, prototyping, that the consensus process hasn't yet located; this is something happening *all the time*.

            "
            p st0(), "
So, we (even a small team of a few dedicated developers working in concert) can build a great, competitive, resilient, scalable fullstack system. Maybe not optimised in every way as good as the majors, but also maybe having some features and optimisations they haven't considered or risked implementation of.  The best practices of yesteryear may become todays liabilities, which larger organisations continue implementing because of inertia, ... etc etc. I say it's exciting to be part of small & agile companies solving common problems from scratch in new and exciting ways. We can do it!!! ...Okay, enough preamble, let's get to it!
            "
        div null,
            h4 null, "what we are trying to build :: problem description."
            p st0(), "
Maybe we are trying to build an alternative economy social-media social-economy application.  We want to connect people in a given geographical space and allow them to interact economically.
            "
            h4 null, "solution outline, feature approximation and toolset ideas"
            ul st0(),
                li null, "
Realtime obviously.  The system must interact with users by the second.  Hence websockets, but not only websockets, we want WebRTC to enable a P2P topology to augment our network in various ways.
            "
                li null, "
Trusted transactions:  Blockchain audited transactions so that fraud is eliminated in a resilient P2P way without relying solely on integrity of central server.
                "
                li null, "
Lots of data analytics on backend and data visualisation interface on frontend for users :: Heavy use of Redis clusters for data, pushing data back to clients for D3 or WebGL based visualisations.  Not strictly speaking necessary for this application, but this is a app featureset I'm advocating for the future across many domains.
                "
                li null, "
Progressive webapp.  Lightweight loading, highly configurable for a minimal feel for those who want it.  Heavier features available on demand.  Webpack assets on demand for dynamic asset loading flexibility.
                "
                li null, "
multi platform :: the same system on browser with distinct browser versions for different devices, react-native versions for iOS and Android, and possibly desktop native version with Electron. "
                li null, "
security, scalability, resiliency.  :: node clusters, redis clusters,  immutable data stores for perfect historical reconstruction on demand.  utilisation of hash history (blockchain tech) for secured transaction integrity.

"
            p st0(), "
Great so basically:  NodeJS server(s), CDN delivery for statics, Primus for WebSockets, WebRTC for audio interface and P2P connectivity, Webpack for dynamic/progressive code requires. D3 and WebGL components for user interface enhancements, Geolocation and maps for facilitating meetups, React for webapp, ReactNative for mobile app, Electron for desktop native app.  Redis Redis and Redis for data layer.  For starters.  Later may add PostgreSQL/Cassandra/ApacheKafka stuff to mix, but not necessary to get started. Just Redis clustering fine.
            "
            p st0(), "
Okay so that's the whole stack, now about the backend in particular:  Again, NodeJS, Primus, Redis/Lua.  Most of what used to be called model logic (MVC paradigm) will be implemented in Lua under the Redis servers.

            "
            p st0(), "
The model layer will be implemented as a lambda architecture, meaning there are no destructive transactions.  The data layer is a giant heap upon which you can add messages. Determining state is a matter of running reducer functions over this heap, (with shortcut reductions over prev_states where appropriate).  Determining history is a simple matter of digging a little deeper and running same reducers over that deeper layer.
            "
            p st0(), "
Stream paradigm :: has really come of age.  RxJS on the server side ?  Probably yes.  Lodash FP on the server side ?  probably yes.
            "
            p st0(), "
CoffeeScript and Lua.  CoffeeScript is the best thing since wheatgrass juice, and Lua is what runs inside Redis.  With these two sceptres ye shall rule the realm.
            "
            p st0(), " that is all for now. ;)"





# template = require('../test_template_003.coffee')
#
# exports.component = template(injectable)

exports.component = require('../test_template_003.coffee')(injectable)
