module.exports = nav_bar_top = rr
    render: ->
        tMat = @props.t_mat
        nav_bar_height = @props.height * .1
        font_size = nav_bar_height * .38
        text_y = (nav_bar_height * .5) + (.5 * font_size)
        height = @props.height
        svg
            width: '100%'
            height: '100%'
        ,
            rect
                x: '0%'
                y: '0%'
                width: '50%'
                height: nav_bar_height
                fill: 'white'
                # stroke: 'black'
                # opacity: if @props.location is '/' then .7 else .2
                opacity: .2
                cursor: 'pointer'
                onClick:-> browserHistory.push 'professional'
                # onClick: @props.on_home_click
                ,
            text
                x: @props.width * .025
                y: text_y
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .38
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional'
                ,
                "PROFESSIONAL"
            rect
                x: '50%'
                y: '0%'
                width: '50%'
                height: nav_bar_height
                fill: 'white'
                # stroke: 'black'
                # opacity: if @props.location is '/about' then .7 else .2
                opacity: .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/amateur'
                # onClick: @props.on_about_click
            text
                x: @props.width * .50 + @props.width * .025
                y: text_y
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .46
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/amateur'
                ,
                "AMATEUR"
