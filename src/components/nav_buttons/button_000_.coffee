module.exports = button = rr
    rect_t : (s_rect) ->
        tMat = @props.tMat
        { width, height, x, y } = s_rect
        origin = vec2.transformMat3 vec2.create(), [x, y], tMat
        x: origin[0]
        y: origin[1]
        width: width * tMat[0]
        height: height * tMat[4]

    render : ->
        tMat = @props.tMat
        { x, y, width, height } = @rect_t
            x: 0
            y: 0
            width: 2
            height: 1
        svg
            width: '100%'
            height: '100%'
            ,
            rect
                width: width
                height: height
                x: x
                y: y
                fill: 'black'
                opacity: .3
                onMouseOver: @props.show_dropdown
                onMouseOut: @props.hide_dropdown
            # a
            #     xlinkHref: 'https://twitter.com/yari_ashi_zero'
            #     xlinkShow: 'new'
            #     ,
            #     image
            #         x: x + (.15 * @props.tMat[0])
            #         y: y + (.15 * @props.tMat[4])
            #         width: .6 * @props.tMat[4]
            #         height: .6 * @props.tMat[4]
            #         xlinkHref: 'svgs/twitter.svg'
            #         onMouseOver: @props.show_dropdown
            #         onMouseOut: @props.hide_dropdown
