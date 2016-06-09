

button_000 = require './nav_buttons/button_000_.coffee'
dropdown_000 = require './nav_buttons/dropdown_000_.coffee'
module.exports = nav_bar_top = rr

    getInitialState: ->
        show_dropdown_0: false

    render: ->
        tMat = @props.t_mat

        height = @props.height
        svg
            width: '100%'
            height: '100%'
        ,
            rect
                x: '0%'
                y: '0%'
                width: '25%'
                height: '10%'
                fill: 'white'
                stroke: 'black'
                opacity: if @props.location is '/' then .7 else .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                # onClick: @props.on_home_click
                ,
            text
                x: '2%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .14
                fill: 'black'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                ,
                "HOME"
            rect
                x: '25%'
                y: '0%'
                width: '25%'
                height: '10%'
                fill: 'white'
                stroke: 'black'
                opacity: if @props.location is '/about' then .7 else .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/about'
                # onClick: @props.on_about_click
            text
                x: '27%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .14
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/about'
                ,
                "ABOUT"
            rect
                x: '50%'
                y: '0%'
                width: '25%'
                height: '10%'
                fill: 'white'
                stroke: 'black'
                opacity: if @props.location is '/professional' then .7 else .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional'
            text
                x: '52%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .23
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional'
                ,
                "PROFESSIONAL"
            # rect
            #     x: '60%'
            #     y: '0%'
            #     width: '20%'
            #     height: '10%'
            #     fill: 'white'
            #     opacity: .5
            rect
                x: '75%'
                y: '0%'
                width: '25%'
                height: '10%'
                fill: 'white'
                stroke: 'black'
                cursor: 'pointer'
                opacity: if @props.location is '/amateur' then .7 else .2
                onClick:-> browserHistory.push '/amateur'
                ,
            text
                x: '77%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .23
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/amateur'
                ,
                "AMATEUR"
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
