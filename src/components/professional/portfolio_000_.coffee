module.exports = portfolio = rr
    getInitialState: ->
        image_001: '/images/minesweeper_image_000.png'
        # if env is 'development'
        #     minesweeper_images =
        #         image_001: '/dev_assets/images/minesweeper_image_000.png'
        # else if env is 'production'
        #     minesweeper_images =
        #         image_001: "https://s70h.storage.yandex.net/rdisk/ae851a76a8c626a45c65f197f7ac912907f7dd320837f3d21b25dfae0db6a519/5759bfe2/Q-7P1j4LbrmPm75ZRfxTPhw-MRRMPs-dNIu3SFXLbskpLuy9l3pzG-fE1aVOk01wkzS29CkYUsj87BxkC9nG-g==?uid=0&filename=Screenshot%20from%202016-06-09%2015-46-36.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&fsize=760883&hid=f07e982d0bd8f4f3665282aca4f53fa5&media_type=image&tknv=v2&etag=37c13602a2213d5aa38871584bcd3664&rtoken=OPXGM5Uc4jPQ&force_default=no&ycrid=na-1fb2753fef015828e657e3a6193a50b8-downloader1d&ts=534dd38263c80&s=db4adc2582b06839f4fb54d3872f0100d9489108307bc45d2e70d5971b4aa477&bp=/34/3/data-0.5:40806801262:760883"

            # return _.assign {}, minesweeper_images
    render: ->
        svg1(


            rect
                x: '80%'
                y: '80%'
                width: '10%'
                height: '10%'
                fill: 'red'
                opacity: .34
            a
                xlinkHref: "http://minesweeper-svg.herokuapp.com/"
                xlinkShow: 'new'
                ,
                image
                    x: .2 * @props.width
                    y: .6 * @props.height
                    width: .2 * @props.width
                    height: .2 * @props.height
                    xlinkHref: @state.image_001
                text
                    x: .2 * @props.width
                    y: (.8 * @props.height)
                    fill: 'white'
                    ,
                    "play MineSweeper"
            a
                xlinkHref: "https://github.com/kulicuu/MineSweeper"
                xlinkShow: 'new'
                ,
                text
                    x: .2 * @props.width
                    y: .9 * @props.height
                    fill: 'white'
                    ,
                    "source code at github"









        )
