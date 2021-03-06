using EMIRT
using Base.Test

info("--------- test image functions -----------")

img = rand(UInt8, 128,128,256)

println("test image normalization ...")
println("serial version: ")
@time img3 = EMIRT.normalize_serial(img)
println("parallel version: ")
@time img2 = EMIRT.normalize(img)
@test all( img2 .== img3 )

println("test image mask")
@time EMIRT.image2mask(img; threshold = UInt8(128), sizeThreshold = UInt32(400))
