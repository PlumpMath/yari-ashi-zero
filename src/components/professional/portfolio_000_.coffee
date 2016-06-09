module.exports = portfolio = rr
    getInitialState: ->
        if env is 'development'
            minesweeper_images =
                image_000: '/dev_assets/images/minesweeper_image_000.png'
        else if env is 'production'
            minesweeper_images =
                image_000: 'https://1.downloader.disk.yandex.ru/preview/d83bb8b4d2bb84a0a643792d4d87998892f10990b0fcfc1cd1acd8a648fbd003/inf/Q-7P1j4LbrmPm75ZRfxTPm8RmXfMb0hIIQmK0FiacBLiP4IORrR-qRMZIjv4CVPVt46nUnUvp8cWQQHpk2W4UA%3D%3D?uid=369180034&filename=Screenshot%20from%202016-06-09%2015-46-36.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&tknv=v2&size=600x554'
            return _.assign {}, minesweeper_images
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
                xlinkHref: "https://github.com/kulicuu/MineSweeper"
                xlinkShow: 'new'
                ,
                image
                    x: .2 * @props.width
                    y: .2 * @props.height
                    width: .2 * @props.width
                    height: .2 * @props.height
                    xlinkHref: @state.image_000
                text
                    x: .2 * @props.width
                    y: (.4 * @props.height)
                    fill: 'white'
                    ,
                    "MineSweeper"


            rect
                x: '20%'
                y: '80%'
                width: '10%'
                height: '10%'
                fill: 'blue'
                opacity: .34




        )
