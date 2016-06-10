mid_nav_000_container = rc_generic(require('./mid_nav_000_.coffee'))

module.exports = amateur = rr
    render: ->

        grad_000 = shortid() ; filter_000 = shortid()
        main1 =
            style:
                color: 'grey'

        ln1 = (src) ->
            style:
                cursor: 'pointer'
            onClick: -> browserHistory.push src
        svg1(
            defs
                filter
                    id: filter_000
                    feGaussianBlur
                        in: "SourceGraphic"
                        result: "blurOut"
                        stdDeviation: 5
                    feOffset
                        in: "blurOut"
                        result: "dropBlur"
                        dx: 3
                        dy: 4
                linearGradient
                    id: grad_000
                    stop
                        offset: '0%'
                        stopColor: 'hsl(33, 44%, 77%)'
                    stop
                        offset: '92%'
                        stopColor: 'hsl(280, 66%, 78%)'
                    # stop
                    #     offset:"98%"
                    #     stopColor:"orange"
            top_nav_000_container()
            mid_nav_000_container()
            # rect
            #     x: 0
            #     y: .1 * @props.height
            #     width: '100%'
            #     height: .9 * @props.height
            #     fill: "url(##{grad_000})"
            #     filter: "url(##{filter_000})"
            # text
            #     x: '6%'
            #     y: '24%'
            #     fontSize: .03 * @props.height
            #     fill: 'darkgrey'
            #     ,
            #     "Amateur"
            foreignObject
                x: '6%'
                y: '14%'
                width: '80%'
                height: '60%'
                # style:
                #     background: 'blue'
                ,
                div
                    style:
                        color: 'grey'
                    ,
                    h4 main1, "amateur section home"
                    p null,
                        # style:
                        #     # fontSize: .02 * @props.height
                        #     color: 'grey'
                        # ,
                        "
etymology of the word 'amateur',
                        "
                    p null,
                        "
cultural, philosophical, political, scientific, artistic commentary & work
                        "
                    p null,
                        "
initially sections could include 'articles', 'work'
                        "

                    h4 main1, "ttd: articles to write"
                    ul main1,
                        li null, "prerequisite fundamental elementary analytic philosophic statement: with respect to the mutability of tokens. how the same words can mean different things to different people at different times, leading to confoundment in discourse. this needs an abreviation so it and fallacies related can be referred to easily"
                        li null, "related to 1 above, revisiting the old idea for renewal of the social sciences by a program of extension of formal language"
                        li null, "zionism, my signed zionism, in defense or explanation of zionism, a short and simple story, some discussion of modern religious zionist chauvinism, this would necessarily be a complex set of articles because there is the general case, and then there is my specific place between 2 or 3 worlds, ambivalent position.  i don't spend a lot of time obsessing on these issues but necesarry to address because sticky issue"
                        li null, "how israel (both the state and the nation) benefit relatively from the multipolar world; in spite of some of their oligarchic constituents faring relatively worse under it than the monopolar planetary imperial pyramid scam which seemed up until recently a done deal."
                        li null, "how russian national interests are better served by the existence of israel as a regional power as opposed to the disintegration of diminution of israel. distinguish regional power from regional hegemon."
                        li null, "america, what it's become, what it could have been, what it could yet be, what is in particular my american patriotism. probably a set"
                        li null, "random thoughts on war in the style of clauswitz, military engineering, military philosophy, a set"
                        li null, "futurism: eco-systemics, terraforming, ai [this is ill formed but these are some issues i'll be touching]"
                        li null, "my environmentalism: forests & oceans, with reference to the aesthetic vs operational judgements distinction referenced below"
                        li null, "distinguishing between esthetic judgements and operational judgements.  counterfactuals, possible worlds, pragmatic politics"
                        li null, "karma, religion, kabala, heraclitus, valhalla, justice/honour vs kindness/benevolence"
                        li null, "tai chi, yoga, music"
                        li null, "'homelessness' (vs) 'living outside', nomadism, unhealthy or dysfunctional people vs healthy people, practical discussion, property"
                        li null, "class and culture wars, "
                        li null, "libertarianism, socialism, capitalism, mutual exclusivity, modern macro-economic theory"
                        li null, "the mental environment, bad music, artificial light"
                        li null, "future of humanity :: broad :: set :: relate to algorithmic composition :: Penrose and (potential if latent) superiority of biological intelligence :: huxley, leary, penrose"
                        li null, "modern russian culture, demographic characteristics, national security, eastern development"
                        li null, "learning about eastern orthodox christianity, making peace with my maternal family's evangelical protestantism, contemplating its admixture with prechristian (but very western) cultural dynamics"
                        li null, "nietzche, deleuze"
                    h4 main1, "some drafts already"
                    ul main1,
                        li ln1('/amateur/articles/terraforming'), "Terraforming ideas"
                        li ln1('/amateur/articles/ai_coltrane'), "Algorithmic composition"








        )
