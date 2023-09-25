caption_json = fileread('/Users/haoyu/Downloads/product_data.json');
caption_table = jsondecode(caption_json);

name_table = fieldnames(caption_table);

for k = 1:size(name_table)
    name = name_table(k);
    name = name{1};
    
    Discriptions = caption_table.(name);
    
    name_old = ['images/', name(2:end), '.jpg'];
    name_new = ['images/', Discriptions.title, '.jpg'];
    
    movefile(name_old, name_new);
end
