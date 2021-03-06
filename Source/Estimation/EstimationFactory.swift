struct EstimationFactory {

  static func create(_ strategy: EstimationStrategy) -> Estimator {
    let estimator: Estimator

    switch strategy {
    case .quadradic:
      estimator = QuadradicEstimator()
    case .barycentric:
      estimator = BarycentricEstimator()
    case .quinnsFirst:
      estimator = QuinnsFirstEstimator()
    case .quinnsSecond:
      estimator = QuinnsSecondEstimator()
    case .jains:
      estimator = JainsEstimator()
    case .hps:
      estimator = HPSEstimator()
    default:
      estimator = MaxValueEstimator()
    }

    return estimator
  }
}
