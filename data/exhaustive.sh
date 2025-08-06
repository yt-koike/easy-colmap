#/bin/bash
mkdir /data/sparse
colmap feature_extractor --image_path /data/images --database_path /data/colmap.db --ImageReader.single_camera_per_folder 1
colmap exhaustive_matcher --database_path /data/colmap.db
for d in $(ls /data/sparse/); do
  mkdir -p /data/sparseTxt/$d
  colmap model_converter --input_path /data/sparse/$d --output_path /data/sparseTxt/$d --output_type TXT
done
