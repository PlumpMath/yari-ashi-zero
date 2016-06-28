c = -> console.log.apply console, arguments
_ = require 'lodash'


exports.why = "
For the SVG parser I need to pull out strings corresponding to attributes.  Thanks to Gabi for asking a similar problem during an interview, which is why this solution came to me now for this application.
"



get_attr_start_index = (html_rayy, attr_rayy) ->
    compare = (cursor) ->
        idx3 = 1
        while idx3 < attr_rayy.length
            if html_rayy[cursor] isnt attr_rayy[idx3]
                return false
            cursor++
            idx3++
        return true



    idx = 0
    while idx < html_rayy.length
        if html_rayy[idx] is attr_rayy[0]
            if compare(idx + 1) is true
                return idx
        idx++
    return -1

find_next_idx_of_quote = (start, html_rayy) ->
    cursor = start + 1
    while cursor < html_rayy.length
        if html_rayy[cursor] is '\"'
            return cursor
        cursor++
    return -1


find_next_idx_of_char = ({ start, html_rayy, char }) ->
    cursor = start + 1
    while cursor < html_rayy.length
        if html_rayy[cursor] is char
            return cursor
        cursor++
    return -1

exports.get_path_attr = ( {html_string} ) ->
    # c html_rayy
    html_rayy = html_string.split ''
    attr_rayy = 'path'.split ''

    pre = get_attr_start_index(html_rayy, attr_rayy) + attr_rayy.length
    d_loc = find_next_idx_of_char
        start: pre
        html_rayy: html_rayy
        char: 'd'
    start = find_next_idx_of_quote d_loc, html_rayy
    end = find_next_idx_of_quote start, html_rayy
    return html_rayy.slice(start, end + 1).join('')





exports.val_of_attr_string_in_html = ({ attr_string, html_string }) ->

    html_rayy = html_string.split ''

    attr_rayy = attr_string.split ''

    pre = get_attr_start_index(html_rayy, attr_rayy)
    if pre is -1
        return pre
    else
        start = pre + attr_rayy.length + 1

        # c 'start', start


        # c html_rayy[start]

        end = find_next_idx_of_quote(start, html_rayy) + 1

        c 'end', end

        sub_rayy = html_rayy.slice(start, end).join('')
        c 'sub_rayy', sub_rayy

        return sub_rayy
