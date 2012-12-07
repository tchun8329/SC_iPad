var file;
file = file_text_open_read(argument[0]);
for(j = 0; j < room_width/32; j += 1)
    for(k = 0; k < room_height/32; k += 1)
    {
        global.collisionGrid[k,j] = file_text_read_real(file);
        file_text_readln(file);
        global.heightGrid[k,j] = file_text_read_real(file);
        file_text_readln(file);
    }
file_text_close(file);
