#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

vertex float4 basicVertex(
    const device packed_float3* vertices [[ buffer(0) ]],
    unsigned int vertexID [[ vertex_id ]])
{
    return float4(vertices[vertexID], 1.0);
}

// world position, texture position requires float precision
// vector, HDR color requires half precision.
fragment half4 basicFragment()
{
    return half4(1.0);
}
