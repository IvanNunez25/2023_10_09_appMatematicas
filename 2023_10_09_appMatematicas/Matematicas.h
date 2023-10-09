//
//  Matematicas.h
//  2023_08_29_appMatematicas
//
//  Created by Usuario invitado on 29/08/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Matematicas : NSObject

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;

- (void)multiplyA:(NSNumber *)a withB:(NSNumber *)b resultadoEn:(NSNumber *)resul;

/* Propuesta de solución para regresar el resultado a traves de un parametro */

- (void)multiplya:(NSNumber *)a withB:(NSNumber *)b resultadoEn:(NSNumber **)resul;

- (void)multiplyAa:(NSNumber *)a withB:(NSNumber *)b resultadoEn:(double *)resul;

/* Sumar y Restar */

- (NSNumber *)sumar: (NSNumber *)a withB: (NSNumber *)b;

- (NSNumber *)restar: (NSNumber *)a withB: (NSNumber *)b;

/* Método para saber si un número es primo */

- (bool)esPrimo: (unsigned long long)numero;

- (bool)esPrimo: (unsigned long long)numero conLimite:(unsigned long long *)limite;

/* Método para sacar el factorial de un número */

- (int)factorial: (int) num;

- (double)factorial2: (double) n;

- (int)factorialIterativo: (int) num;

/* Seno, coseno, tangente */

- (double) calcularCatetoOpuesto: (double)angulo hipotenusa: (double)hip;

- (double) calcularCatetoAdyacente: (double)angulo hipotenusa: (double)hip;

- (double) calcularHipotenusa: (double)angulo cateto: (double)cateto;

/* Serie PI y Euler */

- (double) seriePI: (int)cantidad;

- (double) serieEuler: (int)cantidad;

@end

NS_ASSUME_NONNULL_END

