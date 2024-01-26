if (current_line < array_length(lines)) {
    draw_set_font(fnt_text_16_bold);
    draw_text(x, y, lines[current_line]);
}
