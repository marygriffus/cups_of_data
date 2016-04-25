# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bras = [
  {brand: "Panache Cleo", model: "Lucy Balconette", image_url: "http://is3.barenecessities.com/is/image/BareNecessities/cle5851_wht_1?$Main375x440$", style: "balconette",
    bra_sizes: [{label_size: "28D", band_length: 57.9, stretched_band: 74.5, cup_width: 11.1, cup_depth: 17.6, cup_separation: 2.7, gore_height: 4.0, num_hooks: 2, rating_aesthetic: 4, rating_comfort: 3, rating_quality: 4},
                {label_size: "30G", band_length: 61.2, stretched_band: 79.4, cup_width: 14.1, cup_depth: 27.1, cup_separation: 2.5, gore_height: 6.4, num_hooks: 2, rating_aesthetic: 3, rating_comfort: 5, rating_quality: 2}]},
  {brand: "Bravissimo", model: "Alana", image_url: "http://2.bp.blogspot.com/-D2H2LMuk3NU/TuD2ZR8f5PI/AAAAAAAAAR8/PjsAAyQmcAY/s1600/alana.jpg", style: "balconette",
    bra_sizes: [{label_size: "28FF", band_length: 59, stretched_band: 75.5, cup_width: 13.6, cup_depth: 23.9, cup_separation: 2.0, gore_height: 7.9, num_hooks: 2, rating_aesthetic: 4, rating_comfort: 5, rating_quality: 4},
                {label_size: "32H", band_length: 65.1, stretched_band: 86.9, cup_width: 15.8, cup_depth: 30.0, cup_separation: 2.1, gore_height: 9.7, num_hooks: 3, rating_aesthetic: 5, rating_comfort: 3, rating_quality: 4}]},
  {brand: "Wacoal", model: "Red Carpet Convertible", image_url: "http://s7d5.scene7.com/is/image/WacoalAmerica/854119_NN?qlt=85,1&op_sharpen=1&resMode=bilin&op_usm=1,1,9,0&rect=0,0,261,344&scl=5.816860465116279&id=KsprJ2", style: "strapless",
    bra_sizes: [{label_size: "36DD", band_length: 74.6, stretched_band: 93, cup_width: 14.6, cup_depth: 22.9, cup_separation: 2.5, gore_height: 7.6, num_hooks: 4, rating_aesthetic: 2, rating_comfort: 3, rating_quality: 5},
                {label_size: "32G", band_length: 66.2, stretched_band: 85.1, cup_width: 15.2, cup_depth: 23.9, cup_separation: 2.3, gore_height: 8.2, num_hooks: 4, rating_aesthetic: 5, rating_comfort: 4, rating_quality: 5}]},
  {brand: "Chantelle", model: "Chic Sexy Plunge", image_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=90232557", style: "regular",
    bra_sizes: [{label_size: "70E", band_length: 64.3, stretched_band: 82.2, cup_width: 13.8, cup_depth: 20.5, cup_separation: 1.9, gore_height: 3.3, num_hooks: 3, rating_aesthetic: 5, rating_comfort: 5, rating_quality: 5},
                {label_size: "85E", band_length: 83.6, stretched_band: 103.7, cup_width: 17.5, cup_depth: 28.6, cup_separation: 2.3, gore_height: 6.3, num_hooks: 2, rating_aesthetic: 4, rating_comfort: 5, rating_quality: 5}]},
  {brand: "Aerie", model: "Katie Lightly Lined", image_url: "https://pics.ae.com/is/image/aeo/4442_7557_890_f?$cat-main_small$", style: "t-shirt",
    bra_sizes: [{label_size: "32A", band_length: 63.1, stretched_band: 85.9, cup_width: 10.8, cup_depth: 14, cup_separation: 3, gore_height: 1.7, num_hooks: 2, rating_aesthetic: 2, rating_comfort: 3, rating_quality: 4},
                {label_size: "34D", band_length: 63.5, stretched_band: 87.6, cup_width: 14, cup_depth: 21, cup_separation: 2.5, gore_height: 3.2, num_hooks: 1, rating_aesthetic: 3, rating_comfort: 3, rating_quality: 3}]},
  {brand: "Comexim", model: "Ingrid Plunge", image_url: "http://3.bp.blogspot.com/-_bawJySUZmA/VktZubWcNKI/AAAAAAAA3D0/YI2oTNqU0Vc/s1600/comexim_bra_soutien_sutia%25CC%2583_ingrid_60HH_28G_tamanho_certo_tamanhos_grandes_bra_fitting.jpg", style: "padded",
    bra_sizes: [{label_size: "60F", band_length: 55.5, stretched_band: 71.9, cup_width: 12, cup_depth: 19.4, cup_separation: 1.9, gore_height: 5.9, num_hooks: 2, rating_aesthetic: 5, rating_comfort: 5, rating_quality: 5},
                {label_size: "80K", band_length: 66.4, stretched_band: 93.2, cup_width: 16.6, cup_depth: 28.7, cup_separation: 2.3, gore_height: 7.4, num_hooks: 3, rating_aesthetic: 5, rating_comfort: 5, rating_quality: 4}]},
  {brand: "Freya", model: "Patsy Padded Half Cup", image_url: "http://assets.biggerbras.us/productpics4/fry/fry-aa1223/super/01-fry-aa1223.jpg", style: "padded",
    bra_sizes: [{label_size: "36E", band_length: 76.9, stretched_band: 93.7, cup_width: 14.8, cup_depth: 25.5, cup_separation: 2, gore_height: 7, num_hooks: 2, rating_aesthetic: 3, rating_comfort: 4, rating_quality: 4},
                {label_size: "36GG", band_length: 77.1, stretched_band: 101.6, cup_width: 17.8, cup_depth: 31.1, cup_separation: 2, gore_height: 8.3, num_hooks: 2, rating_aesthetic: 4, rating_comfort: 5, rating_quality: 3}]},
  {brand: "Ewa Michalak", model: "Ch Onyks", image_url:"http://www.ewa-michalak.pl/eng_pm_Biustonosz-CH-Onyks-Mulitiway-141_5.jpg", style: "padded",
    bra_sizes: [{label_size: "60E", band_length: 54.7, stretched_band: 72.4, cup_width: 11.7, cup_depth: 19.5, cup_separation: 1.6, gore_height: 5, num_hooks: 2, rating_aesthetic: 5, rating_comfort: 5, rating_quality: 5},
                {label_size: "70GG", band_length: 63.7, stretched_band: 82.4, cup_width: 15.2, cup_depth: 28.8, cup_separation: 2.3, gore_height: 9.4, num_hooks: 2, rating_aesthetic: 4, rating_comfort: 5, rating_quality: 5}]}
          ]

bras.each do |bra|
  b = Bra.create!(brand: bra[:brand], model: bra[:model], image_url: bra[:image_url], style: bra[:style])
  bra[:bra_sizes].each do |size|
    BraSize.create!(label_size: size[:label_size], band_length: size[:band_length], stretched_band: size[:stretched_band], cup_width: size[:cup_width], cup_depth: size[:cup_depth], cup_separation: size[:cup_separation], gore_height: size[:gore_height], num_hooks: size[:num_hooks], rating_aesthetic: size[:rating_aesthetic], rating_comfort: size[:rating_comfort], rating_quality: size[:rating_quality], bra: b)
  end
end
