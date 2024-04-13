import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txtUsername widget.
  FocusNode? txtUsernameFocusNode;
  TextEditingController? txtUsernameController;
  String? Function(BuildContext, String?)? txtUsernameControllerValidator;
  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneController;
  String? Function(BuildContext, String?)? txtPhoneControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtUsernameFocusNode?.dispose();
    txtUsernameController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();
  }
}
