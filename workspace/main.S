ADR_debut_prog:
# Charge 5 dans r0
    MOV r0, #5      
# Charge 2 dans r1
    MOV r1, #2      
# r0 + r1, resultat dans r2
    ADD r2, r0, r1  
# r2 + 4, resultat dans r3
    ADD r3, r2, #4  
# Saut inconditionnel jusqu'à ADR_saut1
    B ADR_saut1     

# Adresse 0x40
.org 0x40
ADR_saut1:  
# Charge 6 dans r2
    MOV r2, #6      
# r2 - 1, resultat dans r3
    SUB r3, r2, #1  
# saut conditionnel si egal zero jusqu'à ADR_saut2
    BEQ ADR_saut2   

# Adresse 0x60
.org 0x60
ADR_saut2:
# Charge 4 dans r0
    MOV r0, #4      
# Charge 128 dans r1
    MOV r1, #128    
# Saut inconditionnel jusqu'à ADR_debut_prog
    B ADR_debut_prog
