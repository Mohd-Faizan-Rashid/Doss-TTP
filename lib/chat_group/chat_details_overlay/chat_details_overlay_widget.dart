import '/backend/backend.dart';
import '/chat_group/delete_dialog/delete_dialog_widget.dart';
import '/chat_group/user_list_small/user_list_small_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'chat_details_overlay_model.dart';
export 'chat_details_overlay_model.dart';

class ChatDetailsOverlayWidget extends StatefulWidget {
  const ChatDetailsOverlayWidget({
    super.key,
    required this.chatRef,
  });

  final ChatsRecord? chatRef;

  @override
  State<ChatDetailsOverlayWidget> createState() =>
      _ChatDetailsOverlayWidgetState();
}

class _ChatDetailsOverlayWidgetState extends State<ChatDetailsOverlayWidget> {
  late ChatDetailsOverlayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatDetailsOverlayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 4.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 700.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '8055zt71' /* Chat Details */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Sora',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderRadius: 12.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent4,
                            icon: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'CHAT_DETAILS_OVERLAY_close_rounded_ICN_O');
                              logFirebaseEvent('IconButton_bottom_sheet');
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 4.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'a29ixyl8' /* Group Chat ID:  */,
                              ),
                              style: const TextStyle(),
                            ),
                            TextSpan(
                              text: valueOrDefault<String>(
                                widget.chatRef?.groupChatId.toString(),
                                '--',
                              ),
                              style: const TextStyle(
                                color: Color(0xFFEE7800),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ard48rly' /* In this chat */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final chatUsers =
                                widget.chatRef?.users.toList() ?? [];
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: chatUsers.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 8.0),
                              itemBuilder: (context, chatUsersIndex) {
                                final chatUsersItem = chatUsers[chatUsersIndex];
                                return FutureBuilder<UsersRecord>(
                                  future: UsersRecord.getDocumentOnce(
                                      chatUsersItem),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 30.0,
                                          height: 30.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final userListSmallUsersRecord =
                                        snapshot.data!;
                                    return wrapWithModel(
                                      model:
                                          _model.userListSmallModels.getModel(
                                        chatUsersItem.id,
                                        chatUsersIndex,
                                      ),
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: UserListSmallWidget(
                                        key: Key(
                                          'Keyxry_${chatUsersItem.id}',
                                        ),
                                        userRef: userListSmallUsersRecord,
                                        action: () async {},
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: wrapWithModel(
                              model: _model.deleteDialogModel,
                              updateCallback: () => setState(() {}),
                              updateOnChange: true,
                              child: DeleteDialogWidget(
                                chatList: widget.chatRef,
                                action: () async {
                                  logFirebaseEvent(
                                      'CHAT_DETAILS_OVERLAY_Container_wxncaf86_');
                                  logFirebaseEvent(
                                      'deleteDialog_close_dialog,_drawer,_etc');
                                  Navigator.pop(context);
                                  logFirebaseEvent('deleteDialog_navigate_to');

                                  context.pushNamed(
                                    'chat_2_InviteUsers',
                                    queryParameters: {
                                      'chatRef': serializeParam(
                                        widget.chatRef,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'chatRef': widget.chatRef,
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 250),
                                      ),
                                    },
                                  );
                                },
                                deleteAction: () async {
                                  logFirebaseEvent(
                                      'CHAT_DETAILS_OVERLAY_Container_wxncaf86_');
                                  logFirebaseEvent('deleteDialog_backend_call');
                                  await widget.chatRef!.reference.delete();
                                  logFirebaseEvent(
                                      'deleteDialog_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'You have successfully deleted a chat!',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      duration: const Duration(milliseconds: 3000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).error,
                                    ),
                                  );
                                  logFirebaseEvent('deleteDialog_navigate_to');

                                  context.pushNamed(
                                    'chat_2_main',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 220),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 44.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'CHAT_DETAILS_OVERLAY_CLOSE_BTN_ON_TAP');
                          logFirebaseEvent('Button_bottom_sheet');
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'k7x9l467' /* Close */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 52.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              44.0, 0.0, 44.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Sora',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          hoverColor: FlutterFlowTheme.of(context).alternate,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                          hoverElevation: 3.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
