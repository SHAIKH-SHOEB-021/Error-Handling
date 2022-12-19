import UIKit


enum DivisionError: Error {
  case dividedByZero
}
func division(numerator: Int, denominator: Int) throws {
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
    
  else {
    let result = numerator / denominator
    print(result)
  }
}
do {
  try division(numerator: 10, denominator: 5)
  print("Valid Division")
}
catch DivisionError.dividedByZero {
  print("Error: Denominator cannot be 0")
}
