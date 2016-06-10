module.exports = nav_bar_top = rr
    render: ->
        tMat = @props.t_mat
        nav_bar_height = @props.height * .05
        font_size = nav_bar_height * .38
        text_y = (nav_bar_height * .5) + (.5 * font_size)
        height = @props.height
        grad_000 = shortid()
        filter_000 = shortid()
        grad_001 = shortid()
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
                        offset: '23%'
                        stopColor: 'hsl(213, 84%, 73%)'
                    stop
                        offset: '77%'
                        stopColor: 'hsl(250, 88%, 78%)'
                linearGradient
                    id: grad_001
                    stop
                        offset: '23%'
                        stopColor: 'hsl(250, 84%, 73%)'
                    stop
                        offset: '77%'
                        stopColor: 'hsl(290, 88%, 78%)'
            rect
                x: '0%'
                y: nav_bar_height
                width: '25%'
                height: nav_bar_height
                fill: "url(##{grad_000})"
                # stroke: 'black'
                opacity: if @props.location is '/' then .7 else .9
                cursor: 'pointer'
                # onClick:-> browserHistory.push '/'
                # onClick: @props.on_home_click
                ,
            text
                x: @props.width * .095
                y: nav_bar_height + text_y
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: 'black'
                cursor: 'pointer'
                # onClick:-> browserHistory.push '/'
                ,
                "ARTICLES"
            rect
                x: '25%'
                y: nav_bar_height
                width: '25%'
                height: nav_bar_height
                fill: "url(##{grad_001})"
                # stroke: 'black'
                opacity: if @props.location is '/about' then .7 else .9
                cursor: 'pointer'
                # onClick:-> browserHistory.push '/about'
                # onClick: @props.on_about_click
            text
                x: @props.width * .25 + @props.width * .075
                y: nav_bar_height + text_y
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .1
                fill: 'black'
                cursor: 'pointer'
                # onClick:-> browserHistory.push '/about'
                ,

            # rect
            #     x: '50%'
            #     y: nav_bar_height
            #     width: '25%'
            #     height: nav_bar_height
            #     fill: 'white'
            #     # stroke: 'black'
            #     opacity: if @props.location is '/professional' then .7 else .2
            #     cursor: 'pointer'
            #     # onClick:-> browserHistory.push '/professional'
            # text
            #     x: @props.width * .5 + @props.width * .045
            #     y: nav_bar_height + text_y
            #     'font-family': 'Sans'
            #     fontSize: font_size
            #     textLength: @props.width * .16
            #     fill: 'grey'
            #     cursor: 'pointer'
            #     onClick:-> browserHistory.push '/professional'
            #     ,
            #     "&CETERA"
            # rect
            #     x: '75%'
            #     y: nav_bar_height
            #     width: '25%'
            #     height: nav_bar_height
            #     fill: 'white'
            #     # stroke: 'black'
            #     cursor: 'pointer'
            #     opacity: if @props.location is '/amateur' then .7 else .2
            #     onClick:-> browserHistory.push '/amateur'
            #     ,
            # text
            #     x: @props.width * .75 + @props.width * .075
            #     y: nav_bar_height + text_y
            #     'font-family': 'Sans'
            #     fontSize: font_size
            #     textLength: @props.width * .1
            #     fill: 'grey'
            #     cursor: 'pointer'
            #     onClick:-> browserHistory.push '/amateur'
            #     ,
            #     "WHAT ELSE"
            # j_Mat = [
            #     .2, 0, 0,
            #     0, .1, 0,
            #     .6 * @props.width, 0, 1
            # ]
            # kMat = mat3.multiply mat3.create(), j_Mat, @props.t_mat
            # button_000
            #     tMat: kMat
            #     show_dropdown: => @setState {show_dropdown_0: true}
            #     hide_dropdown: => @setState {show_dropdown_0: false}
            # j_Mat_0 = [
            #     .2, 0, 0,
            #     0, .1, 0,
            #     .6 * @props.width, .1 * @props.height, 1
            # ]
            # if @state.show_dropdown_0
            #     kMat_0 = mat3.multiply mat3.create(), j_Mat_0, @props.t_mat
            #     dropdown_000
            #         tMat: kMat_0


        )
