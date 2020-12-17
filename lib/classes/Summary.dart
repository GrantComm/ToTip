class Summary {
  double totalSum;
  String service;
  String location;
  String rating;
  double percentage = 0.20;
  double finalSum = 0.00;
  Summary(this.service, this.totalSum, this.rating, this.location);

  set _percentage(String service) {
    if (this.service == 'Dining') {
      this.percentage = 0.10;
    }
  }

  set _finalSum(String services) {
    this.finalSum = this.percentage * this.totalSum;
  }
}
