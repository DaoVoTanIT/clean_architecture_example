import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';

const String pathImage = 'assets/images/';

//import image here
const String logoTsw = '${pathImage}logo_tsw.jpg';
const String icTree = '${pathImage}ic_tree.png';
const String icDocument = '${pathImage}ic_document.png';
const String pdf = '${pathImage}pdf.png';
const String doc = '${pathImage}doc.png';
const String icSearch = '${pathImage}ic_search.png';
const String icAccept = '${pathImage}ic_accept.png';
const String tab1 = '${pathImage}work.png';
const String bell = '${pathImage}bell.png';
const String tab2 = '${pathImage}notification.png';
const String tab3 = '${pathImage}user.png';
const String tab4 = '${pathImage}report.png';
const String more = '${pathImage}more.png';
const String imgLogo = '${pathImage}img_logo.png';
const String logoApp = '${pathImage}logo_app.png';
const String logo = '${pathImage}logo@3x.png';
const String icFemale = '${pathImage}ic_female.png';
const String icMale = '${pathImage}ic_male.png';
const String avt1 = '${pathImage}avt_1.png';
const String imgSuccess = '${pathImage}img_success.png';
const String imgSuccess2 = '${pathImage}img_success2.png';
const String icBack = '${pathImage}ic_back.png';
const String calendar = '${pathImage}calendar.png';
const String icNotification = '${pathImage}ic_notification.png';
const String imgPatientManagement = '${pathImage}img_patient_management.png';
const String imgSchedule = '${pathImage}img_schedule.png';
const String imgConsultHistory = '${pathImage}img_consult_history.png';
const String imgFreeQuestion = '${pathImage}img_free_question.png';
const String icHome = '${pathImage}ic_home.png';
const String icAccount = '${pathImage}ic_account.png';
const String icMyWork = '${pathImage}ic_my_work.png';
const String icFeed = '${pathImage}ic_feed.png';
const String icChat = '${pathImage}ic_chat.png';
const String icPinMap = '${pathImage}ic_pin_map.png';
const String imgSentMessage = '${pathImage}img_sent_message.png';
const String close = '${pathImage}close.png';
const String icPinLocation = '${pathImage}ic_pin_location.png';
const String icEyeOn = '${pathImage}ic_eye_on.png';
const String icSetting = '${pathImage}ic_setting.png';
const String icAppointmentActive = '${pathImage}ic_appointment_active.png';
const String icAppointment = '${pathImage}ic_appointment.png';
const String icSendMessage = '${pathImage}ic_send_message.png';
const String icCall = '${pathImage}ic_call.png';
const String icPayment = '${pathImage}ic_payment.png';
const String icPinLocation1 = '${pathImage}ic_pin_location1.png';
const String imgCertification = '${pathImage}img_certification.png';
const String imgAward = '${pathImage}img_award.png';
const String icAttach = '${pathImage}ic_attach.png';
const String icCamera = '${pathImage}ic_camera.png';
const String avt2 = '${pathImage}avt_2.png';
const String avt3 = '${pathImage}avt_3.png';
const String icAddtional = '${pathImage}ic_addtional.png';
const String icAtoz = '${pathImage}ic_atoz.png';
const String icDoctor = '${pathImage}ic_doctor.png';
const String icHealthGuide = '${pathImage}ic_health_guide.png';
const String icHospital = '${pathImage}ic_hospital.png';
const String line = '${pathImage}line.png';
const String icMedication = '${pathImage}ic_medication.png';
const String icOption = '${pathImage}ic_option.png';
const String icRateFull = '${pathImage}ic_rate_full.png';
const String icSend = '${pathImage}ic_send.png';
const String share = '${pathImage}share.png';
const String icCalendar = '${pathImage}ic_calendar.png';
const String imgNoUpcoming = '${pathImage}img_no_upcoming.png';
const String icTypeAppointment = '${pathImage}ic_type_appointment.png';
const String icTypeCall = '${pathImage}ic_type_call.png';
const String icTypeLiveChat = '${pathImage}ic_type_live_chat.png';
const String icTypeMessage = '${pathImage}ic_type_message.png';
const String icTypeVideo = '${pathImage}ic_type_video.png';
const String icHelp = '${pathImage}ic_help.png';
const String icAdditionalInformation =
    '${pathImage}ic_additional_information.png';
const String imgChickenpox = '${pathImage}img_chickenpox.png';
const String imgKid = '${pathImage}img_kid.png';
const String icMute = '${pathImage}ic_mute.png';
const String icCallOff = '${pathImage}ic_call_off.png';
const String icInterview = '${pathImage}ic_interview.png';
const String icLiveChat = '${pathImage}ic_live_chat.png';
const String imgWarning = '${pathImage}img_warning.png';
const String icFilter = '${pathImage}ic_filter.png';

const String icClinicVital = '${pathImage}ic_clinic_vital.png';
const String icHealthMetric = '${pathImage}ic_health_metric.png';
const String icCondition = '${pathImage}ic_condition.png';
const String icDob = '${pathImage}ic_dob.png';
const String icLocation16 = '${pathImage}ic_location_16.png';
const String navigationBar = '${pathImage}navigation_bar.png';

const String icCommentActive = '${pathImage}ic_comment_active.png';
const String icCurrentLocation = '${pathImage}ic_current_location.png';
const String icEdu = '${pathImage}ic_edu.png';
const String icExp = '${pathImage}ic_exp.png';
const String icHealthNormal = '${pathImage}ic_health_normal.png';
const String icHeart = '${pathImage}ic_heart.png';
const String icNearby = '${pathImage}ic_nearby.png';
const String icMyNetwork = '${pathImage}ic_my_network.png';
const String medicalSchoolExp = '${pathImage}medical_school_exp.png';
const String icDoctorAnswer = '${pathImage}ic_doctor_answer.png';
const String backgroundHospital = '${pathImage}background_hospital.png';
const String icHospitalBed = '${pathImage}ic_hospital_bed.png';
const String imageAnswer = '${pathImage}image_answer.png';
const String icSideEffect = '${pathImage}ic_side_effect.png';
const String icCertification = '${pathImage}ic_certification.png';
const String imageMedication = '${pathImage}image_medication.png';
const String icQuote = '${pathImage}ic_quote.png';
const String icCloseCard = '${pathImage}ic_close_card.png';
const String icPlus = '${pathImage}ic_plus.png';
const String icLock = '${pathImage}lock.png';
const String icPause = '${pathImage}pause.png';
const String icStop = '${pathImage}stop_circle.png';
const String icPlay = '${pathImage}play_circle.png';
const String icSync = '${pathImage}sync.png';
const String icCheck = '${pathImage}check.png';
const String icProcedure = '${pathImage}ic_procedure.png';
const String icThanks = '${pathImage}ic_thanks.png';
const String imgTopic1 = '${pathImage}img_topic_1.png';
const String imgTopic2 = '${pathImage}img_topic_2.png';
const String icFollow = '${pathImage}ic_follow.png';
const String icRate = '${pathImage}ic_rate.png';
const String icSound = '${pathImage}ic_sound.png';

const String icCheckmark = '${pathImage}ic_checkmark.png';
const String recommendedLabel = '${pathImage}recommended_label.png';
const String icFollowed = '${pathImage}ic_followed.png';
const String icFollowed2 = '${pathImage}ic_followed_2.png';
const String icPhotoLibrary = '${pathImage}ic_photo_library.png';
const String icEdit = '${pathImage}ic_edit.png';
const String icArrowRight = '${pathImage}ic_arrow_right.png';
const String icTopic = '${pathImage}ic_topic.png';

const String icLikeComment = '${pathImage}ic_like_comment.png';
const String icAllergies = '${pathImage}ic_allergies.png';
const String icBase = '${pathImage}ic_base.png';
const String icTime = '${pathImage}ic_time.png';

const String imgEmptyBank = '${pathImage}img_empty_bank.png';
const String imgInviteFriend = '${pathImage}img_invite_friend.png';
const String inInstagram = '${pathImage}in_instagram.png';
const String icTwitter = '${pathImage}ic_twitter.png';
const String icTerm = '${pathImage}ic_term.png';
const String icHelpWhite = '${pathImage}ic_help_white.png';
const String icFacebook = '${pathImage}ic_facebook.png';
const String icEmail = '${pathImage}ic_email.png';
const String icDarkMode = '${pathImage}ic_dark_mode.png';
const String imgTopic3 = '${pathImage}img_topic_3.png';
const String imgTopic4 = '${pathImage}img_topic_4.png';

const String imgCareTeam = '${pathImage}img_care_team.png';
const String imgConsultMange = '${pathImage}img_consult_mange.png';
const String imgFinanceReport = '${pathImage}img_finance_report.png';
const String imgHealthFeed = '${pathImage}img_health_feed.png';
const String imgHealthGuide = '${pathImage}img_health_guide.png';
const String imgHealthTip = '${pathImage}img_health_tip.png';
const String imgLibrary = '${pathImage}img_library.png';
const String imgWorkProfile = '${pathImage}img_work_profile.png';
const String imgIncomeReport = '${pathImage}img_income_report.png';
const String imgWithdraw = '${pathImage}img_withdraw.png';
const String icRecordNormal = '${pathImage}ic_record_normal.png';
const String imgOnlineConsults = '${pathImage}img_online_consults.png';
const String nextConsultForYou = '${pathImage}next_consult_for_you.png';
const String imgTaskEmpty = '${pathImage}img_task_empty.png';
const String icAddPatient = '${pathImage}ic_add_patient.png';
const String icSecurity = '${pathImage}ic_security.png';
const String imgSentSuccessful = '${pathImage}img_sent_successful.png';

const String careTeamLabel = '${pathImage}care_team_label.png';
const String icAmex = '${pathImage}ic_amex.png';
const String icApplePay = '${pathImage}ic_apple_pay.png';
const String icCreditCard = '${pathImage}ic_credit_card.png';
const String icDeficiency = '${pathImage}ic_deficiency.png';

const String icVisa = '${pathImage}ic_visa.png';
const String icDermatology = '${pathImage}ic_dermatology.png';
const String icVaccination = '${pathImage}ic_vaccination.png';
const String icPaypal = '${pathImage}ic_paypal.png';
const String icMaster = '${pathImage}ic_master.png';
const String icEmergency = '${pathImage}ic_emergency.png';
const String icDisability = '${pathImage}ic_disability.png';
const String icHideInfo = '${pathImage}ic_hide_info.png';
const String backgroundCreditCard = '${pathImage}background_credit_card.png';

const String icAppleHealth = '${pathImage}ic_apple_health.png';
const String icFitbit = '${pathImage}ic_fitbit.png';
const String icSamsungHealth = '${pathImage}ic_samsung_health.png';
const String icWithings = '${pathImage}ic_withings.png';
const String iconApp = '${pathImage}icon_app.png';
const String icLine = '${pathImage}ic_line.png';
const String icRadioActive = '${pathImage}ic_radio_active.png';
const String imgSentAppoinment = '${pathImage}img_sent_appoinment.png';
const String imgVideoSuccessful = '${pathImage}img_video_successful.png';
const String icShowInfo = '${pathImage}ic_show_info.png';
const String imgLiveChatSuccessful = '${pathImage}img_live_chat_successful.png';
const String btnDecline = '${pathImage}btn_decline.png';
const String btnAccept = '${pathImage}btn_accept.png';
const String icVideoOff = '${pathImage}ic_video_off.png';
const String icVideoOn = '${pathImage}ic_video_on.png';
const String tenMin = '${pathImage}10m.png';
const String thirtyMin = '${pathImage}30m.png';
const String twoHour = '${pathImage}2hr.png';
const String icSearchHistory = '${pathImage}ic_search_history.png';
const String imgLovedOne = '${pathImage}img_loved_one.png';
const String imgMyQuestion = '${pathImage}img_my_question.png';
const String imgMedicineReminder = '${pathImage}img_medicine_reminder.png';
const String icLabTest = '${pathImage}ic_lab_test.png';
const String icLeft = '${pathImage}ic_left.png';
const String icRight = '${pathImage}ic_right.png';
const String avtRelationship = '${pathImage}avt_relationship.png';
const String icGuideName = '${pathImage}ic_guide_name.png';
const String imgNoPast = '${pathImage}img_no_past.png';
const String icAddCareTeam = '${pathImage}ic_add_care_team.png';
const String icLinks = '${pathImage}ic_links.png';
const String icAddPlan = '${pathImage}ic_add_plan.png';
const String imgNoCard = '${pathImage}img_no_card.png';
const String icTablet = '${pathImage}ic_tablet.png';
const String icStartFrom = '${pathImage}ic_start_from.png';
const String icNote = '${pathImage}ic_note.png';
const String icHowLong = '${pathImage}ic_how_long.png';
const String icAlarmList = '${pathImage}ic_alarm_list.png';
const String icQrCode = '${pathImage}ic_qr_code.png';
const String icMinus = '${pathImage}ic_minus.png';
const String icDrinks = '${pathImage}ic_drinks.png';
const String icAlarm = '${pathImage}ic_alarm.png';
const String icDelete = '${pathImage}delete.png';
const String icDownload = '${pathImage}ic_download.png';
const String faceId = '${pathImage}face_id.png';
const String icApproval = '${pathImage}ic_approval.png';

const String imgDefault =
    'https://angular-material.fusetheme.com/assets/images/avatars/brian-hughes.jpg';
// 'https://secure.gravatar.com/avatar/4ab7650841054fabdce7dfb5f359b928?d=identicon&s=84';
Uint8List convertBase64Image(String base64String) {
  return const Base64Decoder().convert(base64String.split(',').last);
}

String getFlagImagePathForLocale(Locale locale) {
  String flagImagePath = '';

  switch (locale.languageCode) {
    case 'en':
      flagImagePath = 'assets/images/usa_flag.png';
      break;
    case 'vi':
      flagImagePath = 'assets/images/vietnam_flag.png';
      break;
    case 'china':
      flagImagePath = 'assets/images/vietnam_flag.png';
      break;
    // Thêm các trường hợp cho các ngôn ngữ khác (nếu có)

    default:
      flagImagePath = 'assets/flags/vietnam_flag.png';
      break;
  }

  return flagImagePath;
}
