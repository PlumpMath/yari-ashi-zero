module.exports = AI_Coltrane = rr
    render: ->
        main1 =
            style:
                color: 'grey'
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: "#{Math.pow(window.devicePixelRatio, 1.4) * 99.4}%"
                fill: 'black'
            top_nav_000_container()
            # text
            #     x: '6%'
            #     y: '24%'
            #     fontSize: .06 * @props.height
            #     fill: 'darkgrey'
            #     ,
            #     "bloggish"
            foreignObject
                x: '0%'
                y: '14%'
                width: '100%'
                height: '80%'
                overflow: 'auto'
                # style:
                #     overflow: 'auto'
                #     background: 'blue'
                ,
                div
                    style:
                        height: '100%'
                        # overflow: 'auto'
                    ,

                    h3 main1, "inducing synaesthesia with AI composition/improvisation tied to sensor data flows"
                    h6 main1, "updated: 8 June, 2016"

                    p main1,
                    "
    The proposal envisions an AI module which composes music algorithmically.  Algorithmic composition of music is not an original idea; the idea here is that the AI module doesn't compose _ex-nihilo_ but rather improvises the music in realtime according to an 'inspiration' provided by a data stream.
                    "
                    p main1,
                    "
    (In the original conception, the data stream is provided by spatial sensors providing a precise account of the local environment, but in the more general conception the data could be pretty much anything, provided its compelling to the listener/subject.)
                    "
                    p main1,
                    "
    The hypothesis is that, provided a sufficiently adept/effective AI compositor/improviser module, a blind person could, with sufficient training, learn to see their surrounding environment with high degree of acuity.  This would be induced, beneficial, functionally significant synaesthesia.
                    "
                    p main1,
                    "
    The program would be considered a success when a totally blind person could play a game of frisbee with the help of the unit.  This would be a noninvasive and creative way of giving sight to the blind.
                    "
                    p main1,
                    "
    Ultimately, because the data could be anything, the system could allow extra-natural-sensory facilities to normally sighted people.  For example, in a military context, an operator might be tied up to a system featuring a millimeter wave radar, scanning in 360 degrees.  The operator would have their normal visual channel unimpeded by further monitors, and would be able to process the additional sensory input via the induced synaesthesia.
                    "
                    p main1,
                    "
    It is hypothesised to use open-air headphones (like high-end Grado) so as not to interfere overly with the ambient aural perception operator/subject in the environment.
                    "
                    p main1,
                    "
    In all cases, it is assumed that a period of entrainment would be required. It is hypothesised that higher brain-plasticity in the subject/operators would confer a significant advantage in this training process.
                    "
                    h4 main1, "Some points on requirements"
                    ul main1,

                        li null,
                            h5 null, "Of the components:"
                        ol main1,
                            li null, "(sensor apparatus and data-memory-modeling)"
                            li null, "(AI improviser module)"
                            li null, "stereo playback module"
                        p null,
                            "
    Of these three, only the 2nd is an unsolved problem. Component 1 is a 'solved problem' in the military and space exploration domain, only remaining tasks are minuaturisation and optimisation for the specific application. Many channels, both active and passive, can be exploited.  It may be that the specifics of particular applications provide opportunities for distinct solutions.  Component 3 also is of course solved trivially, but project success is contingent and dependent on leveraging the latent human capacity for great acuity and sensitivity, facilities blighted in the general population by the clamor and tumult of our societies and (mental) environments; therefore we'll want to work with very high quality signal processing equipment to secure audiophile grade signal transmission.
                            "
                        li null,
                        "Strength of AI required:  It is asserted that the highest 'Strong' AI is not required to implement this proposal."

                    p main1,
                        em null,
                            "
            (In ~April 2001, living in Tempe AZ, this idea occured to me.  In ~2008-2009 while at UMass Boston I was able to do an independent study to flesh out the idea a little bit. I wasn't able to do much with it.)
                            "





        )
