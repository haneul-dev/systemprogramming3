.global binary_finder
.type binary_finder, %function

binary_finder:
    stp x29, x30, [sp, #-16]!       
    mov x29, sp                     
    mov w3, 0                       // start = 0
    sub w4, w1, 1                   // end = total - 1

loop:
    cmp w3, w4                      
    bgt not_found                  

    add w5, w3, w4                  // middle = start + end
    asr w5, w5, 1                   // middle /= 2

    ldr w6, [x0, x5, lsl #2]        
    cmp w6, w2                      
    beq found                       

    blt move_right                  
    sub w4, w5, 1                   
    b loop                          

move_right:
    add w3, w5, 1                   // start = middle + 1
    b loop                          

found:
    mov w0, w5                     
    b end                           
not_found:
    mov w0, -1                     

end:
    ldp x29, x30, [sp], #16        
    ret                             
