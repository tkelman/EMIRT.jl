
export EMImage, Segmentation, AffinityMap, ParamDict, SegMST, SegmentPairs, SegmentPairAffinities, ScoreCurve, ScoreCurves
export Timg, Tseg, Tsgm, Tec, Tecs

# type of raw image
typealias EMImage Array{UInt8,3}

# type of segmentation
typealias Segmentation Array{UInt32,3}

# type of affinity map
typealias AffinityMap Array{Float32,4}

# type of parameter dictionary
typealias ParamDict Dict{Symbol, Dict{Symbol, Any}}

typealias SegmentPairs Array{UInt32,2}

typealias SegmentPairAffinities Vector{Float32}

type SegMST
    segmentation::Segmentation
    segmentPairs::SegmentPairs
    segmentPairAffinities::SegmentPairAffinities
end

# score curve
typealias ScoreCurve Dict{Symbol, Vector{Float32}}
# score curves
typealias ScoreCurves Dict{Symbol, ScoreCurve}


# defined for backward compatibility
typealias Timg  EMImage
typealias Tseg  Segmentation
typealias Taff  AffinityMap
typealias Tsgm  SegMST
typealias Tec   ScoreCurve
typealias Tecs  ScoreCurves
