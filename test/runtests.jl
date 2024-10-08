using Refraction
using Refraction: MaterialConstant, ConstantN
using Test

@testset "Refraction.jl" begin
    @testset "Constant" begin
        m = Material(1.0)
        @test m.materialdata == MaterialConstant{ConstantN}((1.0, NaN))
        @test m.wavelength_range == (-Inf, Inf)
        @test m.name == "unnamed"
    end

    @testset "Material Creation" begin
        m = Material("main/SiC/Shaffer")
        m2 = Material("main", "SiC", "Shaffer")
        @test m == m2
        @test m.name == "main/SiC/Shaffer"
    end
end
