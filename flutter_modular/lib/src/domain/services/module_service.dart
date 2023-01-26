import 'package:modular_core/modular_core.dart';
import 'package:result_dart/result_dart.dart';

abstract class ModuleService {
  Result<Unit, ModularError> start(Module module);
  Result<Unit, ModularError> bind(Module module);
  Result<Unit, ModularError> unbind<T extends Module>({Type? type});
  Result<Unit, ModularError> finish();
}
