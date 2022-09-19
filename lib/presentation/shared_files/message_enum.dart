enum MessageEnum {
  text('text'),
  image('image'),
  ;

  const MessageEnum(this.type);
  final String type;
}

// Using an extension
// Enhanced enums

extension ConvertMessage on String {
  MessageEnum toEnum() {
    switch (this) {
      case 'image':
        return MessageEnum.image;
      case 'text':
        return MessageEnum.text;
      default:
        return MessageEnum.text;
    }
  }
}
