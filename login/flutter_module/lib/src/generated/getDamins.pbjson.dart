///
//  Generated code. Do not modify.
//  source: getDamins.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const DaminRequest$json = const {
  '1': 'DaminRequest',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 9, '10': 'cmd'},
    const {'1': 'udid', '3': 2, '4': 1, '5': 9, '10': 'udid'},
    const {'1': 'user_name', '3': 3, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'ticket', '3': 4, '4': 1, '5': 9, '10': 'ticket'},
  ],
};

const DaminReply$json = const {
  '1': 'DaminReply',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'domains', '3': 3, '4': 3, '5': 11, '6': '.auth.Domain', '10': 'domains'},
  ],
};

const Domain$json = const {
  '1': 'Domain',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'attempt', '3': 3, '4': 1, '5': 5, '10': 'attempt'},
    const {'1': 'displayName', '3': 4, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'salaryPerHour', '3': 6, '4': 1, '5': 5, '10': 'salaryPerHour'},
    const {'1': 'email', '3': 7, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 8, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'tel', '3': 9, '4': 1, '5': 9, '10': 'tel'},
    const {'1': 'creationTime', '3': 10, '4': 1, '5': 9, '10': 'creationTime'},
    const {'1': 'lastModified', '3': 11, '4': 1, '5': 9, '10': 'lastModified'},
    const {'1': 'status', '3': 12, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'addressInfo', '3': 13, '4': 1, '5': 11, '6': '.auth.AddressInfo', '10': 'addressInfo'},
    const {'1': 'bookOnline', '3': 14, '4': 1, '5': 8, '10': 'bookOnline'},
    const {'1': 'appointmentVisit', '3': 15, '4': 1, '5': 8, '10': 'appointmentVisit'},
    const {'1': 'seniorTotal', '3': 16, '4': 1, '5': 5, '10': 'seniorTotal'},
    const {'1': 'wokerTotal', '3': 18, '4': 1, '5': 5, '10': 'wokerTotal'},
    const {'1': 'bedTotal', '3': 19, '4': 1, '5': 5, '10': 'bedTotal'},
    const {'1': 'withdrawFlag', '3': 20, '4': 1, '5': 8, '10': 'withdrawFlag'},
    const {'1': 'type', '3': 21, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'businessMode', '3': 22, '4': 1, '5': 5, '10': 'businessMode'},
  ],
};

const AddressInfo$json = const {
  '1': 'AddressInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'streetLine', '3': 2, '4': 1, '5': 9, '10': 'streetLine'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'state', '3': 4, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'country', '3': 5, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'zipCode', '3': 6, '4': 1, '5': 9, '10': 'zipCode'},
    const {'1': 'lat', '3': 7, '4': 1, '5': 9, '10': 'lat'},
    const {'1': 'lng', '3': 8, '4': 1, '5': 9, '10': 'lng'},
    const {'1': 'district', '3': 9, '4': 1, '5': 9, '10': 'district'},
  ],
};

