mkdir /data/sparse
colmap feature_extractor --image_path /data/images --database_path /data/colmap.db
colmap exhaustive_matcher --database_path /data/colmap.db
colmap mapper --image_path /data/images --database_path /data/colmap.db --output_path /data/sparse/
#colmap model_converter --input_path /data/sparse/0 --output_path /data/sparse_txt/ --output_type TXT
