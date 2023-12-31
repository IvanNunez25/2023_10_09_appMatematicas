//
//  ViewController.m
//  2023_10_09_appMatematicas
//
//  Created by Ivanovicx Nuñez on 09/10/23.
//

#import "ViewController.h"
#import "Matematicas.h"

@interface ViewController ()

/* Text Field */
@property (weak, nonatomic) IBOutlet UITextField *textoNum1;
@property (weak, nonatomic) IBOutlet UITextField *textoNum2;

- (IBAction)textoNum1:(UITextField *)sender;
- (IBAction)textoNum2:(UITextField *)sender;

/* Label */
@property (weak, nonatomic) IBOutlet UILabel *labelResultado1;
@property (weak, nonatomic) IBOutlet UILabel *labelResultado2;

/* Slider */
@property (weak, nonatomic) IBOutlet UISlider *slider1;

- (IBAction)slider1:(UISlider *)sender;

/* Stepper */
@property (weak, nonatomic) IBOutlet UIStepper *stepper1;

- (IBAction)stepper1:(UIStepper *)sender;

/* Botones */

- (IBAction)botonPotencia:(UIButton *)sender;
- (IBAction)botonFactorial:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)stepper1:(UIStepper *)sender {
    
    [_textoNum1 setText:[NSString stringWithFormat:@"%d", (int) _stepper1.value]];
}

- (IBAction)slider1:(UISlider *)sender {
    
    [_textoNum2 setText:[NSString stringWithFormat:@"%d", (int) _slider1.value]];
}
- (IBAction)textoNum1:(UITextField *)sender {
    _stepper1.value = [_textoNum1.text intValue];
}

- (IBAction)textoNum2:(UITextField *)sender {
    
    _slider1.value = [_textoNum2.text intValue];
    
    
}

- (IBAction)botonFactorial:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    int factorial = [mat factorial:[_textoNum1.text intValue]];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%d", factorial];
    
    
    
}

- (IBAction)botonPotencia:(UIButton *)sender {
    
    float x = [_textoNum1.text floatValue];
    double potencia = pow(x, [_textoNum2.text doubleValue]);
    
    /* Sin redondear */
    self.labelResultado1.text =[NSString stringWithFormat:@"%lf", potencia];
    
    /* Redondeado
    _labelResultado2.text = [NSString stringWithFormat:@"%0.0f", potencia];
     */
}

- (IBAction)botonAlerta:(UIButton *)sender {
    
    UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Alert en iOS" message:@"Mensaje de Alerta" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *accionDefault = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){}];
    
    [alerta addAction: accionDefault];
    
    [self presentViewController:alerta animated:YES completion:nil];
}

- (IBAction)botonSuma:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    NSNumber *suma = [mat sumar:[NSNumber numberWithDouble:[_textoNum1.text doubleValue]] withB:[NSNumber numberWithDouble:[_textoNum2.text doubleValue]]];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%@", suma];
}

- (IBAction)botonResta:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    NSNumber *resta = [mat restar:[NSNumber numberWithDouble:[_textoNum1.text doubleValue]] withB:[NSNumber numberWithDouble:[_textoNum2.text doubleValue]]];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%@", resta];
}

- (IBAction)botonMultiplicacion:(id)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    NSNumber *resultado = [mat multiplyA:[NSNumber numberWithDouble:[_textoNum1.text doubleValue]] withB:[NSNumber numberWithDouble:[_textoNum2.text doubleValue]]];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%@", resultado];
}

- (IBAction)botonDivision:(id)sender {
    
    double division = [_textoNum1.text doubleValue] / [_textoNum2.text doubleValue];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%f", division];
    
}

- (IBAction)botonSeno:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%f", [mat seno:[_textoNum1.text doubleValue]]];
}

- (IBAction)botonCoseno:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%f", [mat coseno:[_textoNum1.text doubleValue]]];
}

- (IBAction)botonTangente:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    _labelResultado1.text = [NSString stringWithFormat:@"%f", [mat tangente:[_textoNum1.text doubleValue]]];
}

- (IBAction)botonPrimo:(UIButton *)sender {
    
    Matematicas *mat = [[Matematicas alloc] init];
    
    NSString *mensaje = [[NSString alloc] init];
    if([mat esPrimo:[_textoNum1.text intValue]])
        mensaje = @"Es primo";
    else
        mensaje = @"No es primo";
    
    _labelResultado2.text = mensaje;
}

- (IBAction)botonPI:(UIButton *)sender {
}

- (IBAction)botonEuler:(UIButton *)sender {
}

@end
