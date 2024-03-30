import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'languages_model.dart';
export 'languages_model.dart';

class LanguagesWidget extends StatefulWidget {
  const LanguagesWidget({super.key});

  @override
  State<LanguagesWidget> createState() => _LanguagesWidgetState();
}

class _LanguagesWidgetState extends State<LanguagesWidget> {
  late LanguagesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguagesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Container(
              width: 50.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '3fhdwc7m' /* Choose by option */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('LANGUAGES_COMP_Icon_degozm6m_ON_TAP');
                    logFirebaseEvent('Icon_navigate_back');
                    context.safePop();
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        FFLocalizations.of(context).getText(
                          'gxp8mq50' /* Urdu */,
                        ),
                        FFLocalizations.of(context).getText(
                          'klxd9yi8' /* Marathi */,
                        ),
                        FFLocalizations.of(context).getText(
                          '2kmnyfkt' /* Tamil */,
                        ),
                        FFLocalizations.of(context).getText(
                          'vg7cg2vm' /* English */,
                        ),
                        FFLocalizations.of(context).getText(
                          '6l44u3f7' /* Hindi */,
                        ),
                        FFLocalizations.of(context).getText(
                          '2s2kih2s' /* Gujarati */,
                        ),
                        FFLocalizations.of(context).getText(
                          'kettc1oa' /* Punjabi */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 300.0,
                      height: 56.0,
                      searchHintTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                      searchTextStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Roboto',
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      hintText: FFLocalizations.of(context).getText(
                        '8itw41m9' /* languages option.. */,
                      ),
                      searchHintText: FFLocalizations.of(context).getText(
                        'mf60ybuh' /* Search for avaliable languages */,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 24.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: true,
                      isMultiSelect: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('LANGUAGES_COMP_CONFIRM_BTN_ON_TAP');
                if (_model.dropDownValue == 'Urdu') {
                  logFirebaseEvent('Button_set_app_language');
                  setAppLanguage(context, 'ur');
                } else {
                  if (_model.dropDownValue == 'Marathi') {
                    logFirebaseEvent('Button_set_app_language');
                    setAppLanguage(context, 'mr');
                  } else {
                    if (_model.dropDownValue == 'Tamil') {
                      logFirebaseEvent('Button_set_app_language');
                      setAppLanguage(context, 'ta');
                    } else {
                      if (_model.dropDownValue == 'English') {
                        logFirebaseEvent('Button_set_app_language');
                        setAppLanguage(context, 'en');
                      } else {
                        if (_model.dropDownValue == 'Hindi') {
                          logFirebaseEvent('Button_set_app_language');
                          setAppLanguage(context, 'hi');
                        } else {
                          if (_model.dropDownValue == 'Gujarati') {
                            logFirebaseEvent('Button_set_app_language');
                            setAppLanguage(context, 'gu');
                          } else {
                            if (_model.dropDownValue == 'Punjabi') {
                              logFirebaseEvent('Button_set_app_language');
                              setAppLanguage(context, 'pa');
                            } else {
                              logFirebaseEvent('Button_set_app_language');
                              setAppLanguage(context, 'en');
                            }
                          }
                        }
                      }
                    }
                  }
                }
              },
              text: FFLocalizations.of(context).getText(
                'pawlw790' /* Confirm */,
              ),
              options: FFButtonOptions(
                height: 30.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FFAppState().vv,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
