class Summary {
  double totalSum;
  String service;
  String rating;
  int numberOfPeople;
  static Map<String, double> qualityPercentages = {
    "Poor": 0,
    "Good": 0.025,
    "Perfect": 0.05
  };
  static Map<String, double> servicePercentages = {
    "Bar": 0.2,
    "Dining": 0.2,
    "Carryout": 0.12,
    "Gas": 0.15,
    "Housekeeping": 0.10,
    "Landscaping": 0.12,
    "Maintenance": 0.2,
    "Car": 0.2,
    "Barber Shop": 0.25,
    "Hair Salon": 0.25,
    "Nail Salon": 0.25,
    "Waxing": 0.15,
    "Training": 0.10
  };

  Summary(this.service, this.totalSum, this.rating, this.numberOfPeople);

  String getService() {
    return 'Service: ' + service;
  }

  String getRating() {
    return 'Rating: ' + rating;
  }

  String getCost() {
    return 'Cost: \$' + totalSum.toStringAsFixed(2);
  }

  String getTipPercentage() {
    return 'Tip Percentage: ' +
        ((servicePercentages[service] + qualityPercentages[rating]) * 100)
            .toStringAsFixed(2) +
        '%';
  }

  String getTipAmount() {
    return 'Tip Amount: \$' +
        (totalSum * (getFullPercentage() / 100)).toStringAsFixed(2);
  }

  String getFinalSum() {
    return 'Total: \$' +
        ((totalSum + (totalSum * (getFullPercentage() / 100))) / numberOfPeople)
            .toStringAsFixed(2);
  }

  String getFinalSumMultiple() {
    return 'Total: \$' +
        ((totalSum + (totalSum * (getFullPercentage() / 100))) / numberOfPeople)
            .toStringAsFixed(2) +
        ' per person';
  }

  double getFullPercentage() {
    return (servicePercentages[service] + qualityPercentages[rating]) * 100;
  }
}
