(function () {
 this.seconds = function () { return this * 1000; };
 this.minutes = function () { return this.seconds() * 60; };
 this.hours = function () { return this.minutes() * 60; };
 this.days = function () { return this.hours() * 24; };
 this.weeks = function () { return this.days() * 7; };
}).apply(Number.prototype);
