import 'package:honey/honey.dart';
import 'package:honey/src/runner/functions/and.dart';
import 'package:honey/src/runner/functions/click.dart';
import 'package:honey/src/runner/functions/contains.dart';
import 'package:honey/src/runner/functions/divide.dart';
import 'package:honey/src/runner/functions/ends_with.dart';
import 'package:honey/src/runner/functions/enter.dart';
import 'package:honey/src/runner/functions/equal.dart';
import 'package:honey/src/runner/functions/error.dart';
import 'package:honey/src/runner/functions/format.dart';
import 'package:honey/src/runner/functions/greater.dart';
import 'package:honey/src/runner/functions/less.dart';
import 'package:honey/src/runner/functions/matches.dart';
import 'package:honey/src/runner/functions/minus.dart';
import 'package:honey/src/runner/functions/multiply.dart';
import 'package:honey/src/runner/functions/not.dart';
import 'package:honey/src/runner/functions/now.dart';
import 'package:honey/src/runner/functions/or.dart';
import 'package:honey/src/runner/functions/output.dart';
import 'package:honey/src/runner/functions/plus.dart';
import 'package:honey/src/runner/functions/pow.dart';
import 'package:honey/src/runner/functions/property.dart';
import 'package:honey/src/runner/functions/starts_with.dart';
import 'package:honey/src/runner/functions/swipe.dart';
import 'package:honey/src/runner/functions/variable.dart';
import 'package:honey/src/runner/functions/verify.dart';
import 'package:honey/src/runner/functions/wait.dart';
import 'package:honey/src/runner/functions/widgets.dart';
import 'package:honey/src/utils.dart';

final defaultFunctions = <String, HoneyFunction>{
  F.and.name: and,
  F.click.name: click,
  F.contains.name: contains,
  F.divide.name: divide,
  F.endsWith.name: endsWith,
  F.enter.name: enter,
  F.equal.name: equal,
  F.error.name: error,
  F.format.name: format,
  F.greater.name: greater,
  F.less.name: less,
  F.matches.name: matches,
  F.minus.name: minus,
  F.multiply.name: multiply,
  F.not.name: not,
  F.now.name: now,
  F.or.name: or,
  F.output.name: output,
  F.plus.name: plus,
  F.pow.name: pow,
  F.property.name: property,
  F.startsWith.name: startsWith,
  F.swipe.name: swipe,
  F.variable.name: variable,
  F.verify.name: verify,
  F.wait.name: wait,
  F.widgets.name: widgets,
}.toCaseInsensitive();
