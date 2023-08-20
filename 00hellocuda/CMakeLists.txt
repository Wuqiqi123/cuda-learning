
add_executable(cuda_learning main.cu)

set_target_properties(cuda_learning PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
