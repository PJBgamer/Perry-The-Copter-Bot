if file_exists(SaveFile) file_delete(SaveFile);
var file;
file = file_text_open_write(SaveFile);
file_text_write_real(file,room);
file_text_close(file);