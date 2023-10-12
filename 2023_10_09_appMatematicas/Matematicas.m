//
//  Matematicas.m
//  2023_08_29_appMatematicas
//
//  Created by Ivanovicx Nuñez on 29/08/23.
//

#import "Matematicas.h"

@implementation Matematicas

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

- (void)multiplyA:(NSNumber *)a withB:(NSNumber *)b resultadoEn:(NSNumber *)resul {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    
    resul = [NSNumber numberWithFloat:product];
}
/*
- (void)multiplya:(NSNumber *)a withB:(NSNumber *)b resultadoEn:(NSNumber **)resul {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    
    *resul = [NSNumber numberWithFloat:product];
}
*/
- (void)multiplyAa:(NSNumber *)a withB:(NSNumber *)b resultadoEn:(double *)resul {
    double number1 = [a doubleValue];
    double number2 = [b doubleValue];
    *resul = number1 * number2;
}

- (bool)esPrimo: (unsigned long long)numero {
    
    if(numero <= 1)
        return false;
    
    unsigned long long i = 2;
    while(i < numero){
        if(!(numero % i))
            return false;
        
        i++;
    }
    
    return true;
}

- (bool)esPrimo: (unsigned long long)numero conLimite:(unsigned long long *)limite {
    
    if(numero <= 1)
        return false;
    
    unsigned long long i = 2;
    while(i < numero){
        if(!(numero % i)){
            *limite = i;
            return false;
        }
        
        i++;
    }
    
    *limite = 0;
    return true;
}

- (int)factorial: (int) num {
    
    if(num == 0 || num == 1)
        return 1;
    else
        return num * [self factorial:num -1];
}

- (double)factorial2: (double) n{
    if(n == 0 || n== 1)
        return 1;
    else
        return n * [self factorial2:n-1];
}

- (int)factorialIterativo: (int) num {
    int f = 1;
    if(num==0 || num==1)
        return f;
    
    for(int i=1; i<=num; i++){
        f *= i;
    }
    
    return f;
}

/* Uso de seno, coseno y tangente */

- (double) seno: (double) numero {
    return sin(numero);
}

- (double) coseno: (double) numero {
    return cos(numero);
}

- (double) tangente: (double) numero {
    return tan(numero);
}

- (double) calcularCatetoOpuesto: (double)angulo hipotenusa: (double)hip{
    return hip * sin(angulo);
}

- (double) calcularCatetoAdyacente: (double)angulo hipotenusa: (double)hip{
    return hip * cos(angulo);
}

- (double) calcularHipotenusa: (double)angulo cateto: (double)cateto{
    return cateto * tan(angulo);
}

/* Serie PI y Serie de Euler */

- (double) seriePI: (int)cantidad{
    
    float signo = 1, pi = 0, suma = 0;
    for(int i = 0; i < cantidad; i++){
        suma = signo / ((2*i) + 1);
        pi = pi + suma;
        signo = signo * (-1);
    }
    
    return pi * 4;

}

- (double) serieEuler: (int)cantidad{

    double e = 1;
    int i = 1;
    
    while(i < cantidad){
        e += (1 / [self factorial:i]);
        i++;
    }
    
    return e;
}

- (NSNumber *)sumar: (NSNumber *)a withB: (NSNumber *)b {
    // Utilizar objetos NSNumber
    NSNumber *num1 = [NSNumber numberWithInt:a.intValue];
    NSNumber *num2 = [NSNumber numberWithInt:b.intValue];
    NSNumber *oper = [NSNumber numberWithInt:num1.intValue + num2.intValue];
    
    NSNumber *resul = [NSNumber numberWithInt:oper.intValue];
    return resul;
}

- (NSNumber *)restar: (NSNumber *)a withB: (NSNumber *)b{
    NSNumber *num1 = [NSNumber numberWithInt:a.intValue];
    NSNumber *num2 = [NSNumber numberWithInt:b.intValue];
    NSNumber *oper = [NSNumber numberWithInt:num1.intValue - num2.intValue];
    
    NSNumber *resul = [NSNumber numberWithInt:oper.intValue];
    return resul;
}

@end

