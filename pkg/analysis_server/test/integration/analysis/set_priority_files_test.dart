// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analysis_server/protocol/protocol_generated.dart';
import 'package:test/test.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../support/integration_tests.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(SetPriorityFilesTest);
    defineReflectiveTests(SetPriorityFilesTest_UseCFE);
  });
}

@reflectiveTest
class SetPriorityFilesTest extends AbstractAnalysisServerIntegrationTest {
  test_options() async {
    String pathname = sourcePath('foo.dart');
    writeFile(pathname, 'class Foo { void baz() {} }');
    writeFile(sourcePath('bar.dart'), 'class Bar { void baz() {} }');

    standardAnalysisSetup();
    await sendAnalysisSetPriorityFiles([pathname]);

    ServerStatusParams status = await analysisFinished;
    expect(status.analysis.isAnalyzing, false);
  }
}

@reflectiveTest
class SetPriorityFilesTest_UseCFE extends SetPriorityFilesTest {
  @override
  bool get useCFE => true;

  @failingTest
  @override
  test_options() {
    fail('Test fails with CFE');
  }
}
