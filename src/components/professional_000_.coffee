module.exports = professional = rr
    render: ->
        svg
            width: '100%'
            height: '100%'
        ,
            top_nav_000_container()
            text
                x: '6%'
                y: '24%'
                fontSize: .03 * @props.height
                fill: 'darkgrey'
                ,
                "Professional"
            portfolio @props
