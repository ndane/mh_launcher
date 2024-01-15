import 'dart:ffi';

import 'package:ffi/ffi.dart';

final _aclapi = DynamicLibrary.open("aclapi.dll");

// TODO: Finish implementing this
final _GetNamedSecurityInfoA = _aclapi.lookupFunction<
    Int32 Function(Pointer<Utf16> pObjectName),
    int Function(Pointer<Utf16> pObjectName)>("GetNamedSecurityInfoA");
