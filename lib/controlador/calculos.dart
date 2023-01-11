class CalculoFemenino {
  final int arranquef;
  final int envionf;
  final int biatlonf;
  final int tonelage;
  final int repeticiones;
  final double pesomedio;
  final double IMR;
  final double maxarranque;
  final double maxenvion;
  final double maxbitlon;
  final double peso;


  CalculoFemenino(this.arranquef, this.envionf, this.biatlonf, this.tonelage,
      this.repeticiones, this.peso,this.pesomedio, this.maxarranque, this.maxenvion,
      this.maxbitlon, this.IMR);

  List<int> lista1 = [11, 12, 13, 14, 15, 16, 17, 20, 21];


  int calcularBiatlonF() {
    int biatlonf = arranquef + envionf;
    return biatlonf;
  }
  double calcularTonelage() {
    double tonF = peso * repeticiones;
    return tonF;
  }

  double calcularPesoMedioF() {
    double pesomedio = tonelage / repeticiones;
    return pesomedio;
  }

  double calcularIntencidadMediaRelativaArranque_F() {
    double ResIMRarranque = (pesomedio* 100)/maxarranque;
    return ResIMRarranque;
  }

  double calcularIntencidadMediaRelativaEnvion_F() {
    double ResIMRenvion = (pesomedio* 100)/maxenvion;
    return ResIMRenvion;
  }

  double calcularIntencidadMediaRelativaBiatlon_F() {
    double ResIMRbiatlon = (pesomedio* 100)/maxbitlon;
    return ResIMRbiatlon;
  }

  double calcularCoeficienteIntencidad_F() {
    double Ki = (pesomedio * 100) / maxbitlon;
    return Ki;
  }
/* para calcular las cantidades de micro necesito obtener la edad de base datos
si la edad <= 17-20 los microciclo son 44-48 y las repeticiones 13500-14500
si la edad >20 los microciclo son 44-48 y las repeticiones 14500-15500

seciones * semana 4-9

repeticiones minimas y maxima 17-20 1000 1750
repeticiones minimas y maxima >20 1000 1900

edad de 17-20 repeticiones diarias con pesas arranque 10-30, envion 10-30, cuclilla 15-35, Halones 15-25  otros 12-20
edad >20 repeticiones diarias con pesas arranque 10-30, envion 10-30, cuclilla 15-35, Halones 15-25  otros 12-20

edad de 17-20 intensidad media relativa arranque 50-67, envion 50-66, cuclilla 50-67 halones 70-88
edad >20 intensidad media relativa arranque 50-69, envion 50-68, cuclilla 50-69 halones 70-90
*/


}


  class CalculoMasculino {
  final int envionm;
  final int arranquem;
  final int biatlonm;

  CalculoMasculino(this.envionm, this.arranquem, this.biatlonm);

  List<int> lista1 = [1, 2, 3, 4, 5];

  int calcular() {
    int biatlonm = envionm + arranquem;
    return biatlonm;
  }
}