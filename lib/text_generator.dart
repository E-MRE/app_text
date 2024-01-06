// ignore_for_file: lines_longer_than_80_chars

import 'package:super_annotations/super_annotations.dart';

part 'src/enums/fonts_weight.dart';
part 'src/enums/text_alignment.dart';
part 'src/enums/text_overflows.dart';
part 'src/models/text_generator_option.dart';
part 'src/enums/text_theme_style.dart';
part 'src/mixins/generated_text_extension.dart';
part 'src/mixins/text_generator_mixin.dart';
part 'src/mixins/text_style_generator_mixin.dart';

///This class generates custom texts using options.
final class TextGenerator extends ClassAnnotation
    with _GeneratedTextExtension, _TextGeneratorMixin, _TextStyleGeneratorMixin {
  ///This class generates custom texts using options.
  const TextGenerator(this.texts);

  ///Generated text options
  final List<TextGeneratorOption> texts;

  @override
  void apply(Class target, LibraryBuilder output) {
    output.body.add(generateAppTextClass(texts));
    output.body.add(getExtension);
    output.body.add(generateAppTextStyleClass(texts));
  }
}
