//
//   MyShaders.metal
//  metullll
//
//  Created by Grady Stanton on 7/17/20.
//  Copyright © 2020 grades. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

struct VertexIn {
    float3 position [[ attribute(0) ]];
    float4 color [[ attribute(1) ]];
};

struct RasterizerData {
    float4 position [[ position ]];
    float4 color;
};

vertex RasterizerData basic_vertex_shader(const VertexIn vIn [[ stage_in ]],
                                  uint vertexID [[ vertex_id ]]) {
    RasterizerData rd;
    
    rd.position = float4(vIn.position, 1);
    rd.color = vIn .color;
    
    return rd;
}



fragment half4 basic_fragment_shader(RasterizerData rd [[ stage_in ]]) {
    
    float4 color = rd.color;
    
    return half4(color.r, color.b, color.g, color.a);
}
 
