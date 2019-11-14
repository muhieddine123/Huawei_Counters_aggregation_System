/*
 Navicat Premium Data Transfer

 Source Server         : AIRCOM6
 Source Server Type    : PostgreSQL
 Source Server Version : 110003
 Source Host           : localhost:5432
 Source Catalog        : Statistics
 Source Schema         : Hourly

 Target Server Type    : PostgreSQL
 Target Server Version : 110003
 File Encoding         : 65001

 Date: 02/08/2019 10:26:51
*/


-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Abis_Interface_Paging
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Paging";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Paging" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3060D_Number_of_ImmAss_Preempting_PCH" float(53),
  "A330_Delivered_Paging_Messages_for_CS_Service" float(53),
  "A331_Delivered_Paging_Messages_for_PS_Service" float(53),
  "A332_Maximum_Undecodable_Level_in_the_Code_Streams_on_the_RACH" float(53),
  "A333_Average_Undecodable_Level_in_the_Code_Streams_on_the_RACH" float(53),
  "A334_Number_of_Failures_to_Decode_the_Code_Streams_on_the_RACH" float(53),
  "A335_Minimum_decodable_Level_in_the_Code_Streams_on_the_RACH" float(53),
  "A336_Number_of_Successes_in_Decoding_the_Code_Streams_on_the_RA" float(53),
  "A337_Number_of_Deletions_of_the_Paging_for_CS_Services_on_the_P" float(53),
  "A338_Number_of_Expiries_of_the_Paging_for_CS_Services_on_the_PC" float(53),
  "A339_Number_of_Deletions_of_the_Paging_for_PS_Services_on_the_P" float(53),
  "A340_Number_of_Expiries_of_the_Paging_for_PS_Services_on_the_PC" float(53),
  "A349A_RACH_Failures_Too_High_TA" float(53),
  "A351P_Number_of_Discarded_PS_Re-paging_Messages" float(53),
  "A351Q_Number_of_Second_Paging_Requests_Sent_for_PS_Services" float(53),
  "A351_Number_of_Discarded_Re-paging_Messages_for_CS_Services" float(53),
  "A352C_PCH-AGCH_Mean_Queue_Length" float(53),
  "A370_Number_of_CS_Layered_Paging_Messages_Sent_by_the_BSC" float(53),
  "A371_Number_of_CS_Layered_Paging_Failures" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Abis_Interface_Resource
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Resource";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Resource" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "R9101_Number_of_Application_Attempts_of_Abis_Timeslot" float(53),
  "R9102_Number_of_Successful_Application_Attempts_of_Abis_Timeslo" float(53),
  "R9103_Number_of_Release_Requests_of_Abis_Timeslot" float(53),
  "R9104_Number_of_Successful_Releases_of_Abis_Timeslot" float(53),
  "R9105_Number_of_Application_Attempts_of_IP_PATH_or_HDLC_Bandwid" float(53),
  "R9106_Number_of_Successful_Application_Attempts_of_IP_PATH_or_H" float(53),
  "R9107_Number_of_Release_Requests_of_IP_PATH_or_HDLC_Bandwidth_1" float(53),
  "R9108_Number_of_Successful_Releases_of_IP_PATH_or_HDLC_Bandwidt" float(53),
  "R9109_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9110_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9111_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9112_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9115_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Assignment
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Assignment";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Assignment" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3100A_Assignment_Requests_Signaling_Channel_TCH" float(53),
  "A3100B_Assignment_Requests_TCHF_Only" float(53),
  "A3100C_Assignment_Requests_TCHH_Only" float(53),
  "A3100D_Assignment_Requests_TCHF_Preferred_Channel_Type_Unchange" float(53),
  "A3100E_Assignment_Requests_TCHH_Preferred_Channel_Type_Unchange" float(53),
  "A3100F_Assignment_Requests_TCHF_or_TCHH_Channel_Type_Unchangeab" float(53),
  "A3100G_Assignment_Requests_TCHF_Preferred_Channel_Type_Changeab" float(53),
  "A3100H_Assignment_Requests_TCHH_Preferred_Channel_Type_Changeab" float(53),
  "A3100I_Assignment_Requests_TCHF_or_TCHH_Channel_Type_Changeable" float(53),
  "A3100K_Assignment_Requests_Signaling_Channel_SDCCH" float(53),
  "A3100P_Number_of_Assignment_Requests_Multi-Timeslot_TCHFs_Quant" float(53),
  "A3100Q_Number_of_Assignment_Requests_Multi-Timeslot_TCHFs_Quant" float(53),
  "A3101A_Assignment_Requests_MOC" float(53),
  "A3101C_Assignment_Requests_MTC" float(53),
  "A3101D_Assignment_Requests_Emergency_Call" float(53),
  "A3101E_Assignment_Requests_Call_Re-establishment" float(53),
  "A3101J_Assignment_Requests_for_Serving_Cell_Maximum_Better_Cell" float(53),
  "A3109F_Number_of_Assignment_Requests_CSD_Services-Based" float(53),
  "A3111A_Cell_Assignment_Complete_Times_of_Speech_Version_3_Direc" float(53),
  "A3112A_Cell_Assignment_Complete_Times_of_Speech_Version_3_Direc" float(53),
  "A3113_Speech_Version_5_Completed_Assignments_Excluding_Directed" float(53),
  "A3114_Cell_Assignment_Complete_Times_of_Speech_Version_5_Direct" float(53),
  "A3129B_Failed_Assignments_First_Assignment_Terrestrial_Resource" float(53),
  "A3129C_Failed_Assignments_First_Assignment_Assignment_Timed_Out" float(53),
  "A3129D_Failed_Assignments_Reconnection_to_Old_Channels_Reconnec" float(53),
  "A3129E_Failed_Assignments_CIC_Unavailable" float(53),
  "A3129F_Failed_Assignments_CIC_Allocated" float(53),
  "A3129G_Failed_Assignments_A_Interface_Failure" float(53),
  "A3129H_Failed_Assignments_Clear_Commands_Sent_By_MSC" float(53),
  "A3129I_Failed_Assignments_Invalid_State" float(53),
  "A3129J_Failed_Assignments_Invalid_Message" float(53),
  "A3129K_Number_of_Assignment_Failures_CSD_Services-Based" float(53),
  "A3129L_Number_of_Assignment_Failures_Multi-Timeslot_TCHFs_Quant" float(53),
  "A3129M_Number_of_Assignment_Failures_Multi-Timeslot_TCHFs_Quant" float(53),
  "A3129N_Failed_Assignments_Reconnection_to_Old_Channels_Terrestr" float(53),
  "A3129O_Failed_Assignments_First_Assignment_Directed_Retry_Timed" float(53),
  "A3129P_Failed_Assignments_Reconnection_to_Old_Channels_Timer_Ex" float(53),
  "A3129Q_Failed_Assignments_Reconnection_to_Old_Channels_Timer_Ex" float(53),
  "A3129R_Failed_Assignments_Reconnection_to_Old_Channels_Reconnec" float(53),
  "A3129S_Failed_Assignments_Requested_Speech_Version_Unavailable" float(53),
  "A3129T_Failed_Assignments_No_Ater_Resource_Available" float(53),
  "A312Aa_Failed_Assignments_during_MOC_on_the_A_Interface_Includi" float(53),
  "A312A_Failed_Assignments_First_Assignment_No_Channel_Available_" float(53),
  "A312Ca_Failed_Assignments_during_MTC_on_the_A_Interface_Includi" float(53),
  "A312Da_Failed_Assignments_during_Emergency_Call_on_the_A_Interf" float(53),
  "A312Ea_Failed_Assignments_during_Call_Re-establishment_on_the_A" float(53),
  "A312F_Number_of_Assignment_Failures_No_Abis_Resource_Available" float(53),
  "A312K_Failed_Assignments_First_Assignment_No_Channel_Available_" float(53),
  "A312L_Failed_Assignments_Reconnection_to_Old_Channels_No_Channe" float(53),
  "A312M_Failed_Assignments_Reconnection_to_Old_Channels_No_Channe" float(53),
  "A312S_Failed_Assignments_Signaling_Channel" float(53),
  "A3139J_Number_of_Attempts_Initiated_by_the_BSC_to_Speed_Up_the_" float(53),
  "A3139K_Number_of_Failed_Attempts_Initiated_by_the_BSC_to_Speed_" float(53),
  "A3139L_Number_of_Attempts_Initiated_by_MSs_to_Speed_Up_the_HSCS" float(53),
  "A3139M_Number_of_Failed_Attempts_Initiated_by_MSs_to_Speed_Up_t" float(53),
  "A3139N_Number_of_Attempts_Initiated_by_MSs_to_Speed_Down_the_HS" float(53),
  "A3139P_Number_of_Failed_Attempts_Initiated_by_MSs_to_Speed_Down" float(53),
  "A3139Q_Number_of_Channels_Required_by_an_HSCSD_Call_in_the_Chan" float(53),
  "A3139R_Number_of_Channels_Successfully_Allocated_to_an_HSCSD_Ca" float(53),
  "A3139S_Number_of_Channels_Required_by_an_HSCSD_Call_in_the_Fina" float(53),
  "A3139T_Number_of_Channels_Successfully_Allocated_to_an_HSCSD_Ca" float(53),
  "A313A6_Number_of_Attempts_Initiated_by_the_BSC_to_Speed_Down_th" float(53),
  "A313A7_Number_of_Failed_Attempts_Initiated_by_the_BSC_to_Speed_" float(53),
  "A313A8_Number_of_TCH_Repacking_Attempts_for_HSCSD_Calls" float(53),
  "A313A9_Number_of_Failed_TCH_Repackings_for_HSCSD_Calls" float(53),
  "A3157A_Failed_Mode_Modify_Attempts_MOC_TCHF" float(53),
  "A3157C_Failed_Mode_Modify_Attempts_MTC_TCHF" float(53),
  "A3157D_Failed_Mode_Modify_Attempts_Emergency_Call_TCHF" float(53),
  "A3157E_Failed_Mode_Modify_Attempts_Call_Re-establishment_TCHF" float(53),
  "A3158A_Failed_Mode_Modify_Attempts_MOC_TCHH" float(53),
  "A3158C_Failed_Mode_Modify_Attempts_MTC_TCHH" float(53),
  "A3158E_Failed_Mode_Modify_Attempts_Call_Re-establishment_TCHH" float(53),
  "A3159I_Failed_Mode_Modify_Attempts_Requested_Speech_Version_Una" float(53),
  "A3159J_Failed_Mode_Modify_Attempts_No_Ater_Resource_Available" float(53),
  "A3167A_Speech_Version_1_Completed_Assignments_Excluding_Directe" float(53),
  "A3167B_Speech_Version_2_Completed_Assignments_Excluding_Directe" float(53),
  "A3167C_Speech_Version_3_Completed_Assignments_Excluding_Directe" float(53),
  "A3168A_Speech_Version_1_Completed_Assignments_Excluding_Directe" float(53),
  "A3168B_Speech_Version_2_Completed_Assignments_Excluding_Directe" float(53),
  "A3168C_Speech_Version_3_Completed_Assignments_Excluding_Directe" float(53),
  "A3169A_Failed_Assignments_Um_Cause" float(53),
  "A3169B_Mode_Modification_Failures_Um_Cause" float(53),
  "A3170A_Number_of_Completed_TCH_Assignments_CSFB_MOC" float(53),
  "A3170B_Number_of_Completed_TCH_Assignments_CSFB_MTC" float(53),
  "CA310A_Assignment_Requests_TCH_Assigned_Repeatedly_over_A_Inter" float(53),
  "CA310_Assignment_Requests" float(53),
  "CA311_Assignment_Commands" float(53),
  "CA312A_Failed_Assignments_TCH_Assigned_Repeatedly_over_A_Interf" float(53),
  "CA312_Failed_Assignments_Channel_Unavailable" float(53),
  "CA313_Successful_Assignments" float(53),
  "CA314_Mode_Modify_Commands" float(53),
  "CA315_Number_of_Failed_Assignments_Um_Interface_Message_Failure" float(53),
  "CA316_Completed_Assignments_Um_Interface" float(53),
  "RA333_Success_Rate_of_Call_Establishment" float(53),
  "RCA313_Assignment_Success_Rate" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Call_Drop
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Call_Drop";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Call_Drop" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3139A_Clear_Requests_Sent_on_the_A_Interface_HSCSD_Service" float(53),
  "A3520_Number_of_Normal_Call_Clear_Um_Interface_Failures_Signali" float(53),
  "A3521_Number_of_Normal_Call_Clear_Um_Interface_Failures_Traffic" float(53),
  "CM30A_Call_Drops_on_Radio_Interface_SDCCH" float(53),
  "CM30_Call_Drops_on_SDCCH" float(53),
  "CM3300_Call_Drops_on_Traffic_Channel_in_Stable_State_Error_Indi" float(53),
  "CM3301_Call_Drops_on_Traffic_Channel_in_Stable_State_Connection" float(53),
  "CM3302_Call_Drops_on_Traffic_Channel_in_Stable_State_Release_In" float(53),
  "CM3303A_Number_of_Call_Drops_on_TCH_Before_Disconnection" float(53),
  "CM330A_Call_Drops_on_the_Traffic_Channels_on_the_TRX_in_the_Und" float(53),
  "CM330B_Call_Drops_on_the_Traffic_Channels_on_the_TRX_in_the_Ove" float(53),
  "CM330_Call_Drops_on_Radio_Interface_in_Stable_State_Traffic_Cha" float(53),
  "CM331_Call_Drops_on_Radio_Interface_in_Handover_State_Traffic_C" float(53),
  "CM332_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_Traffic_C" float(53),
  "CM333_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_Traffic_C" float(53),
  "CM334_Call_Drops_due_to_Equipment_Failure_Traffic_Channel" float(53),
  "CM335_Call_Drops_due_to_Forced_Handover_Traffic_Channel" float(53),
  "CM337_Call_Drops_after_Answer" float(53),
  "CM338_Successful_Connections" float(53),
  "CM339A_Clear_Requests_Sent_on_A_interface_in_Stable_State_TCH_T" float(53),
  "CM339B_Clear_Requests_Sent_on_the_A_interface_in_Handover_State" float(53),
  "CM339C_Clear_Requests_Sent_on_the_A_interface_TA_Limit" float(53),
  "CM339_Clear_Requests_Sent_on_the_A_interface_TCH_Traffic_Channe" float(53),
  "CM33C_Call_Drops_on_Radio_Interface_Traffic_Channel" float(53),
  "CM33_Call_Drops_on_Traffic_Channel" float(53),
  "CM3600_Call_Drops_on_Signaling_Channel_in_Stable_State_Error_In" float(53),
  "CM3601_Call_Drops_on_Signaling_Channel_in_Stable_State_Connecti" float(53),
  "CM3602_Call_Drops_on_Signaling_Channel_in_Stable_State_Release_" float(53),
  "CM3603_Call_Drops_on_Signaling_Channel_in_Stable_State_Error_In" float(53),
  "CM3604_Call_Drops_on_Signaling_Channel_in_Stable_State_Release_" float(53),
  "CM3605_Call_Drops_on_Signaling_Channel_in_Stable_State_Connecti" float(53),
  "CM3606_Call_Drops_on_Radio_Interface_in_Stable_State_Signaling_" float(53),
  "CM360A_Call_Drops_on_the_Signaling_Channels_on_the_TRX_in_the_O" float(53),
  "CM360_Call_Drops_on_Radio_Interface_in_Stable_State_Signaling_C" float(53),
  "CM361A_Call_Drops_on_the_Signaling_Channels_on_the_TRX_in_the_U" float(53),
  "CM361_Call_Drops_on_Radio_Interface_in_Handover_State_Signaling" float(53),
  "CM362_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_Signaling" float(53),
  "CM363_Call_Drops_Due_to_Abis_Terrestrial_Link_Failure_Signaling" float(53),
  "CM364_Call_Drops_due_to_Equipment_Failure_Signaling_Channel" float(53),
  "CM365_Call_Drops_due_to_Forced_Handover_Signaling_Channel" float(53),
  "CM369_Clear_Requests_Sent_on_the_A_interface_TCH_Signaling_Chan" float(53),
  "CM36C_Call_Drops_on_Radio_Interface_Signaling_Channel" float(53),
  "CM36_Call_Drops_on_Signaling_Channel" float(53),
  "CM400_Number_of_Clear_Requests_Sent_on_the_A_Interface_Assignme" float(53),
  "CM401_Number_of_Clear_Requests_Sent_on_the_A_Interface_Equipmen" float(53),
  "CM402_Number_of_Clear_Requests_Sent_on_the_A_Interface_Um_Inter" float(53),
  "CM403_Number_of_Clear_Requests_Sent_on_the_A_Interface_Um_Inter" float(53),
  "CM404_Number_of_Clear_Requests_Sent_on_the_A_Interface_OM" float(53),
  "M3000A_Call_Drops_due_to_ERR_IND_Received_on_SDCCH_in_Stable_St" float(53),
  "M3000B_Call_Drops_due_to_ERR_IND_Received_on_SDCCH_in_Stable_St" float(53),
  "M3000C_Call_Drops_due_to_ERR_IND_Received_on_SDCCH_in_Stable_St" float(53),
  "M3001A_Call_Drops_due_to_CONN_FAIL_Received_on_SDCCH_in_Stable_" float(53),
  "M3001B_Call_Drops_due_to_CONN_FAIL_Received_on_SDCCH_in_Stable_" float(53),
  "M3001C_Call_Drops_due_to_CONN_FAIL_Received_on_SDCCH_in_Stable_" float(53),
  "M3001D_Call_Drops_due_to_CONN_FAIL_Received_on_SDCCH_in_Stable_" float(53),
  "M3001E_Call_Drops_due_to_CONN_FAIL_Received_on_SDCCH_in_Stable_" float(53),
  "M3002_Call_Drops_due_to_REL_IND_Received_on_SDCCH" float(53),
  "M302_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_SDCCH" float(53),
  "M303_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_SDCCH" float(53),
  "M304_Call_Drops_Due_to_Equipment_Failure_SDCCH" float(53),
  "M305_Call_Drops_due_to_Forced_Handover_SDCCH" float(53),
  "M306_Call_Drops_due_to_Resource_Check_SDCCH" float(53),
  "M309_Clear_Requests_Sent_on_the_A_Interface_SDCCH" float(53),
  "M3100A_Call_Drops_due_to_ERR_IND_Received_on_TCHF_Traffic_Chann" float(53),
  "M3100B_Call_Drops_due_to_ERR_IND_Received_on_TCHF_Traffic_Chann" float(53),
  "M3100C_Call_Drops_due_to_ERR_IND_Received_on_TCHF_Traffic_Chann" float(53),
  "M3101A_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Traffic_Cha" float(53),
  "M3101B_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Traffic_Cha" float(53),
  "M3101C_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Traffic_Cha" float(53),
  "M3101D_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Traffic_Cha" float(53),
  "M3101E_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Traffic_Cha" float(53),
  "M3102_Call_Drops_due_to_REL_IND_Received_on_TCHF_Traffic_Channe" float(53),
  "M3109_Number_of_Clear_Requests_CSD_Services-Based" float(53),
  "M312_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_TCHF_Traff" float(53),
  "M313_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_TCHF_Traff" float(53),
  "M314_Call_Drops_due_to_Equipment_Failure_TCHF_Traffic_Channel" float(53),
  "M315_Call_Drops_due_to_Forced_Handover_TCHF_Traffic_Channel" float(53),
  "M316_Call_Drops_due_to_Resource_Check_TCHF_Traffic_Channel" float(53),
  "M317_Call_Drops_after_Answer_TCHF_Traffic_Channel" float(53),
  "M318_Successful_Connections_TCHF_Traffic_Channel" float(53),
  "M319A_Clear_Requests_Sent_on_the_A_Interface_TCHF_Traffic_Chann" float(53),
  "M319B_Clear_Requests_Sent_on_the_A_Interface_in_Handover_State_" float(53),
  "M3200A_Call_Drops_due_to_ERR_IND_Received_on_TCHH_Traffic_Chann" float(53),
  "M3200B_Call_Drops_due_to_ERR_IND_Received_on_TCHH_Traffic_Chann" float(53),
  "M3200C_Call_Drops_due_to_ERR_IND_Received_on_TCHH_Traffic_Chann" float(53),
  "M3201A_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Traffic_Cha" float(53),
  "M3201B_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Traffic_Cha" float(53),
  "M3201C_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Traffic_Cha" float(53),
  "M3201D_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Traffic_Cha" float(53),
  "M3201E_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Traffic_Cha" float(53),
  "M3202_Call_Drops_due_to_REL_IND_Received_on_TCHH_Traffic_Channe" float(53),
  "M322_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_TCHH_Traff" float(53),
  "M323_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_TCHH_Traff" float(53),
  "M324_Call_Drops_due_to_Equipment_Failure_TCHH_Traffic_Channel" float(53),
  "M325_Call_Drops_due_to_Forced_Handover_TCHH_Traffic_Channel" float(53),
  "M326_Call_Drops_due_to_Resource_Check_TCHH_Traffic_Channel" float(53),
  "M327_Call_Drops_after_Answer_TCHH_Traffic_Channel" float(53),
  "M328_Successful_Connections_TCHH_Traffic_Channel" float(53),
  "M329A_Clear_Requests_Sent_on_the_A_Interface_in_Stable_State_TC" float(53),
  "M329B_Clear_Requests_Sent_on_the_A_Interface_in_Handover_State_" float(53),
  "M3310A_Call_Drops_Due_to_the_ERR_IND_from_traf_chan_on_the_TRX_" float(53),
  "M3310B_Call_Drops_Due_to_the_ERR_IND_from_traf_chan_on_the_TRX_" float(53),
  "M3310C_Call_Drops_Due_to_the_ERR_IND_from_traf_chan_on_the_TRX_" float(53),
  "M3311A_Call_Drops_Due_to_the_CONN_FAIL_from_traf_chan_on_the_TR" float(53),
  "M3311B_Call_Drops_Due_to_the_CONN_FAIL_from_traf_chan_on_the_TR" float(53),
  "M3311C_Call_Drops_Due_to_the_CONN_FAIL_from_traf_chan_on_the_TR" float(53),
  "M3311D_Call_Drops_Due_to_the_CONN_FAIL_from_traf_chan_on_the_TR" float(53),
  "M3311E_Call_Drops_Due_to_the_CONN_FAIL_from_traf_chan_on_the_TR" float(53),
  "M3312B_Call_Drops_Due_to_the_REL_IND_Received_from_the_Traffic_" float(53),
  "M3313B_Call_Drops_Due_to_No_MR_from_the_MS_on_the_Traffic_Chann" float(53),
  "M3313D_Call_Drops_Due_to_Abis_Terrestrial_Link_Failure_on_the_T" float(53),
  "M3313F_Call_Drops_Due_to_TRX_Failure_in_the_Underlaid_Subcell_T" float(53),
  "M3314B_Call_Drops_Due_to_Forced_Handover_on_the_TRX_in_the_Unde" float(53),
  "M3314D_Call_Drops_Due_to_Resource_Check_on_the_TRX_in_the_Under" float(53),
  "M3314E_Call_Drops_After_Answer_on_the_TRX_in_the_Underlaid_Subc" float(53),
  "M3320A_Call_Drops_Due_to_ERR_IND_from_traf_chan_on_the_TRX_in_t" float(53),
  "M3320B_Call_Drops_Due_to_ERR_IND_from_traf_chan_on_the_TRX_in_t" float(53),
  "M3320C_Call_Drops_Due_to_ERR_IND_from_traf_chan_on_the_TRX_in_t" float(53),
  "M3321A_Call_Drops_Due_to_CONN_FAIL_from_traf_chan_on_the_TRX_in" float(53),
  "M3321B_Call_Drops_Due_to_CONN_FAIL_from_traf_chan_on_the_TRX_in" float(53),
  "M3321C_Call_Drops_Due_to_CONN_FAIL_from_traf_chan_on_the_TRX_in" float(53),
  "M3321D_Call_Drops_Due_to_CONN_FAIL_from_traf_chan_on_the_TRX_in" float(53),
  "M3321E_Call_Drops_Due_to_CONN_FAIL_from_traf_chan_on_the_TRX_in" float(53),
  "M3322B_Call_Drops_Due_to_the_REL_IND_Received_from_the_Traffic_" float(53),
  "M3323B_Call_Drops_Due_to_No_MR_from_the_MS_on_the_Traffic_Chann" float(53),
  "M3323D_Call_Drops_Due_to_Abis_Terrestrial_Link_Failure_on_the_T" float(53),
  "M3323F_Call_Drops_Due_to_TRX_Failure_in_the_Overlaid_Subcell_Tr" float(53),
  "M3324B_Call_Drops_Due_to_Forced_Handover_on_the_TRX_in_the_Over" float(53),
  "M3324D_Call_Drops_Due_to_Resource_Check_on_the_TRX_in_the_Overl" float(53),
  "M3324E_Call_Drops_After_Answer_on_the_TRX_in_the_Overlaid_Subce" float(53),
  "M3330A_Call_Drops_Due_to_Abis_Link_Failures_in_Stable_Local_Swi" float(53),
  "M338a_Successful_TCH_Seizures_on_the_TRX_in_the_OverLaid_Subcel" float(53),
  "M338_Successful_TCH_Seizures_on_the_TRX_in_the_Underlaid_Subcel" float(53),
  "M3400A_Call_Drops_due_to_ERR_IND_Received_on_TCHF_Signaling_Cha" float(53),
  "M3400B_Call_Drops_due_to_ERR_IND_Received_on_TCHF_Signaling_Cha" float(53),
  "M3400C_Call_Drops_due_to_ERR_IND_Received_on_TCHF_Signaling_Cha" float(53),
  "M3401A_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Signaling_C" float(53),
  "M3401B_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Signaling_C" float(53),
  "M3401C_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Signaling_C" float(53),
  "M3401D_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Signaling_C" float(53),
  "M3401E_Call_Drops_due_to_CONN_FAIL_Received_on_TCHF_Signaling_C" float(53),
  "M3402_Call_Drops_due_to_REL_IND_Received_on_TCHF_Signaling_Chan" float(53),
  "M342_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_TCHF_Signa" float(53),
  "M343_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_TCHF_Signa" float(53),
  "M344_Call_Drops_due_to_Equipment_Failure_TCHF_Signaling_Channel" float(53),
  "M345_Call_Drops_due_to_Forced_Handover_TCHF_Signaling_Channel" float(53),
  "M346_Call_Drops_due_to_Resource_Check_TCHF_Signaling_Channel" float(53),
  "M349_Clear_Requests_Sent_on_the_A_Interface_TCHF_Signaling_Chan" float(53),
  "M3500A_Call_Drops_due_to_ERR_IND_Received_on_TCHH_Signaling_Cha" float(53),
  "M3500B_Call_Drops_due_to_ERR_IND_Received_on_TCHH_Signaling_Cha" float(53),
  "M3500C_Call_Drops_due_to_ERR_IND_Received_on_TCHH_Signaling_Cha" float(53),
  "M3501A_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Signaling_C" float(53),
  "M3501B_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Signaling_C" float(53),
  "M3501C_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Signaling_C" float(53),
  "M3501D_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Signaling_C" float(53),
  "M3501E_Call_Drops_due_to_CONN_FAIL_Received_on_TCHH_Signaling_C" float(53),
  "M3502_Call_Drops_due_to_REL_IND_Received_on_TCHH_Signaling_Chan" float(53),
  "M352_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_TCHH_Signa" float(53),
  "M353_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_TCHH_Signa" float(53),
  "M354_Call_Drops_due_to_Equipment_Failure_TCHH_Signaling_Channel" float(53),
  "M355_Call_Drops_due_to_Forced_Handover_TCHH_Signaling_Channel" float(53),
  "M356_Call_Drops_due_to_Resource_Check_TCHH_Signaling_Channel" float(53),
  "M359_Clear_Requests_Sent_on_the_A_Interface_TCHH_Signaling_Chan" float(53),
  "M3610A_Call_Drops_Due_to_the_ERR_IND_from_sig_chan_on_the_TRX_i" float(53),
  "M3610B_Call_Drops_Due_to_the_ERR_IND_from_sig_chan_on_the_TRX_u" float(53),
  "M3610C_Call_Drops_Due_to_the_ERR_IND_from_sig_chan_on_the_TRX_i" float(53),
  "M3611A_Call_Drops_Due_to_the_CONN_FAIL_from_sig_chan_on_the_TRX" float(53),
  "M3611B_Call_Drops_Due_to_the_CONN_FAIL_from_sig_chan_on_the_TRX" float(53),
  "M3611C_Call_Drops_Due_to_the_CONN_FAIL_from_sig_chan_on_the_TRX" float(53),
  "M3611D_Call_Drops_Due_to_the_CONN_FAIL_from_sig_chan_on_the_TRX" float(53),
  "M3611E_Call_Drops_Due_to_the_CONN_FAIL_from_sig_chan_on_the_TRX" float(53),
  "M3612A_Call_Drops_Due_to_the_REL_IND_Received_from_the_Signalin" float(53),
  "M3613A_Call_Drops_Due_to_No_MR_from_the_MS_on_the_Signaling_Cha" float(53),
  "M3613C_Call_Drops_Due_to_Abis_Terrestrial_Link_Failure_on_the_T" float(53),
  "M3613E_Call_Drops_Due_to_TRX_Failure_in_the_Underlaid_Subcell_S" float(53),
  "M3614A_Call_Drops_Due_to_Forced_Handover_on_the_TRX_in_the_Unde" float(53),
  "M3614C_Call_Drops_Due_to_Resource_Check_on_the_TRX_in_the_Under" float(53),
  "M3620A_Call_Drops_Due_to_ERR_IND_from_sig_chan_on_the_TRX_in_th" float(53),
  "M3620B_Call_Drops_Due_to_ERR_IND_from_sig_chan_on_the_TRX_in_th" float(53),
  "M3620C_Call_Drops_Due_to_ERR_IND_from_sig_chan_on_the_TRX_in_th" float(53),
  "M3621A_Call_Drops_Due_to_CONN_FAIL_from_sig_chan_on_the_TRX_in_" float(53),
  "M3621B_Call_Drops_Due_to_CONN_FAIL_from_sig_chan_on_the_TRX_in_" float(53),
  "M3621C_Call_Drops_Due_to_CONN_FAIL_from_sig_chan_on_the_TRX_in_" float(53),
  "M3621D_Call_Drops_Due_to_CONN_FAIL_from_sig_chan_on_the_TRX_in_" float(53),
  "M3621E_Call_Drops_Due_to_CONN_FAIL_from_sig_chan_on_the_TRX_in_" float(53),
  "M3622A_Call_Drops_Due_to_the_REL_IND_Received_from_the_Signalin" float(53),
  "M3623A_Call_Drops_Due_to_No_MR_from_the_MS_on_the_Signaling_Cha" float(53),
  "M3623C_Call_Drops_Due_to_Abis_Terrestrial_Link_Failure_on_the_T" float(53),
  "M3623E_Call_Drops_Due_to_TRX_Failure_in_the_Overlaid_Subcell_Si" float(53),
  "M3624A_Call_Drops_Due_to_Forced_Handover_on_the_TRX_in_the_Over" float(53),
  "M3624C_Call_Drops_Due_to_Resource_Check_on_the_TRX_in_the_Overl" float(53),
  "RH3331_Call_Drops_on_Signal_Channel_TCH" float(53),
  "RM3171_Call_Drops_on_Radio_Interface_in_Stable_State_Traffic_Ch" float(53),
  "RM3172_Call_Drops_on_Radio_Interface_in_Handover_State_Traffic_" float(53),
  "RM3173_Call_Drops_Due_to_Local_Switch_Start_FailureTCHF" float(53),
  "RM3174_Call_Drops_Due_to_Failures_to_Return_to_Normal_Call_from" float(53),
  "RM3175_Call_Drops_on_Traffic_Channel_TCHF" float(53),
  "RM317_Call_Drop_Rate_on_TCHF_per_cell" float(53),
  "RM3271_Call_Drops_on_Radio_Interface_in_Stable_State_Traffic_Ch" float(53),
  "RM3272_Call_Drops_on_Radio_Interface_in_Handover_State_Traffic_" float(53),
  "RM3273_Call_Drops_Due_to_Local_Switch_Start_FailureTCHH" float(53),
  "RM3274_Call_Drops_Due_to_Failures_to_Return_to_Normal_Call_from" float(53),
  "RM3275_Call_Drops_on_Traffic_Channel_TCHH" float(53),
  "RM327_Call_Drop_Rate_on_TCHH_per_cell" float(53),
  "RM330a_Call_Drop_Rate_on_TCH_on_the_TRX_in_the_OverLaid_Subcell" float(53),
  "RM330_Call_Drop_Rate_on_TCH_on_the_TRX_in_the_Underlaid_Subcell" float(53),
  "RM333_Radio_Drop_Rate_of_TCH" float(53),
  "ZTR104C_Call_Drop_Rate_on_SDCCH" float(53),
  "ZTR304A_Call_Drop_Rate_on_TCH_per_cellExcluding_Handover" float(53),
  "ZTR304_Call_Drop_Rate_on_TCH_per_cellincluding_Handover" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Call_Duration
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Call_Duration";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Call_Duration" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AA3250_Average_Call_Access_Duration" float(53),
  "AA3251_Average_Call_Setup_Duration" float(53),
  "AA3252:Average Call Release Duration" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Cell_Status
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Cell_Status";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Cell_Status" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CR373_Cell_In-Service_Duration" float(53),
  "R3710_Number_of_Cell_BCCH_Mutual_Aids" float(53),
  "R3711_Number_of_Recoveries_after_Cell_BCCH_Mutual_Aids" float(53),
  "R3720_Number_of_Cell_Baseband_Hopping_Mutual_Aids" float(53),
  "R3721_Number_of_Recoveries_after_Cell_Baseband_Hopping_Mutual_A" float(53),
  "R3722_Duration_of_Cell_Turning_off" float(53),
  "R3731_Cell_Activation_Delay" float(53),
  "R3732_Cell_Out-of-Service_Duration_Due_to_O&M" float(53),
  "R373_Cell_Out-of-Service_Duration" float(53),
  "TR373_Cell_Availability" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Channel_Assignment_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Failure";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CR3120_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "CR3127_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "CR3128_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "CR3129_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "CR3130_Number_of_TCH_Allocation_Failures_Power_Deficit" float(53),
  "R3120A_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3120C_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3120D_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3120E_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3127A_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3127B_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3127C_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3127D_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3127E_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3128A_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3128B_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3128C_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3128D_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3128E_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3162B:Number of Failures to Allocate Abis Resources (TCHF)" float(53),
  "R3163B:Number of Failures to Allocate Abis Resources (TCHH)" float(53),
  "R3164B:Number of Failures to Allocate Abis Resources (Dynamic P" float(53),
  "R3549A_Failed_TCH_Seizures_due_to_Busy_TCH_Overlay_Cell" float(53),
  "R3549B_Failed_TCH_Seizures_due_to_Busy_TCH_Underlay_Cell" float(53),
  "R3560A_Failed_TCH_Seizures_Handover_due_to_Busy_TCH_Overlay_Cel" float(53),
  "R3560B_Failed_TCH_Seizures_Handover_due_to_Busy_TCH_Underlay_Ce" float(53),
  "R3561A_Number_of_failed_TCH_handovers_based_on_IBCA_soft_block_" float(53),
  "R3561B_Number_of_failed_TCH_assignments_based_on_IBCA_soft_bloc" float(53),
  "RR370_Congestion_Rate_on_SDCCH_per_CELL_due_to_Busy" float(53),
  "S3019A:Number of Capacity-caused Soft Blocks During BCCH TRX Ch" float(53),
  "S3019B:Number of Level-caused Soft Blocks During BCCH TRX Chann" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Channel_Assignment_Request
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Request";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Request" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CR3100_Channel_Assignment_Requests_SDCCH" float(53),
  "CR3107_Channel_Assignment_Requests_TCHF" float(53),
  "CR3108_Channel_Assignment_Requests_TCHH" float(53),
  "CR3109_Channel_Assignment_Requests_TCH" float(53),
  "R3100A_Channel_Assignment_Requests_in_Immediate_Assignment_Proc" float(53),
  "R3100C_Channel_Assignment_Requests_in_Internal_Intra-Cell_Hando" float(53),
  "R3100D_Channel_Assignment_Requests_in_Incoming_Internal_Inter-C" float(53),
  "R3100E_Channel_Assignment_Requests_in_Incoming_External_Inter-C" float(53),
  "R3100_DTM_Channel_Assignments_Times" float(53),
  "R3107A_Channel_Assignment_Requests_in_Immediate_Assignment_Proc" float(53),
  "R3107B_Channel_Assignment_Requests_in_Assignment_Procedure_TCHF" float(53),
  "R3107C_Channel_Assignment_Requests_in_Internal_Intra-Cell_Hando" float(53),
  "R3107D_Channel_Assignment_Requests_in_Incoming_Internal_Inter-C" float(53),
  "R3107E_Channel_Assignment_Requests_in_Incoming_External_Inter-C" float(53),
  "R3108A_Channel_Assignment_Requests_in_Immediate_Assignment_Proc" float(53),
  "R3108B_Channel_Assignment_Requests_in_Assignment_Procedure_TCHH" float(53),
  "R3108C_Channel_Assignment_Requests_in_Internal_Intra-Cell_Hando" float(53),
  "R3108D_Channel_Assignment_Requests_in_Incoming_Internal_Inter-C" float(53),
  "R3108E_Channel_Assignment_Requests_in_Incoming_External_Inter-C" float(53),
  "R3109A_Channel_Assignment_Requests_in_Immediate_Assignment_Proc" float(53),
  "R3109B_Channel_Assignment_Requests_in_Assignment_Procedure_TCH" float(53),
  "R3109C_Channel_Assignment_Requests_in_Internal_Intra-Cell_Hando" float(53),
  "R3109D_Channel_Assignment_Requests_in_Incoming_Internal_Inter-C" float(53),
  "R3109E_Channel_Assignment_Requests_in_Incoming_External_Inter-C" float(53),
  "R3110_TCH_Channel_Alloc_Failed_No_Usable_Channel_Times_In_Imm_A" float(53),
  "R3141A_DTM_Channel_Assignments_Successful_Times_TCHF" float(53),
  "R3142A_DTM_Channel_Assignments_Successful_Times_TCHH" float(53),
  "R3142B_Number_of_Local_Channel_Requests_TCHF" float(53),
  "R3142C_Number_of_Local_Channel_Requests_TCHH" float(53),
  "R3142D_Number_of_Local_Channel_Requests_TCH" float(53),
  "R3142E_Number_of_Successful_IBCA_TRX_Interference_Assessments_D" float(53),
  "R3142F_Number_of_IBCA_TRX_Allocations_During_TCH_Request" float(53),
  "R3160A_Number_of_Requests_for_Dynamic_PDCH" float(53),
  "R3160C_Number_of_Successful_Requests_for_Dynamic_PDCH" float(53),
  "R3161A_Number_of_BSC-Initiated_Requests_for_Dynamic_PDCH" float(53),
  "R3161B_Number_of_Failed_BSC-Initiated_Requests_for_Dynamic_PDCH" float(53),
  "R3162A:Number of Requests for Allocating Abis Resources (TCHF)" float(53),
  "R3163A:Number of Requests for Allocating Abis Resources (TCHH)" float(53),
  "R3164A:Number of Requests for Allocating Abis Resources (Dynami" float(53),
  "R3165A_Number_of_Preferable_Selections_of_TCHH_in_a_Cell_Abis_R" float(53),
  "R3166A_Number_of_Preferable_Selections_of_TCHH_in_a_Cell_Ater_R" float(53),
  "R3167A_Number_of_Preferable_Selections_of_TCHH_in_a_Cell_Radio_" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Channel_Configuration
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Channel_Configuration";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Configuration" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AR3010A_Mean_Number_of_Dynamically_Configured_Channels_SDCCH_90" float(53),
  "AR3010B_Mean_Number_of_Dynamically_Configured_Channels_SDCCH_18" float(53),
  "AR3011A_Mean_Number_of_Dynamically_Configured_Channels_PDCH_900" float(53),
  "AR3011B_Mean_Number_of_Dynamically_Configured_Channels_PDCH_180" float(53),
  "AR3015A_Mean_Number_of_Dynamically_Configured_Channels_Support_" float(53),
  "AR3015B_Mean_Number_of_Dynamically_Configured_Channels_Support_" float(53),
  "AR3017A_Mean_Number_of_Dynamically_Configured_Channels_TCHF_900" float(53),
  "AR3017B_Mean_Number_of_Dynamically_Configured_Channels_TCHF_180" float(53),
  "AR3018A_Mean_Number_of_Dynamically_Configured_Channels_TCHH_900" float(53),
  "AR3018B_Mean_Number_of_Dynamically_Configured_Channels_TCHH_180" float(53),
  "AR3020A_Mean_Number_of_Available_Channels_SDCCH_900_850_810_ban" float(53),
  "AR3020B_Mean_Number_of_Available_Channels_SDCCH_1800_1900_Band" float(53),
  "AR3021A_Mean_Number_of_Available_Channels_PDCH_900_850_810_band" float(53),
  "AR3021B_Mean_Number_of_Available_Channels_PDCH_1800_1900_Band" float(53),
  "AR3023A_Mean_Number_of_Available_Channels_TCHs_Converted_from_D" float(53),
  "AR3023B_Mean_Number_of_Available_Channels_TCHs_Converted_from_D" float(53),
  "AR3024A_Mean_Number_of_Available_Channels_PDCHs_Converted_from_" float(53),
  "AR3024B_Mean_Number_of_Available_Channels_PDCHs_Converted_from_" float(53),
  "AR3025A_Mean_Number_of_Available_Channels_Support_EDGE_900_850_" float(53),
  "AR3025B_Mean_Number_of_Available_Channels_Support_EDGE_1800_190" float(53),
  "AR3026_Mean_Number_of_Dynamically_Configured_Channels_SDCCH_OLC" float(53),
  "AR3027A_Mean_Number_of_Available_Channels_TCHF_900_850_810_band" float(53),
  "AR3027B_Mean_Number_of_Available_Channels_TCHF_1800_1900_Band" float(53),
  "AR3027C_Mean_Number_of_Available_Pyhsical_Channels_TCH" float(53),
  "AR3027_Mean_Number_of_Dynamically_Configured_Channels_TCHF_OLCE" float(53),
  "AR3028A_Mean_Number_of_Available_Channels_TCHH_900_850_810_band" float(53),
  "AR3028B_Mean_Number_of_Available_Channels_TCHH_1800_1900_Band" float(53),
  "AR3028_Mean_Number_of_Dynamically_Configured_Channels_TCHH_OLCE" float(53),
  "AR3029_Mean_Number_of_Dynamically_Configured_Channels_PDCH_OLCE" float(53),
  "AR3030_Mean_Number_of_Dynamically_Configured_Channels_Support_E" float(53),
  "AR3031_Mean_Number_of_Available_Channels_SDCCH_Overlay_Cell" float(53),
  "AR3032_Mean_Number_of_Available_Channels_TCHF_Overlay_Cell" float(53),
  "AR3033_Mean_Number_of_Available_Channels_TCHH_Overlay_Cell" float(53),
  "AR3034_Mean_Number_of_Available_Channels_PDCH_Overlay_Cell" float(53),
  "AR3035_Mean_Number_of_Available_Channels_Support_EDGE_Overlay_C" float(53),
  "AR3050_Average_Number_of_Available_Channels_During_Spectrum_Sha" float(53),
  "CR3000_Number_of_Initially_Configured_Channels_SDCCH" float(53),
  "CR3001_Number_of_Initially_Configured_Channels_Static_PDCH" float(53),
  "CR3002_Number_of_Initially_Configured_Channels_Dynamic_PDCH" float(53),
  "CR3005_Number_of_Initially_Configured_Channels_Static_PDTCH_Sup" float(53),
  "CR3006_Number_of_Initially_Configured_Channels_Dynamic_PDTCH_Su" float(53),
  "CR3007_Number_of_Initially_Configured_Channels_TCHF" float(53),
  "CR3008_Number_of_Initially_Configured_Channels_TCHH" float(53),
  "CR3009_Number_of_Initially_Configured_Channels_CBCH" float(53),
  "CR300B_Number_of_Initially_Configured_Channels_TCH" float(53),
  "CR3010_Mean_Number_of_Dynamically_Configured_Channels_SDCCH" float(53),
  "CR3011_Mean_Number_of_Dynamically_Configured_Channels_PDCH" float(53),
  "CR3015_Mean_Number_of_Dynamically_Configured_Channels_Support_E" float(53),
  "CR3017_Mean_Number_of_Dynamically_Configured_Channels_TCHF" float(53),
  "CR3018_Mean_Number_of_Dynamically_Configured_Channels_TCHH" float(53),
  "CR301B_Mean_Number_of_Dynamically_Configured_Channels_TCH" float(53),
  "CR3020_Mean_Number_of_Available_Channels_SDCCH" float(53),
  "CR3021_Mean_Number_of_Available_Channels_PDCH" float(53),
  "CR3023_Mean_Number_of_Available_Channels_TCHs_Converted_from_Dy" float(53),
  "CR3024_Mean_Number_of_Available_Channels_PDCHs_Converted_from_D" float(53),
  "CR3025_Mean_Number_of_Available_Channels_Support_EDGE" float(53),
  "CR3027_Mean_Number_of_Available_Channels_TCHF" float(53),
  "CR3028_Mean_Number_of_Available_Channels_TCHH" float(53),
  "CR302B_Mean_Number_of_Available_Channels_TCH" float(53),
  "CR302C_Mean_Number_of_Available_Channels_Extended_CCCH" float(53),
  "CR302E_Number_of_Average_Available_PDCHs_Converted_from_TCHs" float(53),
  "R3000A_Number_of_Initially_Configured_Channels_SDCCH_900_850_81" float(53),
  "R3000B_Number_of_Initially_Configured_Channels_SDCCH_1800_1900_" float(53),
  "R3001A_Number_of_Initially_Configured_Channels_Static_PDCH_900_" float(53),
  "R3001B_Number_of_Initially_Configured_Channels_Static_PDCH_1800" float(53),
  "R3002A_Number_of_Initially_Configured_Channels_Dynamic_PDCH_900" float(53),
  "R3002B_Number_of_Initially_Configured_Channels_Dynamic_PDCH_180" float(53),
  "R3005A_Number_of_Initially_Configured_Channels_Static_PDTCH_Sup" float(53),
  "R3005B_Number_of_Initially_Configured_Channels_Static_PDTCH_Sup" float(53),
  "R3006A_Number_of_Initially_Configured_Channels_Dynamic_PDTCH_Su" float(53),
  "R3006B_Number_of_Initially_Configured_Channels_Dynamic_PDTCH_Su" float(53),
  "R3007A_Number_of_Initially_Configured_Channels_TCHF_900_850_810" float(53),
  "R3007B_Number_of_Initially_Configured_Channels_TCHF_1800_1900_B" float(53),
  "R3008A_Number_of_Initially_Configured_Channels_TCHH_900_850_810" float(53),
  "R3008B_Number_of_Initially_Configured_Channels_TCHH_1800_1900_B" float(53),
  "R3009A_Number_of_Initially_Configured_Channels_CBCH_900_850_810" float(53),
  "R3009B_Number_of_Initially_Configured_Channels_CBCH_1800_1900_B" float(53),
  "R3029_Number_of_Initially_Configured_Channels_SDCCH_Overlay_Cel" float(53),
  "R3030_Number_of_Initially_Configured_Channels_TCHF_Overlay_Cell" float(53),
  "R3031_Number_of_Initially_Configured_Channels_TCHH_Overlay_Cell" float(53),
  "R3032_Number_of_Initially_Configured_Channels_Static_PDCH_Overl" float(53),
  "R3033_Number_of_Initially_Configured_Channels_Dynamic_PDCH_Over" float(53),
  "R3050_Number_of_Available_Channels_During_Spectrum_Sharing" float(53),
  "RR300_SDCCH_Availability" float(53),
  "RR307_TCH_Availability" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Channel_Status
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Channel_Status";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Status" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A313A0_HSCSD_Traffic_Volume_Main_Transparent_Channel" float(53),
  "A313A1_HSCSD_Traffic_Volume_Auxiliary_Transparent_Channel" float(53),
  "A313A2_HSCSD_Traffic_Volume_Main_Non-Transparent_Channel" float(53),
  "A313A3_HSCSD_Traffic_Volume_Auxiliary_Non-Transparent_Channel" float(53),
  "A313A5_Mean_Number_of_Busy_Channels_in_Overlaid_Subcell_VAMOS_T" float(53),
  "AR3550A_Mean_Number_of_Busy_Signaling_Channels_SDCCH_900_850_81" float(53),
  "AR3550B_Mean_Number_of_Busy_Signaling_Channels_SDCCH_1800_1900_" float(53),
  "AR3551A_Mean_Number_of_Busy_TCHs_TCHF_900_850_810_band" float(53),
  "AR3551B_Mean_Number_of_Busy_TCHs_TCHF_1800_1900_Band" float(53),
  "AR3551C_Traffic_Volume_on_AMR_TCHFs" float(53),
  "AR3552A_Mean_Number_of_Busy_TCHs_TCHH_900_850_810_band" float(53),
  "AR3552B_Mean_Number_of_Busy_TCHs_TCHH_1800_1900_Band" float(53),
  "AR3552C_Traffic_Volume_on_AMR_TCHHs" float(53),
  "AR3553A_Mean_Number_of_Busy_Signaling_Channels_TCHF_900_850_810" float(53),
  "AR3553B_Mean_Number_of_Busy_Signaling_Channels_TCHF_1800_1900_B" float(53),
  "AR3553_Average_Number_of_Busy_TCHFs_CSFB" float(53),
  "AR3554A_Mean_Number_of_Busy_Signaling_Channels_TCHH_900_850_810" float(53),
  "AR3554B_Mean_Number_of_Busy_Signaling_Channels_TCHH_1800_1900_B" float(53),
  "AR3554_Average_Number_of_Busy_TCHHs_CSFB" float(53),
  "AR3555A_Rate_of_TCHs_in_Busy_State" float(53),
  "AR3555B_Rate_of_TCHs_on_BCCH_TRX_in_Busy_State" float(53),
  "AR3555C_Rate_of_TCHs_on_Non-BCCH_TRX_in_Busy_State" float(53),
  "AR3556C_Traffic_Volume_on_WBAMR_TCHFs" float(53),
  "AR3557C_Traffic_Volume_on_EFR_TCHs" float(53),
  "AR3557_Mean_Number_of_Busy_TCHs_Overlaid_Subcell" float(53),
  "AR3558C_Traffic_Volume_on_EFR_TCHs_Overlaid_Subcell" float(53),
  "AR3558_Mean_Number_of_Busy_TCHs_Underlaid_Subcell" float(53),
  "AR3559C_Traffic_Volume_on_AMR_TCHFs_Overlaid_Subcell" float(53),
  "AR3560C_Traffic_Volume_on_AMR_TCHHs_Overlaid_Subcell" float(53),
  "AR3561C_Number_of_Busy_HR_Service_ChannelsTCH_Overlaid_Subcell" float(53),
  "AR3570_Mean_Number_of_Blocked_Channels_SDCCH" float(53),
  "AR3571_Mean_Number_of_Blocked_Channels_TCHF" float(53),
  "AR3572_Mean_Number_of_Blocked_Channels_TCHH" float(53),
  "AR3580_Mean_Number_of_Idle_Channels_SDCCH" float(53),
  "AR3581_Mean_Number_of_Idle_Channels_TCHF" float(53),
  "AR3582_Mean_Number_of_Idle_Channels_TCHH" float(53),
  "CR3550_Mean_Number_of_Busy_Signaling_Channels_SDCCH" float(53),
  "CR3551_Mean_Number_of_Busy_TCHs_TCHF" float(53),
  "CR3552_Mean_Number_of_Busy_TCHs_TCHH" float(53),
  "CR3553_Mean_Number_of_Busy_Signaling_Channels_TCHF" float(53),
  "CR3554_Mean_Number_of_Busy_Signaling_Channels_TCHH" float(53),
  "R3501_Mean_Number_of_Busy_Channels_VAMOS_TCHH" float(53),
  "R3550H_Traffic_Volume_of_Speech_Service_on_SDCCH" float(53),
  "R3550I_Traffic_Volume_of_Short_Message_Service_on_SDCCH" float(53),
  "R3550J_Traffic_Volume_of_USSD_Service_on_SDCCH" float(53),
  "R3550L_Traffic_Volume_of_Unknown_Service_on_SDCCH" float(53),
  "R3550M_Traffic_Volume_of_Signaling_Channels_SDCCH" float(53),
  "R3550N0_TCH_Traffic_Volume_for_DTM" float(53),
  "R3550N1_TCH_Traffic_Volume_for_DTM_TCHH" float(53),
  "R3550N2_Average_Number_of_Busy_VAMOS_FR_Channels" float(53),
  "R3550N3_Number_of_Busy_VAMOS_FR_Channels" float(53),
  "R3550N5_Average_Number_of_Busy_VAMOS_FR_Channels_in_the_Overlai" float(53),
  "R3550N6_Number_of_Busy_VAMOS_FR_Channels_in_the_Overlaid_Subcel" float(53),
  "R3550N_Traffic_Volume_of_Signaling_Channels_TCH" float(53),
  "R3552E_Traffic_Volume_on_TCHs_Occupied_by_MSs_Handed_over_from_" float(53),
  "R3553E_Traffic_Volume_on_TCHs_Occupied_by_MSs_Handed_over_from_" float(53),
  "ZTR308_Traffic_Call_Drop_Ratio_per_cell" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@CSFB_Call_for_Cell
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@CSFB_Call_for_Cell";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@CSFB_Call_for_Cell" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A300M_Number_of_Channel_Requests_Early_Identification_of_CSFB_M" float(53),
  "A300N_Number_of_Channel_Requests_Early_Identification_of_CSFB_M" float(53),
  "H3102M_Number_of_Handover_Requests_of_Non-CSFB_MSs_due_to_CSFB_" float(53),
  "H3132M_Number_of_Successful_Handovers_of_Non-CSFB_MSs_due_to_CS" float(53),
  "H351A_Number_of_Times_CSFB_Subscribers_Fast_Return_to_LTE" float(53),
  "H351D_Number_of_Times_CSFB_Subscribers_Fast_Return_to_LTE_Blind" float(53),
  "H360_Number_of_Ultra-Flash_CSFB_Handover_Requests" float(53),
  "H361_Number_of_Ultra-Flash_CSFB_Handover_Responses" float(53),
  "H363_Number_of_Successful_Ultra-Flash_CSFB_Handovers" float(53),
  "R3127F_Number_of_Full-Rate_Channel_Allocations_for_CSFB_MSs" float(53),
  "R3309A_Number_of_Immediate_Assignment_Channel_Activation_Attemp" float(53),
  "R3309B_Number_of_Immediate_Assignment_Channel_Activation_Attemp" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A9301_Number_of_Downlink_EGPRS_TBF_Establishment_Attempts" float(53),
  "A9302_Number_of_Successful_Downlink_EGPRS_TBF_Establishments" float(53),
  "A9303_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9304_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9305_Number_of_Downlink_EGPRS_TBF_Normal_Releases" float(53),
  "A9306_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_N31" float(53),
  "A9307_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_SUS" float(53),
  "A9308_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_FLU" float(53),
  "A9309_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_No_" float(53),
  "A9310_Total_Number_of_Sampled_Concurrent_Downlink_EGPRS_TBFs" float(53),
  "A9311_Sampling_Times_of_Concurrent_Downlink_EGPRS_TBFs" float(53),
  "A9313_Total_Duration_of_Downlink_EGPRS_TBF" float(53),
  "A9315_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9316_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_Cha" float(53),
  "A9317_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_Oth" float(53),
  "A9318_Number_of_Downlink_EGPRS_Intermit_Transfers" float(53),
  "A9332_Maximum_Number_of_Sampled_Concurrent_Downlink_EGPRS_TBFs" float(53),
  "A9333_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9334_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9335_Number_of_Abnormal_downlink_EGPRS_TBF_Releases_due_to_CS_" float(53),
  "A9336_Number_of_Abnormal_Downlink_EGPRS_TBF_Releases_due_to_Abi" float(53),
  "A9337_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9338_Number_of_Successful_Downlink_EGPRS_TBF_Establishments_Ov" float(53),
  "A9339_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_N31" float(53),
  "A9343_Number_of_Times_the_Downlink_EGPRS_Transmission_Is_Interr" float(53),
  "A9344_Number_of_Times_the_Downlink_EGPRS_Transmission_Is_Interr" float(53),
  "A9346_Number_of_Downlink_EGPRS_TBF_Intermit_Transfers_Due_to_FL" float(53),
  "A9347_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_DTM" float(53),
  "AA9312_Average_Number_of_Concurrent_Downlink_EGPRS_TBFs" float(53),
  "AA9314_Average_Duration_of_Downlink_EGPRS_TBF" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A9101_Number_of_Downlink_GPRS_TBF_Establishment_Attempts" float(53),
  "A9102_Number_of_Successful_Downlink_GPRS_TBF_Establishments" float(53),
  "A9103_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9104_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9105_Number_of_Downlink_GPRS_TBF_Normal_Releases" float(53),
  "A9106_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_N310" float(53),
  "A9107_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_SUSP" float(53),
  "A9108_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_FLUS" float(53),
  "A9109_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_No_C" float(53),
  "A9110_Total_Number_of_Sampled_Concurrent_Downlink_GPRS_TBFs" float(53),
  "A9111_Sampling_Times_of_Concurrent_Downlink_GPRS_TBFs" float(53),
  "A9113_Total_Duration_of_Downlink_GPRS_TBF" float(53),
  "A9115_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9116_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_Chan" float(53),
  "A9117_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_Othe" float(53),
  "A9118_Number_of_Downlink_GPRS_Intermit_Transfers" float(53),
  "A9132_Number_of_Abnormal_Downlink_GPRS_TBF_Releases_Because_of_" float(53),
  "A9133_Number_of_Downlink_GPRS_TBF_Movements_Because_of_EGPRS_Us" float(53),
  "A9134_Maximum_Number_of_Sampled_Concurrent_Downlink_GPRS_TBFs" float(53),
  "A9135_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9136_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9137_Number_of_Abnormal_downlink_GPRS_TBF_Releases_due_to_CS_H" float(53),
  "A9138_Number_of_Abnormal_Downlink_GPRS_TBF_Releases_due_to_Abis" float(53),
  "A9139_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9140_Number_of_Successful_Downlink_GPRS_TBF_Establishments_Ove" float(53),
  "A9141_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_N310" float(53),
  "A9143_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_DTM_" float(53),
  "A9341_Number_of_Times_the_Downlink_GPRS_Transmission_Is_Interru" float(53),
  "A9342_Number_of_Times_the_Downlink_GPRS_Transmission_Is_Interru" float(53),
  "A9345_Number_of_Downlink_GPRS_TBF_Intermit_Transfers_Due_to_FLU" float(53),
  "AA9112_Average_Number_of_Concurrent_Downlink_GPRS_TBFs" float(53),
  "AA9114_Average_Duration_of_Downlink_GPRS_TBF" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L9301_Total_Number_of_Downlink_EGPRS_RLC_Data_Blocks" float(53),
  "L9302_Total_Number_of_Downlink_EGPRS_MCS1_RLC_Data_Blocks" float(53),
  "L9303_Total_Number_of_Downlink_EGPRS_MCS2_RLC_Data_Blocks" float(53),
  "L9304_Total_Number_of_Downlink_EGPRS_MCS3_RLC_Data_Blocks" float(53),
  "L9305_Total_Number_of_Downlink_EGPRS_MCS4_RLC_Data_Blocks" float(53),
  "L9306_Total_Number_of_Downlink_EGPRS_MCS5_RLC_Data_Blocks" float(53),
  "L9307_Total_Number_of_Downlink_EGPRS_MCS6_RLC_data_blocks" float(53),
  "L9308_Total_Number_of_Downlink_EGPRS_MCS7_RLC_Data_Blocks" float(53),
  "L9309_Total_Number_of_Downlink_EGPRS_MCS8_RLC_Data_Blocks" float(53),
  "L9310_Total_Number_of_Downlink_EGPRS_MCS9_RLC_Data_Blocks" float(53),
  "L9311_Total_Number_of_Valid_Downlink_EGPRS_MCS1_RLC_Data_Blocks" float(53),
  "L9312_Total_Number_of_Valid_Downlink_EGPRS_MCS2_RLC_Data_Blocks" float(53),
  "L9313_Total_Number_of_Valid_Downlink_EGPRS_MCS3_RLC_Data_Blocks" float(53),
  "L9314_Total_Number_of_Valid_Downlink_EGPRS_MCS4_RLC_Data_Blocks" float(53),
  "L9315_Total_Number_of_Valid_Downlink_EGPRS_MCS5_RLC_Data_Blocks" float(53),
  "L9316_Total_Number_of_Valid_Downlink_EGPRS_MCS6_RLC_Data_Blocks" float(53),
  "L9317_Total_Number_of_Valid_Downlink_EGPRS_MCS7_RLC_Data_Blocks" float(53),
  "L9318_Total_Number_of_Valid_Downlink_EGPRS_MCS8_RLC_Data_Blocks" float(53),
  "L9319_Total_Number_of_Valid_Downlink_EGPRS_MCS9_RLC_Data_Blocks" float(53),
  "L9329_Number_of_Coding_Scheme_Upgrades_on_Downlink_EGPRS_TBF" float(53),
  "L9330_Number_of_Coding_Scheme_Degrades_on_Downlink_EGPRS_TBF" float(53),
  "L9331_Number_of_Downlink_EGPRS_RLC_Control_Blocks" float(53),
  "L9332_Number_of_Downlink_EGPRS_RLC_Dummy_Blocks" float(53),
  "L9335_Total_Number_of_Downlink_EGPRS_TBFs" float(53),
  "L9336_Total_Duration_of_Downlink_EGPRS_TBFs" float(53),
  "L9341_Total_Number_of_Downlink_EGPRS_DAS5_RLC_Data_Blocks" float(53),
  "L9342_Total_Number_of_Downlink_EGPRS_DAS6_RLC_Data_Blocks" float(53),
  "L9343_Total_Number_of_Downlink_EGPRS_DAS7_RLC_Data_Blocks" float(53),
  "L9344_Total_Number_of_Downlink_EGPRS_DAS8_RLC_Data_Blocks" float(53),
  "L9345_Total_Number_of_Downlink_EGPRS_DAS9_RLC_Data_Blocks" float(53),
  "L9346_Total_Number_of_Downlink_EGPRS_DAS10_RLC_Data_Blocks" float(53),
  "L9347_Total_Number_of_Downlink_EGPRS_DAS11_RLC_Data_Blocks" float(53),
  "L9348_Total_Number_of_Downlink_EGPRS_DAS12_RLC_Data_Blocks" float(53),
  "L9349_Total_Number_of_Valid_Downlink_EGPRS_DAS5_RLC_Data_Blocks" float(53),
  "L9350_Total_Number_of_Valid_Downlink_EGPRS_DAS6_RLC_Data_Blocks" float(53),
  "L9351_Total_Number_of_Valid_Downlink_EGPRS_DAS7_RLC_Data_Blocks" float(53),
  "L9352_Total_Number_of_Valid_Downlink_EGPRS_DAS8_RLC_Data_Blocks" float(53),
  "L9353_Total_Number_of_Valid_Downlink_EGPRS_DAS9_RLC_Data_Blocks" float(53),
  "L9354_Total_Number_of_Valid_Downlink_EGPRS_DAS10_RLC_Data_Block" float(53),
  "L9355_Total_Number_of_Valid_Downlink_EGPRS_DAS11_RLC_Data_Block" float(53),
  "L9356_Total_Number_of_Valid_Downlink_EGPRS_DAS12_RLC_Data_Block" float(53),
  "L9357_Number_of_Packet_Downlink_Dummy_Control_Blocks_with_Valid" float(53),
  "L9358_Total_Number_of_Downlink_EGPRS_RLC_Data_Blocks_Using_Low-" float(53),
  "L9359_Total_Number_of_Downlink_EGPRS_RLC_Data_Blocks_Using_High" float(53),
  "L9360_Throughput_of_Valid_Downlink_EGPRS_RLC_Data_Blocks_Overla" float(53),
  "RL9320_Retransmission_Rate_of_Downlink_EGPRS_MCS1_RLC_Data_Bloc" float(53),
  "RL9321_Retransmission_Rate_of_Downlink_EGPRS_MCS2_RLC_Data_Bloc" float(53),
  "RL9322_Retransmission_Rate_of_Downlink_EGPRS_MCS3_RLC_Data_Bloc" float(53),
  "RL9323_Retransmission_Rate_of_Downlink_EGPRS_MCS4_RLC_Data_Bloc" float(53),
  "RL9324_Retransmission_Rate_of_Downlink_EGPRS_MCS5_RLC_Data_Bloc" float(53),
  "RL9325_Retransmission_Rate_of_Downlink_EGPRS_MCS6_RLC_Data_Bloc" float(53),
  "RL9326_Retransmission_Rate_of_Downlink_EGPRS_MCS7_RLC_Data_Bloc" float(53),
  "RL9327_Retransmission_Rate_of_Downlink_EGPRS_MCS8_RLC_Data_Bloc" float(53),
  "RL9328_Retransmission_Rate_of_Downlink_EGPRS_MCS9_RLC_Data_Bloc" float(53),
  "RL9337_Retransmission_Rate_of_Downlink_EGPRS_RLC_Data_Blocks" float(53),
  "RL9357_Retransmission_Rate_of_Downlink_EGPRS_DAS5_RLC_Data_Bloc" float(53),
  "RL9358_Retransmission_Rate_of_Downlink_EGPRS_DAS6_RLC_Data_Bloc" float(53),
  "RL9359_Retransmission_Rate_of_Downlink_EGPRS_DAS7_RLC_Data_Bloc" float(53),
  "RL9360_Retransmission_Rate_of_Downlink_EGPRS_DAS8_RLC_Data_Bloc" float(53),
  "RL9361_Retransmission_Rate_of_Downlink_EGPRS_DAS9_RLC_Data_Bloc" float(53),
  "RL9362_Retransmission_Rate_of_Downlink_EGPRS_DAS10_RLC_Data_Blo" float(53),
  "RL9363_Retransmission_Rate_of_Downlink_EGPRS_DAS11_RLC_Data_Blo" float(53),
  "RL9364_Retransmission_Rate_of_Downlink_EGPRS_DAS12_RLC_Data_Blo" float(53),
  "TL9333_Average_Throughput_of_Downlink_EGPRS_RLC" float(53),
  "TL9334_Average_Payload_of_Single_Downlink_EGPRS_TBF" float(53),
  "TL9338_Throughput_of_Downlink_EGPRS_RLC_Data_Blocks" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L9101_Total_Number_of_Downlink_GPRS_RLC_Data_Blocks" float(53),
  "L9102_Total_Number_of_Downlink_RLC_Data_Blocks_Using_CS1" float(53),
  "L9103_Total_Number_of_Downlink_RLC_Data_Blocks_Using_CS2" float(53),
  "L9104_Total_Number_of_Downlink_RLC_Data_Blocks_Using_CS3" float(53),
  "L9105_Total_Number_of_Downlink_RLC_Data_Blocks_Using_CS4" float(53),
  "L9106_Total_Number_of_Valid_RLC_Downlink_Data_Blocks_Using_CS1" float(53),
  "L9107_Total_Number_of_Valid_RLC_Downlink_Data_Blocks_Using_CS2" float(53),
  "L9108_Total_Number_of_Valid_RLC_Downlink_Data_Blocks_Using_CS3" float(53),
  "L9109_Total_Number_of_Valid_RLC_Downlink_Data_Block_Using_CS4" float(53),
  "L9116_Number_of_Coding_Scheme_Upgrades_on_Downlink_GPRS_TBF" float(53),
  "L9117_Number_of_Coding_Scheme_Degrades_on_Downlink_GPRS_TBF" float(53),
  "L9118_Number_of_Downlink_GPRS_RLC_Control_Blocks" float(53),
  "L9119_Number_of_Downlink_GPRS_RLC_Dummy_Blocks" float(53),
  "L9120_Total_Number_of_Downlink_GPRS_TBFs" float(53),
  "L9121_Total_Duration_of_Downlink_GPRS_TBFs" float(53),
  "L9122_Number_of_Packet_Downlink_Dummy_Control_Blocks_with_Valid" float(53),
  "L9123_Total_Number_of_Downlink_GPRS_RLC_Data_Blocks_Overlaid_Su" float(53),
  "L9124_Throughput_of_Valid_Downlink_GPRS_RLC_Data_Blocks_Overlai" float(53),
  "RL9110_Retransmission_Rate_of_RLC_Downlink_Data_Block_Using_CS1" float(53),
  "RL9111_Retransmission_Rate_of_RLC_Downlink_Data_Block_Using_CS2" float(53),
  "RL9112_Retransmission_Rate_of_RLC_Downlink_Data_Block_Using_CS3" float(53),
  "RL9113_Retransmission_Rate_of_RLC_Downlink_Data_Block_Using_CS4" float(53),
  "RL9122_Retransmission_Rate_of_Downlink_GPRS_RLC_Data_Blocks" float(53),
  "TL9114_Average_Throughput_of_Downlink_GPRS_RLC" float(53),
  "TL9115_Average_Payload_of_Single_Downlink_GPRS_TBF" float(53),
  "TL9123_Throughput_of_Downlink_GPRS_RLC_Data_Blocks" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AL9504_Average_Length_of_Downlink_LLC_PDUs" float(53),
  "AL9507_Average_LLC_PDU_Bytes_per_Downlink_TBF" float(53),
  "AL9521_Average_Throughput_of_Downlink_GPRS_Background_Service_L" float(53),
  "AL9522_Average_Throughput_of_Downlink_GPRS_Interactive_Service_" float(53),
  "AL9523_Average_Throughput_of_Downlink_EGPRS_Background_Service_" float(53),
  "AL9524_Average_Throughput_of_Downlink_EGPRS_Interactive_Service" float(53),
  "AL9529_Downlink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "AL9530_Downlink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "AL9541_Average_Throughput_of_Downlink_GPRS_Interactive_Service_" float(53),
  "AL9542_Average_Throughput_of_Downlink_GPRS_Interactive_Service_" float(53),
  "AL9543_Average_Throughput_of_Downlink_EGPRS_Interactive_Service" float(53),
  "AL9544_Average_Throughput_of_Downlink_EGPRS_Interactive_Service" float(53),
  "AL9565_Downlink_Data_Rate_of_EGPRS2-A_Users_at_the_LLC_Layer" float(53),
  "AL9573_Downlink_Data_Rate_of_Downlink_Dual-Carrier_Users_at_the" float(53),
  "L9501_Total_Number_of_Downlink_TBFs" float(53),
  "L9502_Total_Number_of_Downlink_LLC_PDUs_Received" float(53),
  "L9503_Total_Bytes_of_Downlink_LLC_PDUs_Received" float(53),
  "L9505_Total_Number_of_LLC_PDUs_Sent" float(53),
  "L9506_Total_Bytes_of_LLC_PDUs_Sent" float(53),
  "L9508_Number_of_Downlink_LLC_PDUs_Discarded_due_to_Timeout" float(53),
  "L9509_Number_of_Downlink_LLC_PDUs_Discarded_due_to_FLUSH" float(53),
  "L9511_Total_Bytes_of_Downlink_GPRS_Background_Service_LLC_PDUs_" float(53),
  "L9512_Total_Bytes_of_Downlink_GPRS_Interactive_Service_THP1_LLC" float(53),
  "L9513_Total_Bytes_of_Downlink_GPRS_Streaming_Service_LLC_PDUs_S" float(53),
  "L9514_Total_Bytes_of_Downlink_EGPRS_Background_Service_LLC_PDUs" float(53),
  "L9515_Total_Bytes_of_Downlink_EGPRS_Interactive_Service_THP1_LL" float(53),
  "L9516_Total_Bytes_of_Downlink_EGPRS_Streaming_Service_LLC_PDUs_" float(53),
  "L9517_Throughput_of_Downlink_GPRS_Background_Service_LLC_PDU" float(53),
  "L9518_Throughput_of_Downlink_GPRS_Interactive_Service_THP1_LLC_" float(53),
  "L9519_Throughput_of_Downlink_EGPRS_Background_Service_LLC_PDU" float(53),
  "L9520_Throughput_of_Downlink_EGPRS_Interactive_Service_THP1_LLC" float(53),
  "L9525_Total_Bytes_of_Downlink_GPRS_Users_LLC_PDU" float(53),
  "L9526_Throughput_of_Downlink_GPRS_Users_LLC_PDU" float(53),
  "L9527_Total_Bytes_of_Downlink_EGPRS_Users_LLC_PDU" float(53),
  "L9528_Throughput_of_Downlink_EGPRS_Users_LLC_PDU" float(53),
  "L9531_Maximum_Downlink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "L9532_Maximum_Downlink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "L9533_Total_Bytes_of_Downlink_GPRS_Interactive_Service_THP2_LLC" float(53),
  "L9534_Total_Bytes_of_Downlink_GPRS_Interactive_Service_THP3_LLC" float(53),
  "L9535_Total_Bytes_of_Downlink_EGPRS_Interactive_Service_THP2_LL" float(53),
  "L9536_Total_Bytes_of_Downlink_EGPRS_Interactive_Service_THP3_LL" float(53),
  "L9537_Throughput_of_Downlink_GPRS_Interactive_Service_THP2_LLC_" float(53),
  "L9538_Throughput_of_Downlink_GPRS_Interactive_Service_THP3_LLC_" float(53),
  "L9539_Throughput_of_Downlink_EGPRS_Interactive_Service_THP2_LLC" float(53),
  "L9540_Throughput_of_Downlink_EGPRS_Interactive_Service_THP3_LLC" float(53),
  "L9545_Number_of_Transmissions_of_Downlink_GPRS_Background_Servi" float(53),
  "L9546_Number_of_Transmissions_of_Downlink_GPRS_Interactive_Serv" float(53),
  "L9547_Number_of_Transmissions_of_Downlink_GPRS_Interactive_Serv" float(53),
  "L9548_Number_of_Transmissions_of_Downlink_GPRS_Interactive_Serv" float(53),
  "L9549_Number_of_Transmissions_of_Downlink_EGPRS_Background_Serv" float(53),
  "L9550_Number_of_Transmissions_of_Downlink_EGPRS_Interactive_Ser" float(53),
  "L9551_Number_of_Transmissions_of_Downlink_EGPRS_Interactive_Ser" float(53),
  "L9552_Number_of_Transmissions_of_Downlink_EGPRS_Interactive_Ser" float(53),
  "L9553_Total_Transmission_Duration_of_Downlink_GPRS_Background_S" float(53),
  "L9554_Total_Transmission_Duration_of_Downlink_GPRS_Interactive_" float(53),
  "L9555_Total_Transmission_Duration_of_Downlink_GPRS_Interactive_" float(53),
  "L9556_Total_Transmission_Duration_of_Downlink_GPRS_Interactive_" float(53),
  "L9557_Total_Transmission_Duration_of_Downlink_EGPRS_Background_" float(53),
  "L9558_Total_Transmission_Duration_of_Downlink_EGPRS_Interactive" float(53),
  "L9559_Total_Transmission_Duration_of_Downlink_EGPRS_Interactive" float(53),
  "L9560_Total_Transmission_Duration_of_Downlink_EGPRS_Interactive" float(53),
  "L9561_Number_of_Sent_Downlink_GPRS_Information_Messages" float(53),
  "L9562_Total_Bytes_of_Sent_Downlink_GPRS_Information_Messages" float(53),
  "L9563_Total_Bytes_of_Downlink_LLC_PDUs_of_EGPRS2-A_Users" float(53),
  "L9564_Downlink_Throughput_of_EGPRS2-A_Users_at_the_LLC_Layer" float(53),
  "L9565_Total_Bytes_of_Downlink_LLC_PDUs_for_UMTS_Capable_MSs" float(53),
  "L9566_Maximum_Downlink_Data_Rate_of_EGPRS2-A_Users_at_the_LLC_L" float(53),
  "L9571_Total_Bytes_of_Downlink_LLC_PDUs_of_Downlink_Dual-Carrier" float(53),
  "L9572_Downlink_Throughput_of_Downlink_Dual-Carrier_Users_at_the" float(53),
  "L9574_Maximum_Downlink_Data_Rate_of_Downlink_Dual-Carrier_Users" float(53),
  "L9576_Total_Bytes_of_Downlink_LLC_PDUs_for_PS_User_Awareness" float(53),
  "L9577_Total_Duration_of_Downlink_LLC_PDU_Transmission_for_PS_Us" float(53),
  "L9578_Total_Duration_of_High-Rate_Downlink_LLC_PDU_Transmission" float(53),
  "L9579_Total_Bytes_of_Downlink_LLC_PDUs_for_LTE_Capable_MSs" float(53),
  "L9586_Total_Bytes_of_Downlink_EGPRS_Streaming_Service_DTM_LLC_P" float(53),
  "L9587_Total_Bytes_of_Downlink_GPRS_Streaming_Service_DTM_LLC_PD" float(53),
  "L9588_Total_Bytes_of_Downlink_EGPRS_Background_and_Interactive_" float(53),
  "L9589_Total_Bytes_of_Downlink_GPRS_Background_and_Interactive_S" float(53),
  "L958A_Throughput_of_Downlink_EGPRS_Users_DTM_LLC_PDUs" float(53),
  "L958B_Throughput_of_Downlink_GPRS_Users_DTM_LLC_PDUs" float(53),
  "L958C_Total_Bytes_of_Sent_Downlink_GMM_SM_LLC_PDUs" float(53),
  "L958D_Total_Bytes_of_Sent_Downlink_GPRS_ARP1_LLC_PDUs" float(53),
  "L958E_Total_Bytes_of_Sent_Downlink_GPRS_ARP2_LLC_PDUs" float(53),
  "L958F_Total_Bytes_of_Sent_Downlink_GPRS_ARP3_LLC_PDUs" float(53),
  "L958G_Total_Bytes_of_Sent_Downlink_EGPRS_ARP1_LLC_PDUs" float(53),
  "L958H_Total_Bytes_of_Sent_Downlink_EGPRS_ARP2_LLC_PDUs" float(53),
  "L958I_Total_Bytes_of_Sent_Downlink_EGPRS_ARP3_LLC_PDUs" float(53),
  "L958J_Throughput_of_Downlink_GPRS_ARP1_LLC_PDU" float(53),
  "L958K_Throughput_of_Downlink_GPRS_ARP2_LLC_PDU" float(53),
  "L9590_Throughput_of_Downlink_GPRS_ARP3_LLC_PDU" float(53),
  "L9591_Throughput_of_Downlink_EGPRS_ARP1_LLC_PDU" float(53),
  "L9592_Throughput_of_Downlink_EGPRS_ARP2_LLC_PDU" float(53),
  "L9593_Throughput_of_Downlink_EGPRS_ARP3_LLC_PDU" float(53),
  "L9594_Total_Bytes_of_Downlink_DTM_User_LLC_PDUs" float(53),
  "TL9510_Downlink_LLC_Throughput_Rate" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Flow_Control
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Flow_Control";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Flow_Control" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A353A_Number_of_discarded_SMS_pagings_on_the_Abis_interface" float(53),
  "A353B_Number_of_discarded_CS_pagings_on_the_Abis_interface" float(53),
  "A353C_Number_of_discarded_PS_pagings_on_the_Abis_interface" float(53),
  "A353D_Number_of_Downlink_Packet_Immediate_Assignment_Requests_D" float(53),
  "A353E_Number_of_Uplink_Packet_Immediate_Assignment_Requests_Dis" float(53),
  "L3188A_MSG_DEL_IND_Messages_Sent_on_Abis_Interface" float(53),
  "L3188B_MSG_CCCH_LOAD_IND_RACH_Messages_Sent_on_Abis_Interface" float(53),
  "L3188C_MSG_CCCH_LOAD_IND_PCH_Messages_Sent_on_Abis_Interface_CS" float(53),
  "L3188D_MSG_CCCH_LOAD_IND_PCH_Messages_Sent_on_Abis_Interface_PS" float(53),
  "L3188H_Increases_of_Flow_Control_Levels" float(53),
  "L3188I_Decreases_of_Flow_Control_Levels" float(53),
  "L3188J_Ignored_Trigger_Events" float(53),
  "L3188K_Highest_Level_Delays" float(53),
  "L3188L_Paging_Messages_Discarded_from_the_PCH_Queue" float(53),
  "L3188M_Maximum_Seizure_Rate_of_PCH_Paging_Queue" float(53),
  "L3189A_Discarded_Channel_Requests_MOC" float(53),
  "L3189B_Discarded_Channel_Requests_MTC" float(53),
  "L3189C_Discarded_Channel_Requests_Emergency_Call" float(53),
  "L3189D_Discarded_Channel_Requests_Call_Re-establishment" float(53),
  "L3189E_Discarded_Channel_Requests_Location_Updating" float(53),
  "L3189F_Discarded_Channel_Requests_Packet_Call" float(53),
  "L3189G_Discarded_Channel_Requests_LMU+Reserved" float(53),
  "L3189H_Discarded_Channel_Requests_Protocol_Undefined" float(53),
  "L3189I_Discarded_Channel_Requests" float(53),
  "RL3188_OVERLOAD_rate_of_paging" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Immediate_Assignment
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Immediate_Assignment";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Immediate_Assignment" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A300A_Channel_Requests_MOC" float(53),
  "A300C_Channel_Requests_MTC" float(53),
  "A300D_Channel_Requests_Emergency_Call" float(53),
  "A300E_Channel_Requests_Call_Re-establishment" float(53),
  "A300F_Channel_Requests_Location_Updating" float(53),
  "A300H_Channel_Requests_Packet_Call" float(53),
  "A300I_Channel_Requests_LMU+Reserved" float(53),
  "A300K_Channel_Requests_Protocol_Undefined" float(53),
  "A300L_Number_of_times_that_the_BTS_filters_out_channel_requests" float(53),
  "A300P_Channel_Requests_Access_Reference_Value_111xxxxx" float(53),
  "A3010_Immediate_Assignment_Commands_SDCCH" float(53),
  "A3017_Immediate_Assignment_Commands_TCHF" float(53),
  "A3018_Immediate_Assignment_Commands_TCHH" float(53),
  "A301F_TCHF_Seizures_for_Speech_Service" float(53),
  "A301HH_TCHH_Seizures_for_Speech_Service" float(53),
  "A301H_Immediate_Assignment_Commands_Packet_Service" float(53),
  "A302H_Rejects_to_Immediate_Assignments_Packet_Service" float(53),
  "A302J_Rejects_to_Immediate_Assignments_Circuit_Service" float(53),
  "A3030A_Call_Setup_Indications_MOC_Non_SMS_SDCCH" float(53),
  "A3030B_Call_Setup_Indications_MOC_SMS_SDCCH" float(53),
  "A3030C_Call_Setup_Indications_MTC_SDCCH" float(53),
  "A3030D_Call_Setup_Indications_Emergency_Call_SDCCH" float(53),
  "A3030E_Call_Setup_Indications_Call_Re-establishment_SDCCH" float(53),
  "A3030F_Call_Setup_Indications_Location_Updating_SDCCH" float(53),
  "A3030G_Call_Setup_Indications_IMSI_Detach_SDCCH" float(53),
  "A3030H_Call_Setup_Indications_Packet_Service_SDCCH" float(53),
  "A3030I_Call_Setup_Indications_SS_SDCCH" float(53),
  "A3030J_Call_Setup_Indications_LCS_SDCCH" float(53),
  "A3030K_Call_Setup_Indications_Others_SDCCH" float(53),
  "A3037A_Call_Setup_Indications_MOC_Non_SMS_TCHF" float(53),
  "A3037B_Call_Setup_Indications_MOC_SMS_TCHF" float(53),
  "A3037C_Call_Setup_Indications_MTC_TCHF" float(53),
  "A3037D_Call_Setup_Indications_Emergency_Call_TCHF" float(53),
  "A3037E_Call_Setup_Indications_Call_Re-establishment_TCHF" float(53),
  "A3037G_Call_Setup_Indications_IMSI_Detach_TCHF" float(53),
  "A3037H_Call_Setup_Indications_Packet_Service_TCHF" float(53),
  "A3037I_Call_Setup_Indications_SS_TCHF" float(53),
  "A3037J_Call_Setup_Indications_LCS_TCHF" float(53),
  "A3037K_Call_Setup_Indications_Others_TCHF" float(53),
  "A3038A_Call_Setup_Indications_MOC_Non_SMS_TCHH" float(53),
  "A3038C_Call_Setup_Indications_MTC_TCHH" float(53),
  "A3038E_Call_Setup_Indications_Call_Re-establishment_TCHH" float(53),
  "A3038H_Call_Setup_Indications_Packet_Service_TCHH" float(53),
  "A3038I_Call_Setup_Indications_SS_TCHH" float(53),
  "A3038J_Call_Setup_Indications_LCS_TCHH" float(53),
  "A3038K_Call_Setup_Indications_Others_TCHH" float(53),
  "A3039A_Number_of_Call_Setup_Indications_CSFB_MOC" float(53),
  "A3039B_Number_of_Call_Setup_Indications_CSFB_MTC" float(53),
  "A3039J_SDCCH_Seizures_for_Speech_Service" float(53),
  "A3039L_SDCCH_Seizures_for_USSD_Service" float(53),
  "A3040_Call_Setup_Indications_Timed_Out_SDCCH" float(53),
  "A3046A_Number_of_Timeouts_Waiting_for_CC_Message_Mobile_Origina" float(53),
  "A3046B_Number_of_Timeouts_Waiting_for_CC_Message_Mobile_Termina" float(53),
  "A3046C_Number_of_Timeouts_Waiting_for_CC_Message_Location_Updat" float(53),
  "A3046D_Number_of_Local_Call_Indications_Signaling_Channel" float(53),
  "A3046E_Number_of_Local_SMSs_Signaling_Channel" float(53),
  "A3047_Call_Setup_Indications_Timed_Out_TCHF" float(53),
  "A3048_Call_Setup_Indications_Timed_Out_TCHH" float(53),
  "A3049_Call_Setup_Indication_Timed_Out_Access_Reference_Value_11" float(53),
  "A304A_Call_Setup_Indication_Timed_Out_Access_Reference_Value_00" float(53),
  "A304B_Call_Setup_Indication_Timed_Out_Access_Reference_Value_00" float(53),
  "A304C_Call_Setup_Indication_Timed_Out_Good_Receive_Level_and_No" float(53),
  "A304D_Call_Setup_Indication_Timed_Out_Large_TA_and_No_Bit_Error" float(53),
  "A3050_Rejects_to_Service_Requests_Congestion" float(53),
  "A3051_Rejects_to_Service_Requests_Network_Failure" float(53),
  "A3052_Rejects_to_Service_Requests_Illegal_MS" float(53),
  "A3053_Rejects_to_Service_Requests_Other_Causes" float(53),
  "A307_Maximum_Number_of_Random_Access_Control_Classes" float(53),
  "CA300J_Channel_Requests_Circuit_Service" float(53),
  "CA301J_Immediate_Assignment_Commands_Circuit_Service" float(53),
  "CA3030J_Call_Setup_Indications_SDCCH_Circuit_Service" float(53),
  "CA3039J_Call_Setup_Indications_TCH_Circuit_Service" float(53),
  "CA303H_Call_Setup_Indications_Packet_Service" float(53),
  "CA303J_Call_Setup_Indications_Circuit_Service" float(53),
  "CA304_Call_Setup_Indications_Timed_Out" float(53),
  "CA305_Rejects_to_Service_Requests" float(53),
  "CA306_Timeouts_Waiting_MSC's_CC_Message" float(53),
  "CA307A_Total_Duration_of_Random_Access_Control" float(53),
  "CA307B_Total_Number_of_Random_Access_Control_Classes" float(53),
  "RA301G_Success_Rate_of_Random_Access" float(53),
  "RA303G_Success_Rate_of_Immediate_Assignments" float(53),
  "RA303I_Success_Rate_of_Call_Setup_Immediate_Assignment" float(53),
  "RA333A_BSS_Call_Establishment_Success_Rate" float(53),
  "RA333B_Call_Complete_Establishment_Success_Rate" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3139F_Number_of_Requests_for_Incoming_Inter-Cell_Handovers_Bet" float(53),
  "A3139G_Number_of_Failed_Incoming_Inter-Cell_Handovers_Between_B" float(53),
  "CH3409A_Number_of_Incoming_External_Inter-Cell_Handover_Request" float(53),
  "CH340_Incoming_External_Inter-Cell_Handover_Requests" float(53),
  "CH3419A_Number_of_Incoming_External_Inter-Cell_Handover_Respons" float(53),
  "CH341_Incoming_External_Inter-Cell_Handover_Responses" float(53),
  "CH3429A_Number_of_Failed_Incoming_External_Inter-Cell_Handovers" float(53),
  "CH342C_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Expi" float(53),
  "CH342_Failed_Incoming_External_Inter-Cell_Handovers" float(53),
  "CH343_Successful_Incoming_External_Inter-Cell_Handovers" float(53),
  "CH344_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "CH346_Incoming_External_Inter-Cell_Handover_RequestsBetter_Cell" float(53),
  "CH347_Incoming_Inter-Cell_Handover_Requests_Timing_Advance" float(53),
  "H3400W_Incoming_External_Inter-Cell_Handover_Requests_SDCCH_900" float(53),
  "H3400X_Incoming_External_Inter-Cell_Handover_Requests_SDCCH_180" float(53),
  "H3400Y_Incoming_External_Inter-Cell_Handover_Requests_SDCCH_900" float(53),
  "H3400Z_Incoming_External_Inter-Cell_Handover_Requests_SDCCH_180" float(53),
  "H3409W_Incoming_External_Inter-Cell_Handover_Requests_TCH_900_8" float(53),
  "H3409X_Incoming_External_Inter-Cell_Handover_Requests_TCH_1800_" float(53),
  "H3409Y_Incoming_External_Inter-Cell_Handover_Requests_TCH_900_8" float(53),
  "H3409Z_Incoming_External_Inter-Cell_Handover_Requests_TCH_1800_" float(53),
  "H3410W_Incoming_External_Inter-Cell_Handover_Responses_SDCCH_90" float(53),
  "H3410X_Incoming_External_Inter-Cell_Handover_Responses_SDCCH_18" float(53),
  "H3410Y_Incoming_External_Inter-Cell_Handover_Responses_SDCCH_90" float(53),
  "H3410Z_Incoming_External_Inter-Cell_Handover_Responses_SDCCH_18" float(53),
  "H3417W_Incoming_External_Inter-Cell_Handover_Responses_TCHF_900" float(53),
  "H3417X_Incoming_External_Inter-Cell_Handover_Responses_TCHF_180" float(53),
  "H3417Y_Incoming_External_Inter-Cell_Handover_Responses_TCHF_900" float(53),
  "H3417Z_Incoming_External_Inter-Cell_Handover_Responses_TCHF_180" float(53),
  "H3418W_Incoming_External_Inter-Cell_Handover_Responses_TCHH_900" float(53),
  "H3418X_Incoming_External_Inter-Cell_Handover_Responses_TCHH_180" float(53),
  "H3418Y_Incoming_External_Inter-Cell_Handover_Responses_TCHH_900" float(53),
  "H3418Z_Incoming_External_Inter-Cell_Handover_Responses_TCHH_180" float(53),
  "H3420A_Failed_Incoming_External_Inter-Cell_Handovers_No_Channel" float(53),
  "H3420C_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Expi" float(53),
  "H3420W_Failed_Incoming_External_Inter-Cell_Handovers_SDCCH_900_" float(53),
  "H3420X_Failed_Incoming_External_Inter-Cell_Handovers_SDCCH_1800" float(53),
  "H3420Y_Failed_Incoming_External_Inter-Cell_Handovers_SDCCH_900_" float(53),
  "H3420Z_Failed_Incoming_External_Inter-Cell_Handovers_SDCCH_1800" float(53),
  "H3429A_Failed_Incoming_External_Inter-Cell_Handovers_No_Channel" float(53),
  "H3429Ca_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Exp" float(53),
  "H3429Cb_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Exp" float(53),
  "H3429W_Failed_Incoming_External_Inter-Cell_Handovers_TCH_900_85" float(53),
  "H3429X_Failed_Incoming_External_Inter-Cell_Handovers_TCH_1800_1" float(53),
  "H3429Y_Failed_Incoming_External_Inter-Cell_Handovers_TCH_900_85" float(53),
  "H3429Z_Failed_Incoming_External_Inter-Cell_Handovers_TCH_1800_1" float(53),
  "H342B_Failed_Incoming_External_Inter-Cell_Handovers_Terrestrial" float(53),
  "H342E_Failed_Incoming_External_Inter-Cell_Handovers_CIC_Unavail" float(53),
  "H342F_Failed_Incoming_External_Inter-Cell_Handovers_CIC_Allocat" float(53),
  "H342HA_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HB_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HC_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HD_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HE_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HF_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HG_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HH_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342H_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comma" float(53),
  "H342I_Failed_Incoming_External_Inter-Cell_Handovers_Invalid_Mes" float(53),
  "H342J_Failed_Incoming_External_Inter-Cell_Handovers_Requested_S" float(53),
  "H342L_Number_of_Incoming_BSC_Handover_Failures_No_Abis_Resource" float(53),
  "H3440_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "H3447_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "H3448_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "H3881A_Incoming_External_Inter-Cell_Handover_Detection_Messages" float(53),
  "H3882A_Incoming_External_Inter-Cell_Handover_Detection_Messages" float(53),
  "RH303D_Success_Rate_of_Incoming_External_Inter-Cell_Radio_Hando" float(53),
  "TH343_Success_Rate_of_Incoming_External_Inter-Cell_Handovers" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3139B_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "A3139C_Number_of_Incoming_Internal_Inter-Cell_Handover_Failures" float(53),
  "CH3209A_Number_of_Incoming_Internal_Inter-Cell_Handover_Request" float(53),
  "CH320a_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "CH320b_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "CH320_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "CH3219A_Number_of_Incoming_Internal_Inter-Cell_Handover_Respons" float(53),
  "CH321_Number_of_Incoming_Internal_Inter-Cell_Handover_Responses" float(53),
  "CH3229A_Number_of_Failed_Incoming_Internal_Inter-Cell_Handovers" float(53),
  "CH322C_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "CH322_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hando" float(53),
  "CH323_Number_of_Successful_Incoming_Internal_Inter-Cell_Handove" float(53),
  "CH324_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H3200W_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3200X_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3200Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3200Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209W_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209X_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320a_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H320b_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H320II_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320IO_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320OI_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320OO_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3210W_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3210X_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3210Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3210Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217W_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217X_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218W_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218X_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H321a_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H321b_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H321II_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H321IO_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H321OI_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H321OO_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3220A_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3220C_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3220W_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3220X_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3220Y_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3220Z_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3227Ca_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Han" float(53),
  "H3227Cb_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Han" float(53),
  "H3228Ca_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Han" float(53),
  "H3228Cb_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Han" float(53),
  "H3229A_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3229W_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3229X_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3229Y_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H3229Z_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H322a_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hando" float(53),
  "H322B_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hando" float(53),
  "H322D_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hando" float(53),
  "H322G_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hando" float(53),
  "H322H_Failed_Incoming_Internal_Inter-Cell_Handovers_Requested_S" float(53),
  "H322II_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H322IO_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H322I_Failed_Incoming_Internal_Inter-Cell_Handovers_Channel_Act" float(53),
  "H322M_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hando" float(53),
  "H322OI_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H322OO_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Hand" float(53),
  "H322_Number_of_Unsuccessful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323II_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323IO_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323OI_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323OO_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H3240_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H3247_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H3248_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H325A_Incoming_Internal_Inter-Cell_Handover_Clear_Cmd_Times_Bef" float(53),
  "H325B_Incoming_Internal_Inter-Cell_Handover_Clear_Cmd_Times_Aft" float(53),
  "H329A_Number_of_PT_Changes_During_Incoming_Internal_Inter-Cell_" float(53),
  "H329B_Number_of_Unsuccessful_PT_Changes_During_Incoming_Interna" float(53),
  "H329C_Number_of_Successful_PT_Changes_During_Incoming_Internal_" float(53),
  "H32aa_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H32ab_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "RH3031F_Failed_Incoming_Internal_Inter-Cell_Handovers_900_850_8" float(53),
  "RH3031G_Incoming_Internal_Inter-Cell_Handover_Requests_900_850_" float(53),
  "RH3032F_Failed_Incoming_Internal_Inter-Cell_Handovers_1800_1900" float(53),
  "RH3032G_Incoming_Internal_Inter-Cell_Handover_Requests_1800_190" float(53),
  "RH3033F_Failed_Incoming_External_Inter-Cell_Handovers_900_850_8" float(53),
  "RH3033G_Incoming_External_Inter-Cell_Handover_Requests_900_850_" float(53),
  "RH3034F_Failed_Incoming_External_Inter-Cell_Handovers_1800_1900" float(53),
  "RH3034G_Incoming_External_Inter-Cell_Handover_Requests_1800_190" float(53),
  "RH3035F_Failed_Outgoing_External_Inter-Cell_Handovers_900_850_8" float(53),
  "RH3035G_Outgoing_External_Inter-Cell_Handover_Requests_900_850_" float(53),
  "RH3036F_Failed_Outgoing_External_Inter-Cell_Handovers_1800_1900" float(53),
  "RH3036G_Outgoing_External_Inter-Cell_Handover_Requests_1800_190" float(53),
  "RH303A_Success_Rate_of_Radio_Handover" float(53),
  "RH303F_Success_Rate_of_Dual-Band_Handovers_900_850_810-1800_190" float(53),
  "RH303G_Success_Rate_of_Dual-Band_Handovers_1800_1900-900_850_81" float(53),
  "RH303_Handover_Success_Rate" float(53),
  "TC320b_Success_Rate_of_Incoming_Internal_Inter-Cell_Handovers_D" float(53),
  "TH320a_Success_Rate_of_Incoming_Internal_Inter-Cell_Handovers_D" float(53),
  "TH323_Success_Rate_of_Incoming_Internal_Inter-Cell_Handovers" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CH360_Incoming_Inter-RAT_Inter-Cell_Handover_Requests" float(53),
  "CH361_Incoming_Inter-RAT_Inter-Cell_Handover_Responses" float(53),
  "CH363_Successful_Incoming_Inter-RAT_Inter-Cell_Handovers" float(53),
  "H3600_Incoming_Inter-RAT_Inter-Cell_Handover_Requests_SDCCH" float(53),
  "H3609_Incoming_Inter-RAT_Inter-Cell_Handover_Requests_TCH" float(53),
  "H3610_Incoming_Inter-RAT_Inter-Cell_Handover_Responses_SDCCH" float(53),
  "H3617_Incoming_Inter-RAT_Inter-Cell_Handover_Responses_TCHF" float(53),
  "H3618_Incoming_Inter-RAT_Inter-Cell_Handover_Responses_TCHH" float(53),
  "H3620A_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_No_Channe" float(53),
  "H3620C_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Exp" float(53),
  "H3620_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_SDCCH" float(53),
  "H3627_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_TCHF" float(53),
  "H3628_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_TCHH" float(53),
  "H3629A_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_No_Channe" float(53),
  "H3629Ca_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Ex" float(53),
  "H3629Cb_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Ex" float(53),
  "H362B_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Terrestria" float(53),
  "H362C_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Expi" float(53),
  "H362E_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_CIC_Unavai" float(53),
  "H362F_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_CIC_Alloca" float(53),
  "H362H_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H362J_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Invalid_Me" float(53),
  "H362L_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Requested_" float(53),
  "H362_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers" float(53),
  "TH363_Success_Rate_of_Incoming_Inter-RAT_Inter-Cell_Handover" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Intra-Cell_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Intra-Cell_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Intra-Cell_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CH3004A_Number_of_Successful_Internal_Intra-Cell_Handovers_Non-" float(53),
  "CH3004B_Number_of_Successful_Internal_Intra-Cell_Handovers_Non-" float(53),
  "CH300a_Number_of_Intra-BSC_Intra-Cell_Handover_Successes_During" float(53),
  "CH300b_Number_of_Intra-BSC_Intra-Cell_Handover_Successes_During" float(53),
  "CH300_Internal_Intra-Cell_Handover_Requests" float(53),
  "CH301_Internal_Intra-Cell_Handover_Commands" float(53),
  "CH3021_Failed_Internal_Intra-Cell_Handovers_Overlaid_to_Underla" float(53),
  "CH3022_Failed_Internal_Intra-Cell_Handovers_Underlaid_to_Overla" float(53),
  "CH302A_Failed_Internal_Intra-Cell_Handovers_No_Channel_Availabl" float(53),
  "CH302C_Failed_Internal_Intra-Cell_Handovers_Timer_Expiry" float(53),
  "CH302D_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "CH302_Failed_Internal_Intra-Cell_Handovers" float(53),
  "CH3031_Successful_Internal_Intra-Cell_Handovers_Overlaid_to_Und" float(53),
  "CH3032_Successful_Internal_Intra-Cell_Handovers_Underlaid_to_Ov" float(53),
  "CH3035A_Successful_Internal_Intra-Cell_Handovers_AMR_TCHF-TCHH" float(53),
  "CH3035B_Successful_Internal_Intra-Cell_Handovers_AMR_TCHH-TCHF" float(53),
  "CH3036A_Internal_Intra-Cell_Handover_Requests_due_to_Uplink_Int" float(53),
  "CH3036B_Internal_Intra-Cell_Handover_Requests_due_to_Downlink_I" float(53),
  "CH303_Successful_Internal_Intra-Cell_Handovers" float(53),
  "CH304_Internal_Intra-Cell_Handover_Detection_Messages_Received_" float(53),
  "H0021C_Number_of_Intra-cell_Handover_Failures_Due_to_Uplink_Int" float(53),
  "H0021D_Number_of_Intra-cell_Handover_Failures_Due_to_Downlink_I" float(53),
  "H0021E_Number_of_Intra-BSC_Intra-Cell_Handover_Command_Uplink_I" float(53),
  "H0021F_Number_of_Intra-BSC_Intra-Cell_Handover_Command_Downlink" float(53),
  "H3000_Internal_Intra-Cell_Handover_Requests_SDCCH" float(53),
  "H3001_Internal_Intra-Cell_Handover_Requests_Overlaid_to_Underla" float(53),
  "H3002_Internal_Intra-Cell_Handover_Requests_Underlaid_to_Overla" float(53),
  "H3005A_Internal_Intra-Cell_Handover_Requests_AMR_TCHF-TCHH" float(53),
  "H3005B_Internal_Intra-Cell_Handover_Requests_AMR_TCHH-TCHF" float(53),
  "H3009_Internal_Intra-Cell_Handover_Requests_TCH" float(53),
  "H300a_Internal_Intra-Cell_Handover_Requests_BSC_LOOP" float(53),
  "H300b_Internal_Intra-Cell_Handover_Requests_BTS_LOOP" float(53),
  "H3010_Internal_Intra-Cell_Handover_Commands_SDCCH" float(53),
  "H3011_Internal_Intra-Cell_Handover_Commands_Overlaid_to_Underla" float(53),
  "H3012_Internal_Intra-Cell_Handover_Commands_Underlaid_to_Overla" float(53),
  "H3015A_Internal_Intra-Cell_Handover_Commands_AMR_TCHF-TCHH" float(53),
  "H3015B_Internal_Intra-Cell_Handover_Commands_AMR_TCHH-TCHF" float(53),
  "H3017_Internal_Intra-Cell_Handover_Commands_TCHF" float(53),
  "H3018_Internal_Intra-Cell_Handover_Commands_TCHH" float(53),
  "H301a_Internal_Intra-Cell_Handover_Commands_BSC_LOOP" float(53),
  "H301b_Internal_Intra-Cell_Handover_Commands_BTS_LOOP" float(53),
  "H3020A_Failed_Internal_Intra-Cell_Handovers_No_Channel_Availabl" float(53),
  "H3020C_Failed_Internal_Intra-Cell_Handovers_Timer_Expired_SDCCH" float(53),
  "H3020_Failed_Internal_Intra-Cell_Handovers_SDCCH" float(53),
  "H3021A_Failed_Internal_Intra-Cell_Handovers_Channel_Unavailable" float(53),
  "H3021M_Failed_Internal_Intra-Cell_Handovers_Other_Causes_Overla" float(53),
  "H3022A_Failed_Internal_Intra-Cell_Handovers_No_Channel_Availabl" float(53),
  "H3022M_Failed_Internal_Intra-Cell_Handovers_Other_Causes_Underl" float(53),
  "H3025A_Failed_Internal_Intra-Cell_Handovers_AMR_TCHF-TCHH" float(53),
  "H3025B_Failed_Internal_Intra-Cell_Handovers_AMR_TCHH-TCHF" float(53),
  "H3027Ca_Failed_Internal_Intra-Cell_Handovers_Timer_Expired_TCHF" float(53),
  "H3027Cb_Failed_Internal_Intra-Cell_Handovers_Timer_Expired_TCHF" float(53),
  "H3028Ca_Failed_Internal_Intra-Cell_Handovers_Timer_Expired_TCHH" float(53),
  "H3028Cb_Failed_Internal_Intra-Cell_Handovers_Timer_Expired_TCHH" float(53),
  "H3029A_Failed_Internal_Intra-Cell_Handovers_No_Channel_Availabl" float(53),
  "H3029_Failed_Internal_Intra-Cell_Handovers_TCH" float(53),
  "H302a_Failed_Internal_Intra-Cell_Handovers_BSC_LOOP" float(53),
  "H302B_Failed_Internal_Intra-Cell_Handovers_Terrestrial_Resource" float(53),
  "H302Da_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Db_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dc_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dd_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302De_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Df_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dg_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dh_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Di_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dj_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dk_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dl_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dm_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dn_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Do_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dp_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302Dq_Failed_Internal_Intra-Cell_Handovers_Reconnection_to_Old" float(53),
  "H302E_Number_of_Intra-BSC_Intra-Cell_Handover_Failures_Due_to_N" float(53),
  "H302G_Failed_Internal_Intra-Cell_Handovers_A_Interface_Failure" float(53),
  "H302H_Failed_Internal_Intra-Cell_Handovers_Requested_Speech_Ver" float(53),
  "H302I_Failed_Internal_Intra-Cell_Handovers_Channel_Activation_F" float(53),
  "H302_Failed_Internal_Intra-Cell_Handovers_BTS_LOOP" float(53),
  "H3040_Internal_Intra-Cell_Handover_Detection_Messages_Received_" float(53),
  "H3047_Internal_Intra-Cell_Handover_Detection_Messages_Received_" float(53),
  "H3048_Internal_Intra-Cell_Handover_Detection_Messages_Received_" float(53),
  "H304a_Internal_Intra-Cell_Handover_Detection_Messages_Received_" float(53),
  "H304b_Internal_Intra-Cell_Handover_Detection_Messages_Received_" float(53),
  "H3099X_BSC_Intra-cell_Handover_Detection_Times_AMR_TCHF" float(53),
  "H3099Y_BSC_Intra-cell_Handover_Detection_Times_AMR_TCHH" float(53),
  "H3200A_Internal_Intra-Cell_Handover_Requests_Non-AMR_TCHF-TCHH" float(53),
  "H3200B_Internal_Intra-Cell_Handover_Requests_Non-AMR_TCHH-TCHF" float(53),
  "H3201A_Internal_Intra-Cell_Handover_Commands_Non-AMR_TCHF-TCHH" float(53),
  "H3201B_Internal_Intra-Cell_Handover_Commands_Non-AMR_TCHH-TCHF" float(53),
  "H3202A_Failed_Internal_Intra-Cell_Handovers_Non-AMR_TCHF-TCHH" float(53),
  "H3202B_Failed_Internal_Intra-Cell_Handovers_Non-AMR_TCHH-TCHF" float(53),
  "RH303B_Intra-BSC_Handover_Success_Rate" float(53),
  "RH303C_Intra-BSC_Radio_Handover_Success_Rate" float(53),
  "RH333_Handover_Drop_Rate_of_TCH" float(53),
  "TH300a_Success_Rate_of_Intra-BSC_Intra-Cell_Handover_During_BSC" float(53),
  "TH300b_Success_Rate_of_Intra-BSC_Intra-Cell_Handover_During_BTS" float(53),
  "TH3031_Success_Rate_of_Internal_Intra-Cell_Handover_Overlaid_to" float(53),
  "TH3032_Success_Rate_of_Internal_Intra-Cell_Handover_Underlaid_t" float(53),
  "TH3035A_Success_Rate_of_Internal_Intra-Cell_Handover_AMR_TCHF-T" float(53),
  "TH3035B_Success_Rate_of_Internal_Intra-Cell_Handover_AMR_TCHH-T" float(53),
  "TH303_Success_Rate_of_Internal_Intra-Cell_Handover" float(53),
  "TH3203A_Success_Rate_of_Internal_Intra-Cell_Handovers_Non-AMR_T" float(53),
  "TH3203B_Success_Rate_of_Internal_Intra-Cell_Handovers_Non-AMR_T" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@KPI
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@KPI";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@KPI" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "K3000_SDCCH_Seizure_Requests" float(53),
  "K3001_Failed_SDCCH_Seizures_due_to_Busy_SDCCH" float(53),
  "K3003_Successful_SDCCH_Seizures" float(53),
  "K3004_Traffic_Volume_on_SDCCH" float(53),
  "K3005_Available_SDCCHs" float(53),
  "K3006_Configured_SDCCHs" float(53),
  "K3010A_TCH_Seizure_Requests_Traffic_Channel" float(53),
  "K3010B_TCH_Seizure_Requests_in_TCH_Handovers_Traffic_Channel" float(53),
  "K3011A_Failed_TCH_Seizures_due_to_Busy_TCH_Traffic_Channel" float(53),
  "K3011B_Failed_TCH_Seizures_in_TCH_Handovers_due_to_Busy_TCH_Tra" float(53),
  "K3012A_Call_Drops_on_TCH_in_Stable_State_Traffic_Channel" float(53),
  "K3012B_Call_Drops_in_TCH_Handovers_Traffic_Channel" float(53),
  "K3013A_Successful_TCH_Seizures_Traffic_Channel" float(53),
  "K3013B_Successful_TCH_Seizures_in_TCH_handovers_Traffic_Channel" float(53),
  "K3014_Traffic_Volume_on_TCH" float(53),
  "K3015_Available_TCHs" float(53),
  "K3016_Configured_TCHs" float(53),
  "K3020_TCH_Seizure_Requests_Signaling_Channel" float(53),
  "K3021_Failed_TCH_Seizures_due_to_Busy_TCH_Signaling_Channel" float(53),
  "K3022_Call_Drops_on_TCH_Signaling_Channel" float(53),
  "K3023_Successful_TCH_Seizures_Signaling_Channel" float(53),
  "K3024_Traffic_Volume_on_TCH_Signaling_Channel" float(53),
  "K3034_TCHH_Traffic_Volume" float(53),
  "K3040_Successful_TCH_Seizures" float(53),
  "K3041_TCH_Congestion_Rate_Overflow" float(53),
  "K3043_TCH_Seizure_Success_Rate" float(53),
  "K3045_Congestion_Rate_on_TCH_All_Channels_Busy" float(53),
  "K3100_Immediate_Assignment_Requests" float(53),
  "K3101_Immediate_Assignment_Commands" float(53),
  "K3170_Dual-Band_Handover_Requests" float(53),
  "K3173F_Failed_Dual-Band_Handovers" float(53),
  "K3173_Successful_Dual-Band_Handovers" float(53),
  "RK3255_TRX_Usability" float(53),
  "RM3176_Successful_TCH_Seizures_Signaling_Channel_TCHF" float(53),
  "RM3178_Successful_TCH_Seizures_Traffic_Channel_TCHF" float(53),
  "RM3179_Successful_TCH_Seizures_in_TCH_Handovers_Traffic_Channel" float(53),
  "RM3276_Successful_TCH_Seizures_Signaling_Channel_TCHH" float(53),
  "RM3278_Successful_TCH_Seizures_Traffic_Channel_TCHH" float(53),
  "RM3279_Successful_TCH_Seizures_in_TCH_Handovers_Traffic_Channel" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Location_Update
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Location_Update";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Location_Update" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "LA300_Number_of_Location_Update_Requests_Normal_Location_Update" float(53),
  "LA301_Number_of_Location_Update_Requests_Periodic_Location_Upda" float(53),
  "LA302_Number_of_Location_Update_Requests_IMSI_Attach" float(53),
  "LA303_Number_of_Accepted_Location_Update_Requests" float(53),
  "LA304_Number_of_Rejected_Location_Update_Requests" float(53),
  "LA305_Number_of_Rejected_Location_Update_Requests_Normal_Failur" float(53),
  "LA306_Number_of_Rejected_Location_Update_Requests_Not_Allowed_b" float(53),
  "LA307_Number_of_Rejected_Location_Update_Requests_Interface_Una" float(53),
  "LA308_Number_of_Rejected_Location_Update_Requests_Congestion" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Maximum_Busy_Channel
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Maximum_Busy_Channel";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Maximum_Busy_Channel" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "R3550N4_Maximum_Number_of_Busy_VAMOS_FR_Channels_in_the_Overlai" float(53),
  "R3560_Maximum_Number_of_Busy_Channels_SDCCH" float(53),
  "R3561_Maximum_Number_of_Busy_Channels_TCHF" float(53),
  "R3562_Maximum_Number_of_Busy_Channels_TCHH" float(53),
  "R3563_Maximum_Number_of_Busy_Channels_VAMOS_TCHH" float(53),
  "R3564_Maximum_Number_of_Busy_Channels_in_Overlaid_Subcell_VAMOS" float(53),
  "R3565_Maximum_Number_of_Busy_VAMOS_FR_Channels" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@MR_Quantity
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@MR_Quantity";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@MR_Quantity" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CR3557_Traffic_Volume_on_TCHs_Underlaid_Subcell" float(53),
  "CR3558_Traffic_Volume_on_TCHs_Overlaid_Subcell" float(53),
  "CR355A_Traffic_Volume_on_TCHs" float(53),
  "CS3027_Number_of_EMRs_on_the_TCHF" float(53),
  "CS3028_Number_of_EMRs_on_the_TCHH" float(53),
  "CS3031A_Rate_of_MRs_Weak_Coverage" float(53),
  "CS3031B_Rate_of_MRs_Excessive_Coverage" float(53),
  "CS3032_Number_of_Measurement_Reports_Without_DL_Measurement_Inf" float(53),
  "CS3033_Number_of_MRs_Measured_in_the_Highest-Level_1800_MHz_Nei" float(53),
  "CS3034_Number_of_MRs_Measured_in_the_Highest-Level_Weak-Coverag" float(53),
  "CS3035_MRs_Measured_in_the_Highest-Level_1800_MHz_Neighboring_C" float(53),
  "CS3036_Received_MRs_Measured_in_the_Highest-Level_Weak-Coverage" float(53),
  "CS3037_Number_of_MRs_Received_in_a_900_MHz_Serving_Cell_Only_wi" float(53),
  "CS3038_Number_of_MRs_Received_in_a_900_MHz_Serving_Cell_Only_wi" float(53),
  "CS3039:Number of MRs Received in Cell Coverage(for UMTS/LTE-cap" float(53),
  "CS3040_Number_of_MRs_Received_in_Weak-Coverage_Cellfor_UMTS_LTE" float(53),
  "CS3041_Number_of_MRs_Received_in_Cell_Coveragefor_LTE-capable_U" float(53),
  "CS3042_Number_of_MRs_Received_in_Weak-Coverage_Cellfor_LTE-capa" float(53),
  "S3013_MRs_of_Serving_Cells" float(53),
  "S373_Number_of_Downlink_MRs" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@MR_upon_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@MR_upon_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@MR_upon_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AS330A_Mean_Uplink_Receive_Level_during_Concentric_Cell_Handove" float(53),
  "AS330B_Mean_Uplink_Receive_Level_during_Concentric_Cell_Handove" float(53),
  "AS330C_Mean_Uplink_Receiving_Level_during_Handover_Initiation" float(53),
  "AS331C_Mean_Uplink_Receive_Quality_during_Handover_Initiation" float(53),
  "AS332A_Mean_Downlink_Receive_Level_during_Concentric_Cell_Hando" float(53),
  "AS332B_Mean_Downlink_Receive_Level_during_Concentric_Cell_Hando" float(53),
  "AS334A_Mean_Timing_Advance_during_Concentric_Cell_Handover_Init" float(53),
  "AS334B_Mean_Timing_Advance_during_Concentric_Cell_Handover_Init" float(53),
  "S335_Mean_Uplink_Receiving_Level_during_Edge_Handover_Initiatio" float(53),
  "S336_Mean_Downlink_Receiving_Level_during_Edge_Handover_Initiat" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@MS_Capability
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@MS_Capability";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@MS_Capability" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A03601_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03602_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03603_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03604_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03605_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03606_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03607_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03608_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03609_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03610_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03611_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03612_Number_of_Calls_Originated_or_Terminated_by_MSs_Capable_" float(53),
  "A03613_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03614_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03615_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03616_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03617_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03618_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03619_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03620_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03621_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03622_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03623_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03624_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03625_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03626_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03627_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03628_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03629_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03630_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03631_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03640_Number_of_Calls" float(53),
  "A03641_Number_of_VAMOS-1_Calls" float(53),
  "A03642_Number_of_VAMOS-2_Calls" float(53),
  "A03643_Number_of_Calls_Initiated_by_MSs_That_Support_Network_Sh" float(53),
  "A03644_Number_of_Calls_Made_by_LTE_FDD_Capable_MSs" float(53),
  "A03645_Number_of_Calls_Made_by_LTE_TDD_Capable_MSs" float(53),
  "A03646_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS900_Frequ" float(53),
  "A03647_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS850_Frequ" float(53),
  "A03648_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS1700_Freq" float(53),
  "A03649_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS1800_Freq" float(53),
  "A03650_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS1900_Freq" float(53),
  "A03651_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS2100_Freq" float(53),
  "A3413C_Number_of_Cipher_Commands_A5_3" float(53),
  "A3413D_Number_of_Cipher_Commands_A5_4" float(53),
  "A3433S_Number_of_Successful_Cipher_Times_A5_3" float(53),
  "A3433X_Number_of_Successful_Cipher_Times_A5_4" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3139H_Number_of_Requests_for_Outgoing_Inter-Cell_Handovers_Bet" float(53),
  "A3139I_Number_of_Failed_Outgoing_Inter-Cell_Handovers_Between_B" float(53),
  "A3139O:Number of Inter-BSC Handovers Rejected by the MSC After " float(53),
  "CH3309A_Number_of_Outgoing_External_Inter-Cell_Handover_Request" float(53),
  "CH330_Outgoing_External_Inter-Cell_Handover_Requests" float(53),
  "CH3319A_Number_of_Outgoing_External_Inter-Cell_Handover_Command" float(53),
  "CH331_Outgoing_External_Inter-Cell_Handover_Commands" float(53),
  "CH3329A_Number_of_Failed_Outgoing_External_Inter-Cell_Handovers" float(53),
  "CH332C_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expired" float(53),
  "CH332D_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "CH332H_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "CH332K_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "CH332L_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "CH332_Failed_Outgoing_External_Inter-Cell_Handovers" float(53),
  "CH333a_Number_of_Outgoing_External_Inter-Cell_Handover_Successe" float(53),
  "CH333b_Number_of_Outgoing_External_Inter-Cell_Handover_Successe" float(53),
  "CH333_Successful_Outgoing_External_Inter-Cell_Handovers" float(53),
  "H3300N_Number_of_Outgoing_External_Inter-Cell_Handover_Requests" float(53),
  "H3300W_Outgoing_External_Inter-Cell_Handover_Requests_SDCCH_Exc" float(53),
  "H3300X_Outgoing_External_Inter-Cell_Handover_Requests_SDCCH_Exc" float(53),
  "H3300Y_Outgoing_External_Inter-Cell_Handover_Requests_SDCCH_Exc" float(53),
  "H3300Z_Outgoing_External_Inter-Cell_Handover_Requests_SDCCH_Exc" float(53),
  "H3301W_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3301X_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3301Y_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3301Z_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3303_Outgoing_External_Inter-Cell_Handover_Requests_Different_" float(53),
  "H3307W_Outgoing_External_Inter-Cell_Handover_Requests_TCHF_Excl" float(53),
  "H3307X_Outgoing_External_Inter-Cell_Handover_Requests_TCHF_Excl" float(53),
  "H3307Y_Outgoing_External_Inter-Cell_Handover_Requests_TCHF_Excl" float(53),
  "H3307Z_Outgoing_External_Inter-Cell_Handover_Requests_TCHF_Excl" float(53),
  "H3308W_Outgoing_External_Inter-Cell_Handover_Requests_TCHH_Excl" float(53),
  "H3308X_Outgoing_External_Inter-Cell_Handover_Requests_TCHH_Excl" float(53),
  "H3308Y_Outgoing_External_Inter-Cell_Handover_Requests_TCHH_Excl" float(53),
  "H3308Z_Outgoing_External_Inter-Cell_Handover_Requests_TCHH_Excl" float(53),
  "H3309A:Number of Inter-BSC Handover Requests Initiated to Intra" float(53),
  "H330A_Outgoing_External_Inter-Cell_Handover_Requests_Uplink_Qua" float(53),
  "H330B_Outgoing_External_Inter-Cell_Handover_Requests_Downlink_Q" float(53),
  "H330C_Outgoing_External_Inter-Cell_Handover_Requests_Uplink_Str" float(53),
  "H330D_Outgoing_External_Inter-Cell_Handover_Requests_Downlink_S" float(53),
  "H330E_Outgoing_External_Inter-Cell_Handover_Requests_Timing_Adv" float(53),
  "H330F_Outgoing_External_Inter-Cell_Handover_Requests_Better_Cel" float(53),
  "H330G_Outgoing_External_Inter-Cell_Handover_Requests_Load" float(53),
  "H330H_Outgoing_External_Inter-Cell_Handover_Requests_Rapid_Leve" float(53),
  "H330I_Outgoing_External_Inter-Cell_Handover_Requests_MSC_Interv" float(53),
  "H330J_Outgoing_External_Inter-Cell_Handover_Requests_OM_Interve" float(53),
  "H330L_Outgoing_External_Inter-Cell_Handover_Requests_Other_Caus" float(53),
  "H3310N_Number_of_Outgoing_External_Inter-Cell_Handover_Commands" float(53),
  "H3310W_Outgoing_External_Inter-Cell_Handover_Commands_SDCCH_Exc" float(53),
  "H3310X_Outgoing_External_Inter-Cell_Handover_Commands_SDCCH_Exc" float(53),
  "H3310Y_Outgoing_External_Inter-Cell_Handover_Commands_SDCCH_Exc" float(53),
  "H3310Z_Outgoing_External_Inter-Cell_Handover_Commands_SDCCH_Exc" float(53),
  "H3311W_Outgoing_External_Inter-Cell_Handover_Commands_Directed_" float(53),
  "H3311X_Outgoing_External_Inter-Cell_Handover_Commands_Directed_" float(53),
  "H3311Y_Outgoing_External_Inter-Cell_Handover_Commands_Directed_" float(53),
  "H3311Z_Outgoing_External_Inter-Cell_Handover_Commands_Directed_" float(53),
  "H3313_Outgoing_External_Inter-Cell_Handover_Commands_Different_" float(53),
  "H3317W_Outgoing_External_Inter-Cell_Handover_Commands_TCHF_Excl" float(53),
  "H3317X_Outgoing_External_Inter-Cell_Handover_Commands_TCHF_Excl" float(53),
  "H3317Y_Outgoing_External_Inter-Cell_Handover_Commands_TCHF_Excl" float(53),
  "H3317Z_Outgoing_External_Inter-Cell_Handover_Commands_TCHF_Excl" float(53),
  "H3318W_Outgoing_External_Inter-Cell_Handover_Commands_TCHH_Excl" float(53),
  "H3318X_Outgoing_External_Inter-Cell_Handover_Commands_TCHH_Excl" float(53),
  "H3318Y_Outgoing_External_Inter-Cell_Handover_Commands_TCHH_Excl" float(53),
  "H3318Z_Outgoing_External_Inter-Cell_Handover_Commands_TCHH_Excl" float(53),
  "H331Aa_Number_of_Outgoing_External_Inter-Cell_Handover_Commands" float(53),
  "H331A_Outgoing_External_Inter-Cell_Handover_Commands_Uplink_Qua" float(53),
  "H331B_Outgoing_External_Inter-Cell_Handover_Commands_Downlink_Q" float(53),
  "H331C_Outgoing_External_Inter-Cell_Handover_Commands_Uplink_Str" float(53),
  "H331D_Outgoing_External_Inter-Cell_Handover_Commands_Downlink_S" float(53),
  "H331E_Outgoing_External_Inter-Cell_Handover_Commands_Timing_Adv" float(53),
  "H331F_Outgoing_External_Inter-Cell_Handover_Commands_Better_Cel" float(53),
  "H331G_Outgoing_External_Inter-Cell_Handover_Commands_Load" float(53),
  "H331H_Outgoing_External_Inter-Cell_Handover_Commands_Rapid_Leve" float(53),
  "H331I_Outgoing_External_Inter-Cell_Handover_Commands_MSC_Interv" float(53),
  "H331J_Outgoing_External_Inter-Cell_Handover_Commands_OM_Interve" float(53),
  "H331L_Outgoing_External_Inter-Cell_Handover_Commands_Other_Caus" float(53),
  "H3320C_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry_" float(53),
  "H3320L_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry_" float(53),
  "H3320N_Number_of_Failed_Outgoing_External_Inter-Cell_Handovers_" float(53),
  "H3320W_Failed_Outgoing_External_Inter-Cell_Handovers_SDCCH_Excl" float(53),
  "H3320X_Failed_Outgoing_External_Inter-Cell_Handovers_SDCCH_Excl" float(53),
  "H3320Y_Failed_Outgoing_External_Inter-Cell_Handovers_SDCCH_Excl" float(53),
  "H3320Z_Failed_Outgoing_External_Inter-Cell_Handovers_SDCCH_Excl" float(53),
  "H3321C_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry_" float(53),
  "H3321L_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry_" float(53),
  "H3321W_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3321X_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3321Y_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3321Z_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3322A_Failed_Outgoing_External_Inter-Cell_Handovers_Uplink_Qua" float(53),
  "H3322B_Failed_Outgoing_External_Inter-Cell_Handovers_Downlink_Q" float(53),
  "H3322C_Failed_Outgoing_External_Inter-Cell_Handovers_Uplink_Str" float(53),
  "H3322D_Failed_Outgoing_External_Inter-Cell_Handovers_Downlink_S" float(53),
  "H3322E_Failed_Outgoing_External_Inter-Cell_Handovers_Timing_Adv" float(53),
  "H3322F_Failed_Outgoing_External_Inter-Cell_Handovers_Better_Cel" float(53),
  "H3322G_Failed_Outgoing_External_Inter-Cell_Handovers_Load" float(53),
  "H3322H_Failed_Outgoing_External_Inter-Cell_Handovers_Rapid_Leve" float(53),
  "H3322I_Failed_Outgoing_External_Inter-Cell_Handovers_MSC_Interv" float(53),
  "H3322J_Failed_Outgoing_External_Inter-Cell_Handovers_OM_Interve" float(53),
  "H3322L_Failed_Outgoing_External_Inter-Cell_Handovers_Other_Caus" float(53),
  "H3323_Failed_Outgoing_External_Inter-Cell_Handovers_Different_S" float(53),
  "H3327Ca_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3327Cb_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3327La_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3327Lb_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3327W_Failed_Outgoing_External_Inter-Cell_Handovers_TCHF_Exclu" float(53),
  "H3327X_Failed_Outgoing_External_Inter-Cell_Handovers_TCHF_Exclu" float(53),
  "H3327Y_Failed_Outgoing_External_Inter-Cell_Handovers_TCHF_Exclu" float(53),
  "H3327Z_Failed_Outgoing_External_Inter-Cell_Handovers_TCHF_Exclu" float(53),
  "H3328Ca_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3328Cb_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3328La_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3328Lb_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3328W_Failed_Outgoing_External_Inter-Cell_Handovers_TCHH_Exclu" float(53),
  "H3328X_Failed_Outgoing_External_Inter-Cell_Handovers_TCHH_Exclu" float(53),
  "H3328Y_Failed_Outgoing_External_Inter-Cell_Handovers_TCHH_Exclu" float(53),
  "H3328Z_Failed_Outgoing_External_Inter-Cell_Handovers_TCHH_Exclu" float(53),
  "H332Aa_Number_of_Outgoing_External_Inter-Cell_Handover_Failures" float(53),
  "H332Ab_Number_of_Outgoing_External_Inter-Cell_Handover_Failures" float(53),
  "H332Da_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Db_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dc_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dd_Failed_Outgoing_External_Inter-Cell_Handovers_Abnormal_R" float(53),
  "H332De_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Df_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_F" float(53),
  "H332Dg_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dh_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Di_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dj_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dk_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dl_Failed_Outgoing_External_Inter-Cell_Handovers_Message_Ty" float(53),
  "H332Dm_Failed_Outgoing_External_Inter-Cell_Handovers_Message_Ty" float(53),
  "H332Dn_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Do_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dp_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dq_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332G_Failed_Outgoing_External_Inter-Cell_Handovers_A_Interface" float(53),
  "H332Ha_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hb_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hc_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hd_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332He_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hf_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hg_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hh_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Ka_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kb_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kc_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kd_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Ke_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kf_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kg_Failed_Outgoing_External_Inter-Cell_Handovers_rejects_Re" float(53),
  "H332Kh_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Ki_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kj_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kk_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kl_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Km_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kn_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H3339A:Number of Successful Inter-BSC Handovers Initiated to In" float(53),
  "H333a_Number_of_Outgoing_External_Inter-Cell_Handover_Requests_" float(53),
  "H333b_Number_of_Outgoing_External_Inter-Cell_Handover_Requests_" float(53),
  "H335A_Outgoing_External_Inter-Cell_Handover_Clear_Cmd_Times_Bef" float(53),
  "H335B_Outgoing_External_Inter-Cell_Handover_Clear_Cmd_Times_Aft" float(53),
  "H371P_Number_of_Outgoing_External_Inter-Cell_Handover_Commands_" float(53),
  "RH303E_Success_Rate_of_External_Outgoing_Cell_Radio_Handovers" float(53),
  "TH333a_Success_Rate_of_Outgoing_External_Inter-Cell_Handovers_D" float(53),
  "TH333b_Success_Rate_of_Outgoing_External_Inter-Cell_Handovers_D" float(53),
  "TH333_Success_Rate_of_Outgoing_External_Inter-Cell_Handovers" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3139D_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "A3139E_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "CH3109A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Request" float(53),
  "CH310_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "CH3119A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Command" float(53),
  "CH311_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "CH3129A_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers" float(53),
  "CH312C_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "CH312D_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "CH312_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hando" float(53),
  "CH313_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handove" float(53),
  "CH370a_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "CH370b_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H3100N_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310B_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310C_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310D_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310E_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310F_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310G_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310H_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310II_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310IO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310I_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310J_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310L_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310M_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310N_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310OI_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310OO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310O_Outgoing_Internal_Inter-Cell_Handover_Requests_MS_Handove" float(53),
  "H3110N_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311Aa_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311Ab_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311B_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311C_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311D_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311E_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311F_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311G_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311H_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311II_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311IO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311I_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311J_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311L_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311M_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311N_Outgoing_Internal_Inter-Cell_Handover_Commands_Overlaid_t" float(53),
  "H311OI_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311OO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311O_Outgoing_Internal_Inter-Celll_Handover_Commands_MS_Handov" float(53),
  "H3120C_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3120N_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H3120W_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3120X_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3120Y_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3120Z_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3121C_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3121W_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3121X_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3121Y_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3121Z_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122A_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122B_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122C_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122D_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122E_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122F_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122G_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H3122H_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122I_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122J_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3122L_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3127Ca_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Han" float(53),
  "H3127Cb_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Han" float(53),
  "H3127W_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3127X_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3127Y_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3127Z_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3128Ca_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Han" float(53),
  "H3128Cb_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Han" float(53),
  "H3128W_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3128X_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3128Y_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H3128Z_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312Aa_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312Ab_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312A_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_N" float(53),
  "H312B_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_T" float(53),
  "H312Da_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Db_Failed_Outgoing_Internal_Inter-Cell_Handovers_Reconnecti" float(53),
  "H312Dc_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dd_Failed_Outgoing_Internal_Inter-Cell_Handovers_Abnormal_R" float(53),
  "H312De_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Df_Failed_Outgoing_Internal_Inter-Cell_Handovers_Handover_F" float(53),
  "H312Dg_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dh_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Di_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dj_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dk_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dl_Failed_Outgoing_Internal_Inter-Cell_Handovers_Message_Ty" float(53),
  "H312Dm_Failed_Outgoing_Internal_Inter-Cell_Handovers_Message_Ty" float(53),
  "H312Dn_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Do_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dp_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dq_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312G_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_A" float(53),
  "H312H_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hando" float(53),
  "H312II_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312IO_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312I_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hando" float(53),
  "H312L_Number_of_Intra-BSC_Outgoing_Cell_Handover_Failures_Due_t" float(53),
  "H312M_Unsuccessful_Outgoing_Internal_Inter-Cell_Handovers_Under" float(53),
  "H312N_Unsuccessful_Outgoing_Internal_Inter-Cell_Handovers_Overl" float(53),
  "H312OI_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312OO_Number_of_Unsuccessful_Outgoing_Internal_Inter-Cell_Hand" float(53),
  "H312O_Unsuccessful_Outgoing_Internal_Inter-Cell_Handovers_MS_Ha" float(53),
  "H313II_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H313IO_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H313OI_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H313OO_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H370a_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H370b_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "TH313_Success_Rate_of_Outgoing_Internal_Inter-Cell_Handovers" float(53),
  "TH370a_Success_Rate_of_Outgoing_Internal_Inter-Cell_Handovers_D" float(53),
  "TH370b_Success_Rate_of_Outgoing_Internal_Inter-Cell_Handovers_D" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@PDCH_Resource
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@PDCH_Resource";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@PDCH_Resource" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AR9303_Average_Number_of_Available_PDCHs" float(53),
  "AR9307_Average_Number_of_EGPRS_PDCHs_Activated" float(53),
  "AR9309_Average_Number_of_GPRS_PDCHs_Activated" float(53),
  "AR9311_Average_Number_of_Occupied_PDCHs" float(53),
  "AR9313_Average_Number_of_PDCHs_Occupied_by_Uplink_TBF" float(53),
  "AR9315_Average_Number_of_PDCHs_Occupied_by_Downlink_TBF" float(53),
  "AR9319_Average_Number_of_Occupied_GPRS_PDCHs" float(53),
  "AR9321_Average_Number_of_Occupied_Static_EGPRS_PDCHs" float(53),
  "AR9323_Average_Number_of_Occupied_Dynamic_EGPRS_PDCHs" float(53),
  "AR9325_Average_Allocated_Seizure_Duration_of_All_Available_PDCH" float(53),
  "AR9327_Average_Number_of_PDCHs_Occupied_by_TBF" float(53),
  "AR9329_Average_Number_of_GPRS_PDCHs_Occupied_by_GPRS_TBF" float(53),
  "AR9331_Average_Number_of_EGPRS_PDCHs_Occupied_by_GPRS_TBF" float(53),
  "AR9333_Average_Number_of_EGPRS_PDCHs_Occupied_by_EGPRS_TBF" float(53),
  "AR9335_Average_Number_of_Concurrent_GPRS_TBFs_on_GPRS_PDCH" float(53),
  "AR9337_Average_Number_of_Concurrent_EGPRS_TBFs_on_EGPRS_PDCH" float(53),
  "AR9339_Average_Number_of_Concurrent_GPRS_TBFs_on_EGPRS_PDCH" float(53),
  "AR9345_Successful_Rate_of_PDTCH_Distribution" float(53),
  "AR9349_Average_Number_of_GPRS_PDCHs_Occupied_by_Uplink_GPRS_TBF" float(53),
  "AR9351_Average_Number_of_GPRS_PDCHs_Occupied_by_Downlink_GPRS_T" float(53),
  "AR9353_Average_Number_of_Static_EGPRS_PDCHs_Occupied_by_Uplink_" float(53),
  "AR9355_Average_Number_of_Dynamic_EGPRS_PDCHs_Occupied_by_Uplink" float(53),
  "AR9357_Average_Number_of_Static_EGPRS_PDCHs_Occupied_by_Downlin" float(53),
  "AR9359_Average_Number_of_Dynamic_EGPRS_PDCHs_Occupied_by_Downli" float(53),
  "AR9361_Average_Number_of_Static_EGPRS_PDCHs_Occupied_by_Uplink_" float(53),
  "AR9363_Average_Number_of_Dynamic_EGPRS_PDCHs_Occupied_by_Uplink" float(53),
  "AR9365_Average_Number_of_Static_EGPRS_PDCHs_Occupied_by_Downlin" float(53),
  "AR9367_Average_Number_of_Dynamic_EGPRS_PDCHs_Occupied_by_Downli" float(53),
  "AR9369_Average_Number_of_Concurrent_Uplink_GPRS_TBFs_on_GPRS_PD" float(53),
  "AR9371_Average_Number_of_Concurrent_Downlink_GPRS_TBFs_on_GPRS_" float(53),
  "AR9373_Average_Number_of_Concurrent_Uplink_GPRS_TBFs_on_EGPRS_P" float(53),
  "AR9375_Average_Number_of_Concurrent_Downlink_GPRS_TBFs_on_EGPRS" float(53),
  "AR9377_Average_Number_of_Concurrent_Uplink_EGPRS_TBFs_on_EGPRS_" float(53),
  "AR9379_Average_Number_of_Concurrent_Downlink_EGPRS_TBFs_on_EGPR" float(53),
  "AR9381_Average_Number_of_Available_EGPRS_PDCHs" float(53),
  "AR9383_Average_Number_of_Available_GPRS_PDCHs" float(53),
  "AR9405_Average_Number_of_Available_PDCHs_Overlaid_Subcell" float(53),
  "AR9406_Average_Number_of_Sampled_Occupied_PDCHs_Overlaid_Subcel" float(53),
  "R9301_Sampling_Times_of_PDCH_Measurement" float(53),
  "R9302_Total_Number_of_Sampled_Available_PDCHs" float(53),
  "R9304_Maximum_Number_of_Available_PDCHs" float(53),
  "R9305_Minimum_Number_of_Available_PDCHs" float(53),
  "R9306_Total_Number_of_Sampled_EGPRS_PDCHs_Activated" float(53),
  "R9308_Total_Number_of_Sampled_GPRS_PDCHs_Activated" float(53),
  "R9310_Total_Number_of_Sampled_PDCHs_Occupied" float(53),
  "R9312_Total_Number_of_Sampled_PDCHs_Occupied_by_Uplink_TBF" float(53),
  "R9314_Total_Number_of_Sampled_PDCHs_Occupied_by_Downlink_TBF" float(53),
  "R9316_Maximum_Number_of_Occupied_PDCHs" float(53),
  "R9317_Minimum_Number_of_Occupied_PDCHs" float(53),
  "R9318_Total_Number_of_Occupied_GPRS_PDCHs" float(53),
  "R9320_Total_Number_of_Sampled_Static_EGPRS_PDCHs_Occupied" float(53),
  "R9322_Total_Number_of_Sampled_Dynamic_EGPRS_PDCHs_Occupied" float(53),
  "R9324_Total_Allocated_Seizure_Duration_of_All_Available_PDCHs" float(53),
  "R9326_Total_Number_of_Sampled_PDCHs_Occupied_by_TBF" float(53),
  "R9328_Total_Number_of_Sampled_GPRS_PDCHs_Occupied_by_GPRS_TBF" float(53),
  "R9330_Total_Number_of_Sampled_EGPRS_PDCHs_Occupied_by_GPRS_TBF" float(53),
  "R9332_Total_Number_of_Sampled_EGPRS_PDCHs_Occupied_by_EGPRS_TBF" float(53),
  "R9334_Number_of_Concurrent_GPRS_TBFs_on_GPRS_PDCH" float(53),
  "R9336_Number_of_Concurrent_EGPRS_TBFs_on_EGPRS_PDCH" float(53),
  "R9338_Number_of_Concurrent_GPRS_TBFs_on_EGPRS_PDCH" float(53),
  "R9340_Number_of_Shared_Downlink_TBFs_on_EGPRS_PDCH" float(53),
  "R9341_Number_of_TCH_to_PDTCH_Conversion_Attempts" float(53),
  "R9342_Number_of_Successful_TCH_to_PDTCH_Conversions" float(53),
  "R9343_Number_of_Reclaimed_Dynamic_PDCHs" float(53),
  "R9344_Number_of_Reclaimed_Busy_Dynamic_PDCHs" float(53),
  "R9346_Dynamic_PDCH_Requests_Without_Application_Attempts_Becaus" float(53),
  "R9347_Number_of_Dynamic_PDCH_Requests_Without_Application_Attem" float(53),
  "R9348_Total_Number_of_Sampled_GPRS_PDCHs_Occupied_by_Uplink_GPR" float(53),
  "R9350_Total_Number_of_Sampled_GPRS_PDCHs_Occupied_by_Downlink_G" float(53),
  "R9352_Total_Number_of_Sampled_Static_EGPRS_PDCHs_Occupied_by_Up" float(53),
  "R9354_Total_Number_of_Sampled_Dynamic_EGPRS_PDCHs_Occupied_by_U" float(53),
  "R9356_Total_Number_of_Static_EGPRS_PDCHs_Occupied_by_Downlink_G" float(53),
  "R9358_Total_Number_of_Sampled_Dynamic_EGPRS_PDCHs_Occupied_by_D" float(53),
  "R9360_Total_Number_of_Sampled_Static_EGPRS_PDCHs_Occupied_by_Up" float(53),
  "R9362_Total_Number_of_Sampled_Dynamic_EGPRS_PDCHs_Occupied_by_U" float(53),
  "R9364_Total_Number_of_Static_EGPRS_PDCHs_Occupied_by_Downlink_E" float(53),
  "R9366_Total_Number_of_Sampled_Dynamic_EGPRS_PDCHs_Occupied_by_D" float(53),
  "R9368_Number_of_Concurrent_Uplink_GPRS_TBFs_on_GPRS_PDCH" float(53),
  "R9370_Number_of_Concurrent_Downlink_GPRS_TBFs_on_GPRS_PDCH" float(53),
  "R9372_Number_of_Concurrent_Uplink_GPRS_TBFs_on_EGPRS_PDCH" float(53),
  "R9374_Number_of_Concurrent_Downlink_GPRS_TBFs_on_EGPRS_PDCH" float(53),
  "R9376_Number_of_Concurrent_Uplink_EGPRS_TBFs_on_EGPRS_PDCH" float(53),
  "R9378_Number_of_Concurrent_Downlink_EGPRS_TBFs_on_EGPRS_PDCH" float(53),
  "R9380_Total_Number_of_Sampled_Available_EGPRS_PDCHs" float(53),
  "R9382_Total_Number_of_Sampled_Available_GPRS_PDCHs" float(53),
  "R9384_Number_of_GPRS_PDCHs_carrying_GPRS_TBFs" float(53),
  "R9385_Number_of_EGPRS_PDCHs_carrying_EGPRS_TBFs" float(53),
  "R9386_Number_of_EGPRS_PDCHs_carrying_GPRS_TBFs" float(53),
  "R9387_Number_of_GPRS_PDCHs_carrying_uplink_GPRS_TBFs" float(53),
  "R9388_Number_of_GPRS_PDCHs_carrying_downlink_GPRS_TBFs" float(53),
  "R9389_Number_of_EGPRS_PDCHs_carrying_uplink_EGPRS_TBFs" float(53),
  "R9390_Number_of_EGPRS_PDCHs_carrying_downlink_EGPRS_TBFs" float(53),
  "R9391_Number_of_EGPRS_PDCHs_carrying_uplink_GPRS_TBFs" float(53),
  "R9392_Number_of_EGPRS_PDCHs_carrying_downlink_GPRS_TBFs" float(53),
  "R9393_Number_Of_PDCH_Application_Attempts" float(53),
  "R9394_Number_of_PDCH_Application_Failures_due_to_no_Convertable" float(53),
  "R9395_Number_of_PDCH_Application_failures_For_CELL_PDCH_Ratio_T" float(53),
  "R9396_Number_of_Concurrent_Uplink_GPRS_TBFs_in_Transfer_Mode_on" float(53),
  "R9397_Number_of_Concurrent_Downlink_GPRS_TBFs_in_Transfer_Mode_" float(53),
  "R9398_Number_of_Concurrent_Uplink_GPRS_TBFs_in_Transfer_Mode_on" float(53),
  "R9399_Number_of_Concurrent_Downlink_GPRS_TBFs_in_Transfer_Mode_" float(53),
  "R9400A_Number_of_Concurrent_Downlink_EGPRS_TBFs_in_Transfer_Mod" float(53),
  "R9400_Number_of_Concurrent_Uplink_EGPRS_TBFs_in_Transfer_Mode_o" float(53),
  "R9403_Total_Number_of_Sampled_Available_PDCHs_Overlaid_Subcell" float(53),
  "R9406_Total_Number_of_Occupied_PDCHs_Overlaid_Subcell" float(53),
  "R9407_Number_of_Reclaimed_Busy_Dynamic_PDCHs_Overlaid_Subcell" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Power_Control_Message
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Power_Control_Message";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Power_Control_Message" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AS3240A_Average_MS_Power_Level_of_AMR_Call" float(53),
  "AS3240NA_Average_MS_Power_Level_of_Non-AMR_Call" float(53),
  "AS3240_Average_Power_Level_of_MS" float(53),
  "AS3241A_Average_BTS_Power_Level_of_AMR_Call" float(53),
  "AS3241NA_Average_BTS_Power_Level_of_Non-AMR_Call" float(53),
  "AS3241_Average_Power_Level_of_BTS" float(53),
  "AS325A_Mean_Strength_of_Uplink_Signals" float(53),
  "AS325B_Mean_Strength_of_Downlink_Signals" float(53),
  "AS326A_Mean_Quality_of_Uplink_Signals" float(53),
  "AS326B_Mean_Quality_of_Downlink_Signals" float(53),
  "AS3280_Mean_Distance_Between_MS_and_BTS" float(53),
  "RS327A_Rate_of_Maximum_Uplink_Power_Duration_" float(53),
  "RS327B_Rate_of_Duration_Maximum_Downlink_Transmit_Power_" float(53),
  "S3099F_Average_MS_Power_Level_in_OL_Subcell" float(53),
  "S3099G_Average_BTS_Power_Level_in_OL_Subcell" float(53),
  "S3099J_Proportion_of_Duration_with_Maximum_Downlink_Power_in_OL" float(53),
  "S3099K_Proportion_of_Duration_with_Maximum_Uplink_Power_in_OL_S" float(53),
  "S3199B_Signal_Strength_Difference_Between_OL_Subcell_and_UL_Sub" float(53),
  "S3230A_Number_of_Power_Control_Increase_Messages_Sent_to_MS" float(53),
  "S3230B_Number_of_Power_Control_Decrease_Messages_Sent_to_MS" float(53),
  "S3231A_Number_of_Power_Control_Increase_Messages_Sent_to_BTS" float(53),
  "S3231B_Number_of_Power_Control_Decrease_Messages_Sent_to_BTS" float(53),
  "S3281_Maximum_Distance_Between_MS_and_BTS" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Power_Statistics
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Power_Statistics";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Power_Statistics" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "R3191_Number_of_Power_Deficits" float(53),
  "R3192_Number_of_Handover_Requests_due_to_Power_Deficit" float(53),
  "R3195_Number_of_Handover_Commands_due_to_Power_Deficit" float(53),
  "R3196_Number_of_Successful_Handovers_due_to_Power_Deficit" float(53),
  "R3197_Number_of_Call_Drops_in_the_Handover_due_to_Power_Deficit" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@SDCCH_Call_Drop
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@SDCCH_Call_Drop";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@SDCCH_Call_Drop" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CM30C_Call_Drops_on_SDCCH_Call_Type" float(53),
  "CM30D_Call_Drops_on_Radio_Interface_SDCCH_Call_Type" float(53),
  "CM30E_Call_Drops_on_SDCCH_Location_Updating" float(53),
  "K3003A_Successful_SDCCH_Seizures_Call_Type" float(53),
  "M3020A_Call_Drops_on_SDCCHTA" float(53),
  "M3020B_Call_Drops_on_SDCCHReceived_Level" float(53),
  "M3020C_Call_Drops_on_SDCCHQuality" float(53),
  "M3020D_Call_Drops_on_SDCCHOther" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Short_Message
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Short_Message";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Short_Message" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A330A_Number_of_Uplink_SMS_Setup_Requests" float(53),
  "A330B_Number_of_Downlink_SMS_Setup_Requests" float(53),
  "A333A_Number_of_Successful_Uplink_SMS_Setups" float(53),
  "A333B_Number_of_Successful_Downlink_SMS_Setups" float(53),
  "A3340A_Uplink_Point-to-Point_Short_Messages_on_SDCCH" float(53),
  "A3340B_Downlink_Point-to-Point_Short_Messages_on_SDCCH" float(53),
  "A3349A_Uplink_Point-to-Point_Short_Messages_on_TCH" float(53),
  "A3349B_Downlink_Point-to-Point_Short_Messages_on_TCH" float(53),
  "CA3340_Point-to-Point_Short_Messages_on_SDCCH" float(53),
  "CA3349_Point-to-Point_Short_Messages_on_TCH" float(53),
  "CA334A_Total_Uplink_Point-to-Point_Short_Messages" float(53),
  "CA334B_Total_Downlink_Point-to-Point_Short_Messages" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AS3101_VAC_Compress_Ratio_of_Cell" float(53),
  "S3101_Number_of_Uplink_Frames_with_FR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S3102_Number_of_Uplink_Frames_with_FR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S3103_Number_of_Uplink_Frames_with_FR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S3104_Number_of_Uplink_Frames_with_FR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S3105_Number_of_Uplink_Frames_with_FR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S3106_Number_of_Uplink_Frames_with_FR_AMR_of_7_95_kbit_s_in_the" float(53),
  "S3107_Number_of_Uplink_Frames_with_FR_AMR_of_10_20_kbit_s_in_th" float(53),
  "S3108_Number_of_Uplink_Frames_with_FR_AMR_of_12_20_kbit_s_in_th" float(53),
  "S3109_Number_of_Uplink_Frames_with_HR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S3110_Number_of_Uplink_Frames_with_HR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S3111_Number_of_Uplink_Frames_with_HR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S3112_Number_of_Uplink_Frames_with_HR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S3113_Number_of_Uplink_Frames_with_HR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S3114_Number_of_Uplink_Frames_Among_the_FR_Frames_in_the_Custom" float(53),
  "S3115_Number_of_Uplink_Frames_Among_the_EFR_Frames_in_the_Custo" float(53),
  "S3116_Number_of_Uplink_Frames_Among_the_HR_Frames_in_the_Custom" float(53),
  "S3117A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3117B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3117_Number_of_Uplink_Frames_with_HR_AMR_of_7_95_kbit_s_in_the" float(53),
  "S3118A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3118B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3119A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3119B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3120A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3120B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3121A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3121B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3122A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3122B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3123A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3123B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3124A_Number_of_MRs_on_Uplink_FER_Rank_0_and_Receive_Quality_R" float(53),
  "S3124B_Number_of_MRs_on_Downlink_FER_Rank_0_and_Receive_Quality" float(53),
  "S3125A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3125B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3126A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3126B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3127A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3127B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3128A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3128B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3129A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3129B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3130A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3130B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3131A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3131B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3132A_Number_of_MRs_on_Uplink_FER_Rank_1_and_Receive_Quality_R" float(53),
  "S3132B_Number_of_MRs_on_Downlink_FER_Rank_1_and_Receive_Quality" float(53),
  "S3133A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3133B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3134A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3134B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3135A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3135B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3136A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3136B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3137A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3137B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3138A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3138B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3139A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3139B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3140A_Number_of_MRs_on_Uplink_FER_Rank_2_and_Receive_Quality_R" float(53),
  "S3140B_Number_of_MRs_on_Downlink_FER_Rank_2_and_Receive_Quality" float(53),
  "S3141A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3141B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3142A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3142B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3143A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3143B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3144A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3144B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3145A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3145B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3146A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3146B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3147A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3147B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3148A_Number_of_MRs_on_Uplink_FER_Rank_3_and_Receive_Quality_R" float(53),
  "S3148B_Number_of_MRs_on_Downlink_FER_Rank_3_and_Receive_Quality" float(53),
  "S3149A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3149B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3150A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3150B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3151A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3151B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3152A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3152B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3153A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3153B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3154A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3154B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3155A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3155B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3156A_Number_of_MRs_on_Uplink_FER_Rank_4_and_Receive_Quality_R" float(53),
  "S3156B_Number_of_MRs_on_Downlink_FER_Rank_4_and_Receive_Quality" float(53),
  "S3157A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3157B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3158A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3158B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3159A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3159B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3160A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3160B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3161A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3161B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3162A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3162B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3163A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3163B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3164A_Number_of_MRs_on_Uplink_FER_Rank_5_and_Receive_Quality_R" float(53),
  "S3164B_Number_of_MRs_on_Downlink_FER_Rank_5_and_Receive_Quality" float(53),
  "S3165A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3165B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3166A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3166B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3167A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3167B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3168A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3168B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3169A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3169B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3170A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3170B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3171A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3171B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3172A_Number_of_MRs_on_Uplink_FER_Rank_6_and_Receive_Quality_R" float(53),
  "S3172B_Number_of_MRs_on_Downlink_FER_Rank_6_and_Receive_Quality" float(53),
  "S3173A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3173B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3174A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3174B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3175A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3175B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3176A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3176B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3177A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3177B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3178A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3178B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3179A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3179B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "S3180A_Number_of_MRs_on_Uplink_FER_Rank_7_and_Receive_Quality_R" float(53),
  "S3180B_Number_of_MRs_on_Downlink_FER_Rank_7_and_Receive_Quality" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@TCH_Call_Drop
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@TCH_Call_Drop";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@TCH_Call_Drop" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A3507_Number_of_Call_Normal_Releases_Call_Reestablishment" float(53),
  "M3030A_Call_Drops_on_TCHTA" float(53),
  "M3030B_Call_Drops_on_TCHUplink_Received_Level" float(53),
  "M3030C_Call_Drops_on_TCHDownlink_Received_Level" float(53),
  "M3030D_Call_Drops_on_TCHUplink_and_Downlink_Received_Level" float(53),
  "M3030E_Call_Drops_on_TCHUplink_FER" float(53),
  "M3030F_Call_Drops_on_TCHDownlink_FER" float(53),
  "M3030G_Call_Drops_on_TCHUplink_and_Downlink_FER" float(53),
  "M3030H_Call_Drops_on_TCHUplink_Quality" float(53),
  "M3030I_Call_Drops_on_TCHDownlink_Quality" float(53),
  "M3030J_Call_Drops_on_TCHUplink_and_Downlink_Quality" float(53),
  "M3030K_Call_Drops_on_TCHOther" float(53),
  "M3030L_CS_handover_times_caused_by_PS_preempt" float(53),
  "M3030M_CS_call_drop_times_caused_by_PS_preempt" float(53),
  "M3031A_Call_Drops_on_TCHTAOverlaid_Subcell" float(53),
  "M3031B_Call_Drops_on_TCHUplink_Received_LevelOverlaid_Subcell" float(53),
  "M3031C_Call_Drops_on_TCHDownlink_Received_LevelOverlaid_Subcell" float(53),
  "M3031D_Call_Drops_on_TCHUplink_and_Downlink_Received_LevelOverl" float(53),
  "M3031E_Call_Drops_on_TCHUplink_FEROverlaid_Subcell" float(53),
  "M3031F_Call_Drops_on_TCHDownlink_FEROverlaid_Subcell" float(53),
  "M3031G_Call_Drops_on_TCHUplink_and_Downlink_FEROverlaid_Subcell" float(53),
  "M3031H_Call_Drops_on_TCHUplink_QualityOverlaid_Subcell" float(53),
  "M3031I_Call_Drops_on_TCHDownlink_QualityOverlaid_Subcell" float(53),
  "M3031J_Call_Drops_on_TCHUplink_and_Downlink_QualityOverlaid_Sub" float(53),
  "M3031K_Call_Drops_on_TCHOtherOverlaid_Subcell" float(53),
  "M3128A_Number_of_Mute_Times_Traffic_Channel" float(53),
  "M3128_Call_Drops_in_Forced_Handover_After_Mute_Traffic_Channel" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@TRX
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@TRX";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@TRX" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "R3139C_Average_Number_of_Idle_TRXs_in_a_Carrier_Pool" float(53),
  "R3139D_Number_of_Successful_TRX_Allocations" float(53),
  "R3139E_Number_of_Failed_TRX_Allocations" float(53),
  "R3139F_Number_of_TRX_Releases" float(53),
  "R3613C_Number_of_TRXs_with_Baseband_Resources" float(53),
  "R3613D_Number_of_Times_TRXs_Preempt_Baseband_Resources" float(53),
  "R3613E_Number_of_Times_Baseband_Resource_Release" float(53),
  "S3655_Number_of_configured_TRXs_in_a_cell" float(53),
  "S3656_Number_of_available_TRXs_in_a_cell" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L9201_Total_Number_of_Uplink_EGPRS_RLC_Data_Blocks" float(53),
  "L9202_Total_Number_of_Uplink_EGPRS_MCS1_RLC_Data_Blocks" float(53),
  "L9203_Total_Number_of_Uplink_EGPRS_MCS2_RLC_Data_Blocks" float(53),
  "L9204_Total_Number_of_Uplink_EGPRS_MCS3_RLC_Data_Blocks" float(53),
  "L9205_Total_Number_of_Uplink_EGPRS_MCS4_RLC_Data_Blocks" float(53),
  "L9206_Total_Number_of_Uplink_EGPRS_MCS5_RLC_Data_Blocks" float(53),
  "L9207_Total_Number_of_Uplink_EGPRS_MCS6_RLC_Data_Blocks" float(53),
  "L9208_Total_Number_of_Uplink_EGPRS_MCS7_RLC_Data_Blocks" float(53),
  "L9209_Total_Number_of_Uplink_EGPRS_MCS8_RLC_Data_Blocks" float(53),
  "L9210_Total_Number_of_Uplink_EGPRS_MCS9_RLC_Data_Blocks" float(53),
  "L9211_Total_Number_of_Valid_Uplink_EGPRS_MCS1_RLC_Data_Blocks" float(53),
  "L9212_Total_Number_of_Valid_Uplink_EGPRS_MCS2_RLC_Data_Blocks" float(53),
  "L9213_Total_Number_of_Valid_Uplink_EGPRS_MCS3_RLC_Data_Blocks" float(53),
  "L9214_Total_Number_of_Valid_Uplink_EGPRS_MCS4_RLC_Data_Blocks" float(53),
  "L9215_Total_Number_of_Valid_Uplink_EGPRS_MCS5_RLC_Data_Blocks" float(53),
  "L9216_Total_Number_of_Valid_Uplink_EGPRS_MCS6_RLC_Data_Blocks" float(53),
  "L9217_Total_Number_of_Valid_Uplink_EGPRS_MCS7_RLC_Data_Blocks" float(53),
  "L9218_Total_Number_of_Valid_Uplink_EGPRS_MCS8_RLC_Data_Blocks" float(53),
  "L9219_Total_Number_of_Valid_Uplink_EGPRS_MCS9_RLC_Data_Blocks" float(53),
  "L9229_Number_of_Coding_Scheme_Upgrades_on_Uplink_EGPRS_TBF" float(53),
  "L9230_Number_of_Coding_Scheme_Degrades_on_Uplink_EGPRS_TBF" float(53),
  "L9231_Number_of_Uplink_EGPRS_RLC_Control_Blocks" float(53),
  "L9234_Total_Number_of_Uplink_EGPRS_TBFs" float(53),
  "L9235_Total_Duration_of_Uplink_EGPRS_TBFs" float(53),
  "L9365_Total_Number_of_Uplink_EGPRS_UAS7_RLC_Data_Blocks" float(53),
  "L9366_Total_Number_of_Uplink_EGPRS_UAS8_RLC_Data_Blocks" float(53),
  "L9367_Total_Number_of_Uplink_EGPRS_UAS9_RLC_Data_Blocks" float(53),
  "L9368_Total_Number_of_Uplink_EGPRS_UAS10_RLC_Data_Blocks" float(53),
  "L9369_Total_Number_of_Uplink_EGPRS_UAS11_RLC_Data_Blocks" float(53),
  "L9370_Total_Number_of_Valid_Uplink_EGPRS_UAS7_RLC_Data_Blocks" float(53),
  "L9371_Total_Number_of_Valid_Uplink_EGPRS_UAS8_RLC_Data_Blocks" float(53),
  "L9372_Total_Number_of_Valid_Uplink_EGPRS_UAS9_RLC_Data_Blocks" float(53),
  "L9373_Total_Number_of_Valid_Uplink_EGPRS_UAS10_RLC_Data_Blocks" float(53),
  "L9374_Total_Number_of_Valid_Uplink_EGPRS_UAS11_RLC_Data_Blocks" float(53),
  "L9375_Total_Number_of_Uplink_EGPRS_RLC_Data_Blocks_Using_Low-Ra" float(53),
  "L9376_Total_Number_of_Uplink_EGPRS_RLC_Data_Blocks_Using_High-R" float(53),
  "L9377_Throughput_of_Valid_Uplink_EGPRS_RLC_Data_Blocks_Overlaid" float(53),
  "RL9220_Retransmission_Rate_of_Uplink_EGPRS_MCS1_RLC_Data_Block" float(53),
  "RL9221_Retransmission_Rate_of_Uplink_EGPRS_MCS2_RLC_Data_Block" float(53),
  "RL9222_Retransmission_Rate_of_Uplink_EGPRS_MCS3_RLC_Data_Block" float(53),
  "RL9223_Retransmission_Rate_of_Uplink_EGPRS_MCS4_RLC_Data_Block" float(53),
  "RL9224_Retransmission_Rate_of_Uplink_EGPRS_MCS5_RLC_Data_Block" float(53),
  "RL9225_Retransmission_Rate_of_Uplink_EGPRS_MCS6_RLC_Data_Block" float(53),
  "RL9226_Retransmission_Rate_of_Uplink_EGPRS_MCS7_RLC_Data_Block" float(53),
  "RL9227_Retransmission_Rate_of_Uplink_EGPRS_MCS8_RLC_Data_Block" float(53),
  "RL9228_Retransmission_Rate_of_Uplink_EGPRS_MCS9_RLC_Data_Block" float(53),
  "RL9236_Retransmission_Rate_of_Uplink_EGPRS_RLC_Data_Blocks" float(53),
  "RL9375_Retransmission_Rate_of_Uplink_EGPRS_UAS7_RLC_Data_Block" float(53),
  "RL9376_Retransmission_Rate_of_Uplink_EGPRS_UAS8_RLC_Data_Block" float(53),
  "RL9377_Retransmission_Rate_of_Uplink_EGPRS_UAS9_RLC_Data_Block" float(53),
  "RL9378_Retransmission_Rate_of_Uplink_EGPRS_UAS10_RLC_Data_Block" float(53),
  "RL9379_Retransmission_Rate_of_Uplink_EGPRS_UAS11_RLC_Data_Block" float(53),
  "TL9232_Average_Throughput_of_Uplink_EGPRS_RLC" float(53),
  "TL9233_Average_Payload_of_Single_Uplink_EGPRS_TBF" float(53),
  "TL9237_Throughput_of_Uplink_EGPRS_RLC_Data_Blocks" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A9201_Number_of_Uplink_EGPRS_TBF_Establishment_Attempts" float(53),
  "A9202_Number_of_Successful_Uplink_EGPRS_TBF_Establishments" float(53),
  "A9203_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_N" float(53),
  "A9204_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_M" float(53),
  "A9205_Number_of_Uplink_EGPRS_TBF_Normal_Releases" float(53),
  "A9206_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_N3101" float(53),
  "A9207_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_N3103" float(53),
  "A9208_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_SUSPE" float(53),
  "A9209_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_FLUSH" float(53),
  "A9210_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_No_Ch" float(53),
  "A9211_Total_Number_of_Sampled_Concurrent_Uplink_EGPRS_TBFs" float(53),
  "A9212_Sampling_Times_of_Concurrent_Uplink_EGPRS_TBFs" float(53),
  "A9214_Total_Duration_of_Uplink_EGPRS_TBF" float(53),
  "A9216_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_O" float(53),
  "A9217_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_Chann" float(53),
  "A9218_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_Other" float(53),
  "A9234_Maximum_Number_of_Sampled_Concurrent_Uplink_EGPRS_TBFs" float(53),
  "A9235_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_O" float(53),
  "A9236_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_O" float(53),
  "A9237_Number_of_Abnormal_Uplink_EGPRS_TBF_Releases_due_to_CS_Ha" float(53),
  "A9238_Number_of_Abnormal_Uplink_EGPRS_TBF_Releases_due_to_Abis_" float(53),
  "A9239_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_M" float(53),
  "A9240_Number_of_Successful_Uplink_EGPRS_TBF_Establishments_Over" float(53),
  "A9241_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_N3101" float(53),
  "A9242_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_DTM_E" float(53),
  "AA9213_Average_Number_of_Concurrent_Uplink_EGPRS_TBFs" float(53),
  "AA9215_Average_Duration_of_Uplink_EGPRS_TBF" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L9001_Total_Number_of_Uplink_GPRS_RLC_Data_Blocks" float(53),
  "L9002_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS1" float(53),
  "L9003_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS2" float(53),
  "L9004_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS3" float(53),
  "L9005_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS4" float(53),
  "L9006_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS1" float(53),
  "L9007_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS2" float(53),
  "L9008_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS3" float(53),
  "L9009_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS4" float(53),
  "L9016_Number_of_Coding_Scheme_Upgrades_on_Uplink_GPRS_TBF" float(53),
  "L9017_Number_of_Coding_Scheme_Degrades_on_Uplink_GPRS_TBF" float(53),
  "L9018_Number_of_Uplink_GPRS_RLC_Control_Blocks" float(53),
  "L9019_Total_Number_of_Uplink_GPRS_TBFs" float(53),
  "L9020_Total_Duration_of_Uplink_GPRS_TBFs" float(53),
  "L9021_Number_of_Uplink_GPRS_RLC_Dummy_Blocks" float(53),
  "L9022_Total_Number_of_Uplink_GPRS_RLC_Data_Blocks_Overlaid_Subc" float(53),
  "L9023_Throughput_of_Valid_Uplink_GPRS_RLC_Data_Blocks_Overlaid_" float(53),
  "RL9010_Retransmission_Rate_of_RLC_Uplink_Data_Blocks_Using_CS1" float(53),
  "RL9011_Retransmission_Rate_of_RLC_Uplink_Data_Blocks_Using_CS2" float(53),
  "RL9012_Retransmission_Rate_of_RLC_Uplink_Data_Blocks_Using_CS3" float(53),
  "RL9013_Retransmission_Rate_of_RLC_Uplink_Data_Blocks_Using_CS4" float(53),
  "RL9022_Retransmission_Rate_of_Uplink_GPRS_RLC_Data_Blocks" float(53),
  "TL9014_Average_Throughput_of_Uplink_GPRS_RLC" float(53),
  "TL9015_Average_Payload_of_Single_Uplink_GPRS_TBF" float(53),
  "TL9023_Throughput_of_Uplink_GPRS_RLC_Data_Blocks" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "A9001_Number_of_Uplink_GPRS_TBF_Establishment_Attempts" float(53),
  "A9002_Number_of_Successful_Uplink_GPRS_TBF_Establishments" float(53),
  "A9003_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_No" float(53),
  "A9004_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_MS" float(53),
  "A9005_Number_of_Uplink_GPRS_TBF_Normal_Releases" float(53),
  "A9006_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_N3101_" float(53),
  "A9007_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_N3103_" float(53),
  "A9008_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_SUSPEN" float(53),
  "A9009_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_FLUSH" float(53),
  "A9010_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_No_Cha" float(53),
  "A9011_Total_Number_of_Sampled_Concurrent_Uplink_GPRS_TBFs" float(53),
  "A9012_Sampling_Times_of_Concurrent_Uplink_GPRS_TBFs" float(53),
  "A9014_Total_Duration_of_Uplink_GPRS_TBF" float(53),
  "A9016_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_Ot" float(53),
  "A9017_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_Channe" float(53),
  "A9018_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_Other_" float(53),
  "A9034_Number_of_Abnormal_Uplink_GPRS_TBF_Releases_Because_of_EG" float(53),
  "A9035_Number_of_Uplink_GPRS_TBF_Movements_Because_of_EGPRS_User" float(53),
  "A9036_Maximum_Number_of_Sampled_Concurrent_Uplink_GPRS_TBFs" float(53),
  "A9037_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_Ot" float(53),
  "A9038_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_Ot" float(53),
  "A9039_Number_of_Abnormal_Uplink_GPRS_TBF_Releases_due_to_CS_Han" float(53),
  "A9040_Number_of_Abnormal_Uplink_GPRS_TBF_Releases_due_to_Abis_R" float(53),
  "A9041_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_MS" float(53),
  "A9042_Number_of_Successful_Uplink_GPRS_TBF_Establishments_Overl" float(53),
  "A9043_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_N3101_" float(53),
  "A904A_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_DTM_Es" float(53),
  "AA9013_Average_Number_of_Concurrent_Uplink_GPRS_TBFs" float(53),
  "AA9015_Average_Duration_of_Uplink_GPRS_TBF" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AL9404_Average_Length_of_Uplink_LLC_PDU" float(53),
  "AL9405_Average_LLC_PDU_Bytes_per_Uplink_TBF" float(53),
  "AL9417_Average_Throughput_of_Uplink_GPRS_Background_Service_LLC" float(53),
  "AL9418_Average_Throughput_of_Uplink_GPRS_Interactive_Service_at" float(53),
  "AL9419_Average_Throughput_of_Uplink_EGPRS_Background_Service_LL" float(53),
  "AL9420_Average_Throughput_of_Uplink_EGPRS_Interactive_Service_a" float(53),
  "AL9425_Uplink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "AL9426_Uplink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "AL9437_Average_Throughput_of_Uplink_GPRS_Interactive_Service_at" float(53),
  "AL9438_Average_Throughput_of_Uplink_GPRS_Interactive_Service_at" float(53),
  "AL9439_Average_Throughput_of_Uplink_EGPRS_Interactive_Service_a" float(53),
  "AL9440_Average_Throughput_of_Uplink_EGPRS_Interactive_Service_a" float(53),
  "AL9569_Uplink_Data_Rate_of_EGPRS2-A_Users_at_the_LLC_Layer" float(53),
  "L9401_Total_Number_of_Uplink_TBFs" float(53),
  "L9402_Number_of_Uplink_LLC_PDUs_sent" float(53),
  "L9403_Total_Bytes_of_Uplink_LLC_PDUs_Sent" float(53),
  "L9407_Total_Bytes_of_Uplink_GPRS_Background_Service_LLC_PDUs_Se" float(53),
  "L9408_Total_Bytes_of_Uplink_GPRS_Interactive_Service_THP1_LLC_P" float(53),
  "L9409_Total_Bytes_of_Uplink_GPRS_Streaming_Service_LLC_PDUs_Sen" float(53),
  "L9410_Total_Bytes_of_Uplink_EGPRS_Background_Service_LLC_PDUs_S" float(53),
  "L9411_Total_Bytes_of_Uplink_EGPRS_Interactive_Service_THP1_LLC_" float(53),
  "L9412_Total_Bytes_of_Uplink_EGPRS_Streaming_Service_LLC_PDUs_Se" float(53),
  "L9413_Throughput_of_Uplink_GPRS_Background_Service_LLC_PDU" float(53),
  "L9414_Throughput_of_Uplink_GPRS_Interactive_Service_THP1_LLC_PD" float(53),
  "L9415_Throughput_of_Uplink_EGPRS_Background_Service_LLC_PDU" float(53),
  "L9416_Throughput_of_Uplink_EGPRS_Interactive_Service_THP1_LLC_P" float(53),
  "L9421_Total_Bytes_of_Uplink_GPRS_Users_LLC_PDUs" float(53),
  "L9422_Throughput_of_Uplink_GPRS_Users_LLC_PDU" float(53),
  "L9423_Total_Bytes_of_Uplink_EGPRS_Users_LLC_PDUs" float(53),
  "L9424_Throughput_of_Uplink_EGPRS_Users_LLC_PDU" float(53),
  "L9427_Maximum_Uplink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "L9428_Maximum_Uplink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "L9429_Total_Bytes_of_Uplink_GPRS_Interactive_Service_THP2_LLC_P" float(53),
  "L9430_Total_Bytes_of_Uplink_GPRS_Interactive_Service_THP3_LLC_P" float(53),
  "L9431_Total_Bytes_of_Uplink_EGPRS_Interactive_Service_THP2_LLC_" float(53),
  "L9432_Total_Bytes_of_Uplink_EGPRS_Interactive_Service_THP3_LLC_" float(53),
  "L9433_Throughput_of_Uplink_GPRS_Interactive_Service_THP2_LLC_PD" float(53),
  "L9434_Throughput_of_Uplink_GPRS_Interactive_Service_THP3_LLC_PD" float(53),
  "L9435_Throughput_of_Uplink_EGPRS_Interactive_Service_THP2_LLC_P" float(53),
  "L9436_Throughput_of_Uplink_EGPRS_Interactive_Service_THP3_LLC_P" float(53),
  "L9441_Number_of_Transmissions_of_Uplink_GPRS_Background_Service" float(53),
  "L9442_Number_of_Transmissions_of_Uplink_GPRS_Interactive_Servic" float(53),
  "L9443_Number_of_Transmissions_of_Uplink_GPRS_Interactive_Servic" float(53),
  "L9444_Number_of_Transmissions_of_Uplink_GPRS_Interactive_Servic" float(53),
  "L9445_Number_of_Transmissions_of_Uplink_EGPRS_Background_Servic" float(53),
  "L9446_Number_of_Transmissions_of_Uplink_EGPRS_Interactive_Servi" float(53),
  "L9447_Number_of_Transmissions_of_Uplink_EGPRS_Interactive_Servi" float(53),
  "L9448_Number_of_Transmissions_of_Uplink_EGPRS_Interactive_Servi" float(53),
  "L9449_Total_Transmission_Duration_of_Uplink_GPRS_Background_Ser" float(53),
  "L9450_Total_Transmission_Duration_of_Uplink_GPRS_Interactive_Se" float(53),
  "L9451_Total_Transmission_Duration_of_Uplink_GPRS_Interactive_Se" float(53),
  "L9452_Total_Transmission_Duration_of_Uplink_GPRS_Interactive_Se" float(53),
  "L9453_Total_Transmission_Duration_of_Uplink_EGPRS_Background_Se" float(53),
  "L9454_Total_Transmission_Duration_of_Uplink_EGPRS_Interactive_S" float(53),
  "L9455_Total_Transmission_Duration_of_Uplink_EGPRS_Interactive_S" float(53),
  "L9456_Total_Transmission_Duration_of_Uplink_EGPRS_Interactive_S" float(53),
  "L9457_Number_of_Received_Uplink_GPRS_Information_Messages" float(53),
  "L9458_Total_Bytes_of_Received_Uplink_GPRS_Information_Messages" float(53),
  "L9567_Total_Bytes_of_Uplink_LLC_PDUs_of_EGPRS2-A_Users" float(53),
  "L9568_Uplink_Throughput_of_EGPRS2-A_Users_at_the_LLC_Layer" float(53),
  "L9569_Total_Bytes_of_Uplink_LLC_PDUs_for_LTE_Capable_MSs" float(53),
  "L9570_Maximum_Uplink_Data_Rate_of_EGPRS2-A_Users_at_the_LLC_Lay" float(53),
  "L9573_Total_Bytes_of_Uplink_LLC_PDUs_for_UMTS_Capable_MSs" float(53),
  "L9580_Total_Bytes_of_Uplink_EGPRS_Streaming_Service_DTM_LLC_PDU" float(53),
  "L9581_Total_Bytes_of_Uplink_GPRS_Streaming_Service_DTM_LLC_PDUs" float(53),
  "L9582_Total_Bytes_of_Uplink_EGPRS_Background_and_Interactive_Se" float(53),
  "L9583_Total_Bytes_of_Uplink_GPRS_Background_and_Interactive_Ser" float(53),
  "L9584_Throughput_of_Uplink_EGPRS_Users_DTM_LLC_PDUs" float(53),
  "L9585_Throughput_of_Uplink_GPRS_Users_DTM_LLC_PDUs" float(53),
  "L9595_Total_Bytes_of_Sent_Uplink_GMM_SM_LLC_PDUs" float(53),
  "L9596_Total_Bytes_of_Sent_Uplink_GPRS_ARP1_LLC_PDUs" float(53),
  "L9597_Total_Bytes_of_Sent_Uplink_GPRS_ARP2_LLC_PDUs" float(53),
  "L9598_Total_Bytes_of_Sent_Uplink_GPRS_ARP3_LLC_PDUs" float(53),
  "L9599_Total_Bytes_of_Sent_Uplink_EGPRS_ARP1_LLC_PDUs" float(53),
  "L959A_Total_Bytes_of_Sent_Uplink_EGPRS_ARP2_LLC_PDUs" float(53),
  "L959B_Total_Bytes_of_Sent_Uplink_EGPRS_ARP3_LLC_PDUs" float(53),
  "L959C_Throughput_of_Uplink_GPRS_ARP1_LLC_PDUs" float(53),
  "L959D_Throughput_of_Uplink_GPRS_ARP2_LLC_PDUs" float(53),
  "L959E_Throughput_of_Uplink_GPRS_ARP3_LLC_PDUs" float(53),
  "L959F_Throughput_of_Uplink_EGPRS_ARP1_LLC_PDUs" float(53),
  "L959G_Throughput_of_Uplink_EGPRS_ARP2_LLC_PDUs" float(53),
  "L959H_Throughput_of_Uplink_EGPRS_ARP3_LLC_PDUs" float(53),
  "L959R_Total_Bytes_of_Uplink_DTM_User_LLC_PDUs" float(53),
  "TL9406_Uplink_LLC_Throughput_Rate" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@GSM Cell@User_Defined_Table1
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@GSM Cell@User_Defined_Table1";
CREATE TABLE "Hourly"."BSC6900GSM@GSM Cell@User_Defined_Table1" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "A3060D_Number_of_ImmAss_Preempting_PCH" float(53),
  "A330_Delivered_Paging_Messages_for_CS_Service" float(53),
  "A331_Delivered_Paging_Messages_for_PS_Service" float(53),
  "A332_Maximum_Undecodable_Level_in_the_Code_Streams_on_the_RACH" float(53),
  "A333_Average_Undecodable_Level_in_the_Code_Streams_on_the_RACH" float(53),
  "A334_Number_of_Failures_to_Decode_the_Code_Streams_on_the_RACH" float(53),
  "A335_Minimum_decodable_Level_in_the_Code_Streams_on_the_RACH" float(53),
  "A336_Number_of_Successes_in_Decoding_the_Code_Streams_on_the_RA" float(53),
  "A337_Number_of_Deletions_of_the_Paging_for_CS_Services_on_the_P" float(53),
  "A338_Number_of_Expiries_of_the_Paging_for_CS_Services_on_the_PC" float(53),
  "A339_Number_of_Deletions_of_the_Paging_for_PS_Services_on_the_P" float(53),
  "A340_Number_of_Expiries_of_the_Paging_for_PS_Services_on_the_PC" float(53),
  "A349A_RACH_Failures_Too_High_TA" float(53),
  "A351P_Number_of_Discarded_PS_Re-paging_Messages" float(53),
  "A351Q_Number_of_Second_Paging_Requests_Sent_for_PS_Services" float(53),
  "A351_Number_of_Discarded_Re-paging_Messages_for_CS_Services" float(53),
  "A352C_PCH-AGCH_Mean_Queue_Length" float(53),
  "R9101_Number_of_Application_Attempts_of_Abis_Timeslot" float(53),
  "R9102_Number_of_Successful_Application_Attempts_of_Abis_Timeslo" float(53),
  "R9103_Number_of_Release_Requests_of_Abis_Timeslot" float(53),
  "R9104_Number_of_Successful_Releases_of_Abis_Timeslot" float(53),
  "R9105_Number_of_Application_Attempts_of_IP_PATH_or_HDLC_Bandwid" float(53),
  "R9106_Number_of_Successful_Application_Attempts_of_IP_PATH_or_H" float(53),
  "R9107_Number_of_Release_Requests_of_IP_PATH_or_HDLC_Bandwidth_1" float(53),
  "R9108_Number_of_Successful_Releases_of_IP_PATH_or_HDLC_Bandwidt" float(53),
  "R9109_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9110_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9111_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9112_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "R9115_Number_of_Unsuccessful_Application_Attempts_of_Abis_Times" float(53),
  "A3100A_Assignment_Requests_Signaling_Channel_TCH" float(53),
  "A3100B_Assignment_Requests_TCHF_Only" float(53),
  "A3101A_Assignment_Requests_MOC" float(53),
  "A3101C_Assignment_Requests_MTC" float(53),
  "A3101D_Assignment_Requests_Emergency_Call" float(53),
  "A3101E_Assignment_Requests_Call_Re-establishment" float(53),
  "A3111A_Cell_Assignment_Complete_Times_of_Speech_Version_3_Direc" float(53),
  "A3112A_Cell_Assignment_Complete_Times_of_Speech_Version_3_Direc" float(53),
  "A3113_Speech_Version_5_Completed_Assignments_Excluding_Directed" float(53),
  "A3114_Cell_Assignment_Complete_Times_of_Speech_Version_5_Direct" float(53),
  "A3129B_Failed_Assignments_First_Assignment_Terrestrial_Resource" float(53),
  "A3129C_Failed_Assignments_First_Assignment_Assignment_Timed_Out" float(53),
  "A3129D_Failed_Assignments_Reconnection_to_Old_Channels_Reconnec" float(53),
  "A3129E_Failed_Assignments_CIC_Unavailable" float(53),
  "A3129F_Failed_Assignments_CIC_Allocated" float(53),
  "A3129G_Failed_Assignments_A_Interface_Failure" float(53),
  "A3129H_Failed_Assignments_Clear_Commands_Sent_By_MSC" float(53),
  "A3129I_Failed_Assignments_Invalid_State" float(53),
  "A3129J_Failed_Assignments_Invalid_Message" float(53),
  "A3129N_Failed_Assignments_Reconnection_to_Old_Channels_Terrestr" float(53),
  "A3129O_Failed_Assignments_First_Assignment_Directed_Retry_Timed" float(53),
  "A3129P_Failed_Assignments_Reconnection_to_Old_Channels_Timer_Ex" float(53),
  "A3129Q_Failed_Assignments_Reconnection_to_Old_Channels_Timer_Ex" float(53),
  "A3129R_Failed_Assignments_Reconnection_to_Old_Channels_Reconnec" float(53),
  "A3129S_Failed_Assignments_Requested_Speech_Version_Unavailable" float(53),
  "A3129T_Failed_Assignments_No_Ater_Resource_Available" float(53),
  "A312Aa_Failed_Assignments_during_MOC_on_the_A_Interface_Includi" float(53),
  "A312A_Failed_Assignments_First_Assignment_No_Channel_Available_" float(53),
  "A312Ca_Failed_Assignments_during_MTC_on_the_A_Interface_Includi" float(53),
  "A312Da_Failed_Assignments_during_Emergency_Call_on_the_A_Interf" float(53),
  "A312Ea_Failed_Assignments_during_Call_Re-establishment_on_the_A" float(53),
  "A312F_Number_of_Assignment_Failures_No_Abis_Resource_Available" float(53),
  "A312K_Failed_Assignments_First_Assignment_No_Channel_Available_" float(53),
  "A312L_Failed_Assignments_Reconnection_to_Old_Channels_No_Channe" float(53),
  "A312M_Failed_Assignments_Reconnection_to_Old_Channels_No_Channe" float(53),
  "A312S_Failed_Assignments_Signaling_Channel" float(53),
  "A3139J_Number_of_Attempts_Initiated_by_the_BSC_to_Speed_Up_the_" float(53),
  "A3139K_Number_of_Failed_Attempts_Initiated_by_the_BSC_to_Speed_" float(53),
  "A3139M_Number_of_Failed_Attempts_Initiated_by_MSs_to_Speed_Up_t" float(53),
  "A3139N_Number_of_Attempts_Initiated_by_MSs_to_Speed_Down_the_HS" float(53),
  "A3139P_Number_of_Failed_Attempts_Initiated_by_MSs_to_Speed_Down" float(53),
  "A3167A_Speech_Version_1_Completed_Assignments_Excluding_Directe" float(53),
  "A3167B_Speech_Version_2_Completed_Assignments_Excluding_Directe" float(53),
  "A3167C_Speech_Version_3_Completed_Assignments_Excluding_Directe" float(53),
  "A3168A_Speech_Version_1_Completed_Assignments_Excluding_Directe" float(53),
  "A3168B_Speech_Version_2_Completed_Assignments_Excluding_Directe" float(53),
  "A3168C_Speech_Version_3_Completed_Assignments_Excluding_Directe" float(53),
  "A3169A_Failed_Assignments_Um_Cause" float(53),
  "A3170A_Number_of_Completed_TCH_Assignments_CSFB_MOC" float(53),
  "A3170B_Number_of_Completed_TCH_Assignments_CSFB_MTC" float(53),
  "CA310A_Assignment_Requests_TCH_Assigned_Repeatedly_over_A_Inter" float(53),
  "CA310_Assignment_Requests" float(53),
  "CA311_Assignment_Commands" float(53),
  "CA312A_Failed_Assignments_TCH_Assigned_Repeatedly_over_A_Interf" float(53),
  "CA312_Failed_Assignments_Channel_Unavailable" float(53),
  "CA313_Successful_Assignments" float(53),
  "CA315_Number_of_Failed_Assignments_Um_Interface_Message_Failure" float(53),
  "CA316_Completed_Assignments_Um_Interface" float(53),
  "CM30A_Call_Drops_on_Radio_Interface_SDCCH" float(53),
  "CM30_Call_Drops_on_SDCCH" float(53),
  "CM3300_Call_Drops_on_Traffic_Channel_in_Stable_State_Error_Indi" float(53),
  "CM3301_Call_Drops_on_Traffic_Channel_in_Stable_State_Connection" float(53),
  "CM3302_Call_Drops_on_Traffic_Channel_in_Stable_State_Release_In" float(53),
  "CM3303A_Number_of_Call_Drops_on_TCH_Before_Disconnection" float(53),
  "CM330A_Call_Drops_on_the_Traffic_Channels_on_the_TRX_in_the_Und" float(53),
  "CM330B_Call_Drops_on_the_Traffic_Channels_on_the_TRX_in_the_Ove" float(53),
  "CM330_Call_Drops_on_Radio_Interface_in_Stable_State_Traffic_Cha" float(53),
  "CM331_Call_Drops_on_Radio_Interface_in_Handover_State_Traffic_C" float(53),
  "CM332_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_Traffic_C" float(53),
  "CM333_Call_Drops_due_to_Abis_Terrestrial_Link_Failure_Traffic_C" float(53),
  "CM334_Call_Drops_due_to_Equipment_Failure_Traffic_Channel" float(53),
  "CM335_Call_Drops_due_to_Forced_Handover_Traffic_Channel" float(53),
  "CM337_Call_Drops_after_Answer" float(53),
  "CM338_Successful_Connections" float(53),
  "CM33C_Call_Drops_on_Radio_Interface_Traffic_Channel" float(53),
  "CM33_Call_Drops_on_Traffic_Channel" float(53),
  "CM3600_Call_Drops_on_Signaling_Channel_in_Stable_State_Error_In" float(53),
  "CM3601_Call_Drops_on_Signaling_Channel_in_Stable_State_Connecti" float(53),
  "CM3602_Call_Drops_on_Signaling_Channel_in_Stable_State_Release_" float(53),
  "CM3603_Call_Drops_on_Signaling_Channel_in_Stable_State_Error_In" float(53),
  "CM3604_Call_Drops_on_Signaling_Channel_in_Stable_State_Release_" float(53),
  "CM3605_Call_Drops_on_Signaling_Channel_in_Stable_State_Connecti" float(53),
  "CM3606_Call_Drops_on_Radio_Interface_in_Stable_State_Signaling_" float(53),
  "CM360A_Call_Drops_on_the_Signaling_Channels_on_the_TRX_in_the_O" float(53),
  "CM360_Call_Drops_on_Radio_Interface_in_Stable_State_Signaling_C" float(53),
  "CM361A_Call_Drops_on_the_Signaling_Channels_on_the_TRX_in_the_U" float(53),
  "CM361_Call_Drops_on_Radio_Interface_in_Handover_State_Signaling" float(53),
  "CM362_Call_Drops_Due_to_No_MR_from_MS_for_a_Long_Time_Signaling" float(53),
  "CM363_Call_Drops_Due_to_Abis_Terrestrial_Link_Failure_Signaling" float(53),
  "CM364_Call_Drops_due_to_Equipment_Failure_Signaling_Channel" float(53),
  "CM365_Call_Drops_due_to_Forced_Handover_Signaling_Channel" float(53),
  "CM36C_Call_Drops_on_Radio_Interface_Signaling_Channel" float(53),
  "CM36_Call_Drops_on_Signaling_Channel" float(53),
  "RM3171_Call_Drops_on_Radio_Interface_in_Stable_State_Traffic_Ch" float(53),
  "RM3172_Call_Drops_on_Radio_Interface_in_Handover_State_Traffic_" float(53),
  "RM3174_Call_Drops_Due_to_Failures_to_Return_to_Normal_Call_from" float(53),
  "AA3250_Average_Call_Access_Duration" float(53),
  "AA3251_Average_Call_Setup_Duration" float(53),
  "CR373_Cell_In-Service_Duration" float(53),
  "R3710_Number_of_Cell_BCCH_Mutual_Aids" float(53),
  "R3711_Number_of_Recoveries_after_Cell_BCCH_Mutual_Aids" float(53),
  "R3720_Number_of_Cell_Baseband_Hopping_Mutual_Aids" float(53),
  "R3721_Number_of_Recoveries_after_Cell_Baseband_Hopping_Mutual_A" float(53),
  "R3722_Duration_of_Cell_Turning_off" float(53),
  "R3731_Cell_Activation_Delay" float(53),
  "R3732_Cell_Out-of-Service_Duration_Due_to_O&M" float(53),
  "R373_Cell_Out-of-Service_Duration" float(53),
  "R3120A_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3120C_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3120D_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3120E_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3127A_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3127B_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3127C_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3127D_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3127E_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3128A_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3128B_Channel_Assignment_Failures_All_Channels_Busy_or_Channel" float(53),
  "R3128C_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3128D_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "R3128E_Channel_Assignment_Failures_All_Channels_Busy_or_Unconfi" float(53),
  "CR3109_Channel_Assignment_Requests_TCH" float(53),
  "R3100A_Channel_Assignment_Requests_in_Immediate_Assignment_Proc" float(53),
  "R3100D_Channel_Assignment_Requests_in_Incoming_Internal_Inter-C" float(53),
  "R3100E_Channel_Assignment_Requests_in_Incoming_External_Inter-C" float(53),
  "R3107A_Channel_Assignment_Requests_in_Immediate_Assignment_Proc" float(53),
  "R3107D_Channel_Assignment_Requests_in_Incoming_Internal_Inter-C" float(53),
  "R3107E_Channel_Assignment_Requests_in_Incoming_External_Inter-C" float(53),
  "R3160A_Number_of_Requests_for_Dynamic_PDCH" float(53),
  "R3160C_Number_of_Successful_Requests_for_Dynamic_PDCH" float(53),
  "R3161A_Number_of_BSC-Initiated_Requests_for_Dynamic_PDCH" float(53),
  "R3161B_Number_of_Failed_BSC-Initiated_Requests_for_Dynamic_PDCH" float(53),
  "R3165A_Number_of_Preferable_Selections_of_TCHH_in_a_Cell_Abis_R" float(53),
  "R3166A_Number_of_Preferable_Selections_of_TCHH_in_a_Cell_Ater_R" float(53),
  "R3167A_Number_of_Preferable_Selections_of_TCHH_in_a_Cell_Radio_" float(53),
  "CR3000_Number_of_Initially_Configured_Channels_SDCCH" float(53),
  "CR3001_Number_of_Initially_Configured_Channels_Static_PDCH" float(53),
  "CR3002_Number_of_Initially_Configured_Channels_Dynamic_PDCH" float(53),
  "CR3005_Number_of_Initially_Configured_Channels_Static_PDTCH_Sup" float(53),
  "CR3006_Number_of_Initially_Configured_Channels_Dynamic_PDTCH_Su" float(53),
  "CR3007_Number_of_Initially_Configured_Channels_TCHF" float(53),
  "CR3008_Number_of_Initially_Configured_Channels_TCHH" float(53),
  "CR300B_Number_of_Initially_Configured_Channels_TCH" float(53),
  "CR3020_Mean_Number_of_Available_Channels_SDCCH" float(53),
  "CR3021_Mean_Number_of_Available_Channels_PDCH" float(53),
  "CR3023_Mean_Number_of_Available_Channels_TCHs_Converted_from_Dy" float(53),
  "CR3024_Mean_Number_of_Available_Channels_PDCHs_Converted_from_D" float(53),
  "CR3027_Mean_Number_of_Available_Channels_TCHF" float(53),
  "CR3028_Mean_Number_of_Available_Channels_TCHH" float(53),
  "CR302B_Mean_Number_of_Available_Channels_TCH" float(53),
  "AR3551C_Traffic_Volume_on_AMR_TCHFs" float(53),
  "AR3552C_Traffic_Volume_on_AMR_TCHHs" float(53),
  "AR3553_Average_Number_of_Busy_TCHFs_CSFB" float(53),
  "AR3554_Average_Number_of_Busy_TCHHs_CSFB" float(53),
  "R3550H_Traffic_Volume_of_Speech_Service_on_SDCCH" float(53),
  "R3550I_Traffic_Volume_of_Short_Message_Service_on_SDCCH" float(53),
  "R3550J_Traffic_Volume_of_USSD_Service_on_SDCCH" float(53),
  "R3550L_Traffic_Volume_of_Unknown_Service_on_SDCCH" float(53),
  "R3550M_Traffic_Volume_of_Signaling_Channels_SDCCH" float(53),
  "R3550N_Traffic_Volume_of_Signaling_Channels_TCH" float(53),
  "R3552E_Traffic_Volume_on_TCHs_Occupied_by_MSs_Handed_over_from_" float(53),
  "R3553E_Traffic_Volume_on_TCHs_Occupied_by_MSs_Handed_over_from_" float(53),
  "A300M_Number_of_Channel_Requests_Early_Identification_of_CSFB_M" float(53),
  "A300N_Number_of_Channel_Requests_Early_Identification_of_CSFB_M" float(53),
  "H3102M_Number_of_Handover_Requests_of_Non-CSFB_MSs_due_to_CSFB_" float(53),
  "H3132M_Number_of_Successful_Handovers_of_Non-CSFB_MSs_due_to_CS" float(53),
  "H351A_Number_of_Times_CSFB_Subscribers_Fast_Return_to_LTE" float(53),
  "H351D_Number_of_Times_CSFB_Subscribers_Fast_Return_to_LTE_Blind" float(53),
  "H360_Number_of_Ultra-Flash_CSFB_Handover_Requests" float(53),
  "H361_Number_of_Ultra-Flash_CSFB_Handover_Responses" float(53),
  "H363_Number_of_Successful_Ultra-Flash_CSFB_Handovers" float(53),
  "R3127F_Number_of_Full-Rate_Channel_Allocations_for_CSFB_MSs" float(53),
  "A9301_Number_of_Downlink_EGPRS_TBF_Establishment_Attempts" float(53),
  "A9302_Number_of_Successful_Downlink_EGPRS_TBF_Establishments" float(53),
  "A9303_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9304_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9305_Number_of_Downlink_EGPRS_TBF_Normal_Releases" float(53),
  "A9306_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_N31" float(53),
  "A9307_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_SUS" float(53),
  "A9308_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_FLU" float(53),
  "A9309_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_No_" float(53),
  "A9313_Total_Duration_of_Downlink_EGPRS_TBF" float(53),
  "A9315_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9316_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_Cha" float(53),
  "A9317_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_Oth" float(53),
  "A9318_Number_of_Downlink_EGPRS_Intermit_Transfers" float(53),
  "A9333_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9334_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9335_Number_of_Abnormal_downlink_EGPRS_TBF_Releases_due_to_CS_" float(53),
  "A9336_Number_of_Abnormal_Downlink_EGPRS_TBF_Releases_due_to_Abi" float(53),
  "A9337_Number_of_Failed_Downlink_EGPRS_TBF_Establishments_due_to" float(53),
  "A9338_Number_of_Successful_Downlink_EGPRS_TBF_Establishments_Ov" float(53),
  "A9339_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_N31" float(53),
  "A9343_Number_of_Times_the_Downlink_EGPRS_Transmission_Is_Interr" float(53),
  "A9344_Number_of_Times_the_Downlink_EGPRS_Transmission_Is_Interr" float(53),
  "A9346_Number_of_Downlink_EGPRS_TBF_Intermit_Transfers_Due_to_FL" float(53),
  "A9347_Number_of_Downlink_EGPRS_TBF_Abnormal_Releases_due_to_DTM" float(53),
  "AA9314_Average_Duration_of_Downlink_EGPRS_TBF" float(53),
  "A9101_Number_of_Downlink_GPRS_TBF_Establishment_Attempts" float(53),
  "A9102_Number_of_Successful_Downlink_GPRS_TBF_Establishments" float(53),
  "A9103_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9104_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9105_Number_of_Downlink_GPRS_TBF_Normal_Releases" float(53),
  "A9106_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_N310" float(53),
  "A9107_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_SUSP" float(53),
  "A9108_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_FLUS" float(53),
  "A9109_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_No_C" float(53),
  "A9113_Total_Duration_of_Downlink_GPRS_TBF" float(53),
  "A9115_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9116_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_Chan" float(53),
  "A9117_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_Othe" float(53),
  "A9118_Number_of_Downlink_GPRS_Intermit_Transfers" float(53),
  "A9132_Number_of_Abnormal_Downlink_GPRS_TBF_Releases_Because_of_" float(53),
  "A9133_Number_of_Downlink_GPRS_TBF_Movements_Because_of_EGPRS_Us" float(53),
  "A9135_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9136_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9137_Number_of_Abnormal_downlink_GPRS_TBF_Releases_due_to_CS_H" float(53),
  "A9138_Number_of_Abnormal_Downlink_GPRS_TBF_Releases_due_to_Abis" float(53),
  "A9139_Number_of_Failed_Downlink_GPRS_TBF_Establishments_due_to_" float(53),
  "A9140_Number_of_Successful_Downlink_GPRS_TBF_Establishments_Ove" float(53),
  "A9141_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_N310" float(53),
  "A9143_Number_of_Downlink_GPRS_TBF_Abnormal_Releases_due_to_DTM_" float(53),
  "A9341_Number_of_Times_the_Downlink_GPRS_Transmission_Is_Interru" float(53),
  "A9342_Number_of_Times_the_Downlink_GPRS_Transmission_Is_Interru" float(53),
  "A9345_Number_of_Downlink_GPRS_TBF_Intermit_Transfers_Due_to_FLU" float(53),
  "AA9114_Average_Duration_of_Downlink_GPRS_TBF" float(53),
  "L9311_Total_Number_of_Valid_Downlink_EGPRS_MCS1_RLC_Data_Blocks" float(53),
  "L9312_Total_Number_of_Valid_Downlink_EGPRS_MCS2_RLC_Data_Blocks" float(53),
  "L9313_Total_Number_of_Valid_Downlink_EGPRS_MCS3_RLC_Data_Blocks" float(53),
  "L9314_Total_Number_of_Valid_Downlink_EGPRS_MCS4_RLC_Data_Blocks" float(53),
  "L9315_Total_Number_of_Valid_Downlink_EGPRS_MCS5_RLC_Data_Blocks" float(53),
  "L9316_Total_Number_of_Valid_Downlink_EGPRS_MCS6_RLC_Data_Blocks" float(53),
  "L9317_Total_Number_of_Valid_Downlink_EGPRS_MCS7_RLC_Data_Blocks" float(53),
  "L9318_Total_Number_of_Valid_Downlink_EGPRS_MCS8_RLC_Data_Blocks" float(53),
  "L9319_Total_Number_of_Valid_Downlink_EGPRS_MCS9_RLC_Data_Blocks" float(53),
  "L9331_Number_of_Downlink_EGPRS_RLC_Control_Blocks" float(53),
  "L9332_Number_of_Downlink_EGPRS_RLC_Dummy_Blocks" float(53),
  "TL9333_Average_Throughput_of_Downlink_EGPRS_RLC" float(53),
  "TL9334_Average_Payload_of_Single_Downlink_EGPRS_TBF" float(53),
  "TL9338_Throughput_of_Downlink_EGPRS_RLC_Data_Blocks" float(53),
  "L9101_Total_Number_of_Downlink_GPRS_RLC_Data_Blocks" float(53),
  "L9106_Total_Number_of_Valid_RLC_Downlink_Data_Blocks_Using_CS1" float(53),
  "L9107_Total_Number_of_Valid_RLC_Downlink_Data_Blocks_Using_CS2" float(53),
  "L9108_Total_Number_of_Valid_RLC_Downlink_Data_Blocks_Using_CS3" float(53),
  "L9109_Total_Number_of_Valid_RLC_Downlink_Data_Block_Using_CS4" float(53),
  "L9116_Number_of_Coding_Scheme_Upgrades_on_Downlink_GPRS_TBF" float(53),
  "L9117_Number_of_Coding_Scheme_Degrades_on_Downlink_GPRS_TBF" float(53),
  "L9118_Number_of_Downlink_GPRS_RLC_Control_Blocks" float(53),
  "L9119_Number_of_Downlink_GPRS_RLC_Dummy_Blocks" float(53),
  "L9120_Total_Number_of_Downlink_GPRS_TBFs" float(53),
  "L9121_Total_Duration_of_Downlink_GPRS_TBFs" float(53),
  "TL9114_Average_Throughput_of_Downlink_GPRS_RLC" float(53),
  "TL9123_Throughput_of_Downlink_GPRS_RLC_Data_Blocks" float(53),
  "AL9507_Average_LLC_PDU_Bytes_per_Downlink_TBF" float(53),
  "AL9529_Downlink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "AL9530_Downlink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "L9503_Total_Bytes_of_Downlink_LLC_PDUs_Received" float(53),
  "L9506_Total_Bytes_of_LLC_PDUs_Sent" float(53),
  "L9531_Maximum_Downlink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "L9532_Maximum_Downlink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "L9562_Total_Bytes_of_Sent_Downlink_GPRS_Information_Messages" float(53),
  "L9565_Total_Bytes_of_Downlink_LLC_PDUs_for_UMTS_Capable_MSs" float(53),
  "L9579_Total_Bytes_of_Downlink_LLC_PDUs_for_LTE_Capable_MSs" float(53),
  "A353B_Number_of_discarded_CS_pagings_on_the_Abis_interface" float(53),
  "A353C_Number_of_discarded_PS_pagings_on_the_Abis_interface" float(53),
  "A353D_Number_of_Downlink_Packet_Immediate_Assignment_Requests_D" float(53),
  "A353E_Number_of_Uplink_Packet_Immediate_Assignment_Requests_Dis" float(53),
  "L3188A_MSG_DEL_IND_Messages_Sent_on_Abis_Interface" float(53),
  "L3188B_MSG_CCCH_LOAD_IND_RACH_Messages_Sent_on_Abis_Interface" float(53),
  "L3188C_MSG_CCCH_LOAD_IND_PCH_Messages_Sent_on_Abis_Interface_CS" float(53),
  "L3188D_MSG_CCCH_LOAD_IND_PCH_Messages_Sent_on_Abis_Interface_PS" float(53),
  "L3188H_Increases_of_Flow_Control_Levels" float(53),
  "L3188I_Decreases_of_Flow_Control_Levels" float(53),
  "L3188L_Paging_Messages_Discarded_from_the_PCH_Queue" float(53),
  "L3188M_Maximum_Seizure_Rate_of_PCH_Paging_Queue" float(53),
  "L3189A_Discarded_Channel_Requests_MOC" float(53),
  "L3189B_Discarded_Channel_Requests_MTC" float(53),
  "L3189C_Discarded_Channel_Requests_Emergency_Call" float(53),
  "L3189D_Discarded_Channel_Requests_Call_Re-establishment" float(53),
  "L3189E_Discarded_Channel_Requests_Location_Updating" float(53),
  "L3189F_Discarded_Channel_Requests_Packet_Call" float(53),
  "L3189G_Discarded_Channel_Requests_LMU+Reserved" float(53),
  "L3189H_Discarded_Channel_Requests_Protocol_Undefined" float(53),
  "L3189I_Discarded_Channel_Requests" float(53),
  "A300A_Channel_Requests_MOC" float(53),
  "A300C_Channel_Requests_MTC" float(53),
  "A300D_Channel_Requests_Emergency_Call" float(53),
  "A300E_Channel_Requests_Call_Re-establishment" float(53),
  "A300F_Channel_Requests_Location_Updating" float(53),
  "A300I_Channel_Requests_LMU+Reserved" float(53),
  "A300K_Channel_Requests_Protocol_Undefined" float(53),
  "A300L_Number_of_times_that_the_BTS_filters_out_channel_requests" float(53),
  "A300P_Channel_Requests_Access_Reference_Value_111xxxxx" float(53),
  "A3010_Immediate_Assignment_Commands_SDCCH" float(53),
  "A3018_Immediate_Assignment_Commands_TCHH" float(53),
  "A301F_TCHF_Seizures_for_Speech_Service" float(53),
  "A301HH_TCHH_Seizures_for_Speech_Service" float(53),
  "A301H_Immediate_Assignment_Commands_Packet_Service" float(53),
  "A302H_Rejects_to_Immediate_Assignments_Packet_Service" float(53),
  "A302J_Rejects_to_Immediate_Assignments_Circuit_Service" float(53),
  "A3030C_Call_Setup_Indications_MTC_SDCCH" float(53),
  "A3030D_Call_Setup_Indications_Emergency_Call_SDCCH" float(53),
  "A3030E_Call_Setup_Indications_Call_Re-establishment_SDCCH" float(53),
  "A3030F_Call_Setup_Indications_Location_Updating_SDCCH" float(53),
  "A3030G_Call_Setup_Indications_IMSI_Detach_SDCCH" float(53),
  "A3030H_Call_Setup_Indications_Packet_Service_SDCCH" float(53),
  "A3030K_Call_Setup_Indications_Others_SDCCH" float(53),
  "A3039A_Number_of_Call_Setup_Indications_CSFB_MOC" float(53),
  "A3039B_Number_of_Call_Setup_Indications_CSFB_MTC" float(53),
  "A3039J_SDCCH_Seizures_for_Speech_Service" float(53),
  "A3040_Call_Setup_Indications_Timed_Out_SDCCH" float(53),
  "A3046A_Number_of_Timeouts_Waiting_for_CC_Message_Mobile_Origina" float(53),
  "A3046B_Number_of_Timeouts_Waiting_for_CC_Message_Mobile_Termina" float(53),
  "A3046C_Number_of_Timeouts_Waiting_for_CC_Message_Location_Updat" float(53),
  "A3047_Call_Setup_Indications_Timed_Out_TCHF" float(53),
  "A3048_Call_Setup_Indications_Timed_Out_TCHH" float(53),
  "A3049_Call_Setup_Indication_Timed_Out_Access_Reference_Value_11" float(53),
  "A304A_Call_Setup_Indication_Timed_Out_Access_Reference_Value_00" float(53),
  "A304B_Call_Setup_Indication_Timed_Out_Access_Reference_Value_00" float(53),
  "A304C_Call_Setup_Indication_Timed_Out_Good_Receive_Level_and_No" float(53),
  "A304D_Call_Setup_Indication_Timed_Out_Large_TA_and_No_Bit_Error" float(53),
  "A3050_Rejects_to_Service_Requests_Congestion" float(53),
  "A3051_Rejects_to_Service_Requests_Network_Failure" float(53),
  "A3053_Rejects_to_Service_Requests_Other_Causes" float(53),
  "A307_Maximum_Number_of_Random_Access_Control_Classes" float(53),
  "CA300J_Channel_Requests_Circuit_Service" float(53),
  "CA301J_Immediate_Assignment_Commands_Circuit_Service" float(53),
  "CA3030J_Call_Setup_Indications_SDCCH_Circuit_Service" float(53),
  "CA3039J_Call_Setup_Indications_TCH_Circuit_Service" float(53),
  "CA303H_Call_Setup_Indications_Packet_Service" float(53),
  "CA303J_Call_Setup_Indications_Circuit_Service" float(53),
  "CA304_Call_Setup_Indications_Timed_Out" float(53),
  "CA305_Rejects_to_Service_Requests" float(53),
  "CA306_Timeouts_Waiting_MSC's_CC_Message" float(53),
  "CA307A_Total_Duration_of_Random_Access_Control" float(53),
  "CA307B_Total_Number_of_Random_Access_Control_Classes" float(53),
  "A3139F_Number_of_Requests_for_Incoming_Inter-Cell_Handovers_Bet" float(53),
  "A3139G_Number_of_Failed_Incoming_Inter-Cell_Handovers_Between_B" float(53),
  "CH3409A_Number_of_Incoming_External_Inter-Cell_Handover_Request" float(53),
  "CH340_Incoming_External_Inter-Cell_Handover_Requests" float(53),
  "CH3419A_Number_of_Incoming_External_Inter-Cell_Handover_Respons" float(53),
  "CH341_Incoming_External_Inter-Cell_Handover_Responses" float(53),
  "CH3429A_Number_of_Failed_Incoming_External_Inter-Cell_Handovers" float(53),
  "CH342C_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Expi" float(53),
  "CH342_Failed_Incoming_External_Inter-Cell_Handovers" float(53),
  "CH343_Successful_Incoming_External_Inter-Cell_Handovers" float(53),
  "CH344_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "CH346_Incoming_External_Inter-Cell_Handover_RequestsBetter_Cell" float(53),
  "CH347_Incoming_Inter-Cell_Handover_Requests_Timing_Advance" float(53),
  "H3420A_Failed_Incoming_External_Inter-Cell_Handovers_No_Channel" float(53),
  "H3420C_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Expi" float(53),
  "H3429A_Failed_Incoming_External_Inter-Cell_Handovers_No_Channel" float(53),
  "H3429Ca_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Exp" float(53),
  "H3429Cb_Failed_Incoming_External_Inter-Cell_Handovers_Timer_Exp" float(53),
  "H342E_Failed_Incoming_External_Inter-Cell_Handovers_CIC_Unavail" float(53),
  "H342F_Failed_Incoming_External_Inter-Cell_Handovers_CIC_Allocat" float(53),
  "H342HA_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HB_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HC_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HD_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HE_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HF_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HG_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342HH_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H342H_Failed_Incoming_External_Inter-Cell_Handovers_Clear_Comma" float(53),
  "H342I_Failed_Incoming_External_Inter-Cell_Handovers_Invalid_Mes" float(53),
  "H342J_Failed_Incoming_External_Inter-Cell_Handovers_Requested_S" float(53),
  "H342L_Number_of_Incoming_BSC_Handover_Failures_No_Abis_Resource" float(53),
  "H3440_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "H3447_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "H3448_Incoming_External_Inter-Cell_Handover_Detection_Messages_" float(53),
  "H3881A_Incoming_External_Inter-Cell_Handover_Detection_Messages" float(53),
  "H3882A_Incoming_External_Inter-Cell_Handover_Detection_Messages" float(53),
  "A3139B_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "A3139C_Number_of_Incoming_Internal_Inter-Cell_Handover_Failures" float(53),
  "CH3209A_Number_of_Incoming_Internal_Inter-Cell_Handover_Request" float(53),
  "CH320a_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "CH320b_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "CH320_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "CH3219A_Number_of_Incoming_Internal_Inter-Cell_Handover_Respons" float(53),
  "CH321_Number_of_Incoming_Internal_Inter-Cell_Handover_Responses" float(53),
  "CH3229A_Number_of_Failed_Incoming_Internal_Inter-Cell_Handovers" float(53),
  "CH323_Number_of_Successful_Incoming_Internal_Inter-Cell_Handove" float(53),
  "CH324_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H3200W_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3200X_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3200Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3200Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209W_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209X_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3209Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320a_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H320b_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H320II_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320IO_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320OI_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H320OO_Number_of_Incoming_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3210W_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3210X_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3210Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3210Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217W_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217X_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3217Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218W_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218X_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218Y_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H3218Z_Number_of_Incoming_Internal_Inter-Cell_Handover_Response" float(53),
  "H321a_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H321b_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H321II_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H321IO_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H321OI_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H321OO_Number_of_Incoming_Internal_Inter-Cell_Handover_Commands" float(53),
  "H322H_Failed_Incoming_Internal_Inter-Cell_Handovers_Requested_S" float(53),
  "H322I_Failed_Incoming_Internal_Inter-Cell_Handovers_Channel_Act" float(53),
  "H323II_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323IO_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323OI_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H323OO_Number_of_Successful_Incoming_Internal_Inter-Cell_Handov" float(53),
  "H3240_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H3247_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "H3248_Number_of_Incoming_Internal_Inter-Cell_Handover_Detection" float(53),
  "CH360_Incoming_Inter-RAT_Inter-Cell_Handover_Requests" float(53),
  "CH361_Incoming_Inter-RAT_Inter-Cell_Handover_Responses" float(53),
  "CH363_Successful_Incoming_Inter-RAT_Inter-Cell_Handovers" float(53),
  "H3609_Incoming_Inter-RAT_Inter-Cell_Handover_Requests_TCH" float(53),
  "H3610_Incoming_Inter-RAT_Inter-Cell_Handover_Responses_SDCCH" float(53),
  "H3617_Incoming_Inter-RAT_Inter-Cell_Handover_Responses_TCHF" float(53),
  "H3618_Incoming_Inter-RAT_Inter-Cell_Handover_Responses_TCHH" float(53),
  "H3620A_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_No_Channe" float(53),
  "H3620C_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Exp" float(53),
  "H3620_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_SDCCH" float(53),
  "H3627_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_TCHF" float(53),
  "H3628_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_TCHH" float(53),
  "H3629A_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_No_Channe" float(53),
  "H3629Ca_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Ex" float(53),
  "H3629Cb_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Ex" float(53),
  "H362B_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Terrestria" float(53),
  "H362C_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Timer_Expi" float(53),
  "H362E_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_CIC_Unavai" float(53),
  "H362F_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_CIC_Alloca" float(53),
  "H362H_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H362J_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Invalid_Me" float(53),
  "H362L_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers_Requested_" float(53),
  "H362_Failed_Incoming_Inter-RAT_Inter-Cell_Handovers" float(53),
  "CH300_Internal_Intra-Cell_Handover_Requests" float(53),
  "CH301_Internal_Intra-Cell_Handover_Commands" float(53),
  "K3000_SDCCH_Seizure_Requests" float(53),
  "K3001_Failed_SDCCH_Seizures_due_to_Busy_SDCCH" float(53),
  "K3003_Successful_SDCCH_Seizures" float(53),
  "K3004_Traffic_Volume_on_SDCCH" float(53),
  "K3005_Available_SDCCHs" float(53),
  "K3006_Configured_SDCCHs" float(53),
  "K3010A_TCH_Seizure_Requests_Traffic_Channel" float(53),
  "K3010B_TCH_Seizure_Requests_in_TCH_Handovers_Traffic_Channel" float(53),
  "K3011A_Failed_TCH_Seizures_due_to_Busy_TCH_Traffic_Channel" float(53),
  "K3011B_Failed_TCH_Seizures_in_TCH_Handovers_due_to_Busy_TCH_Tra" float(53),
  "K3012A_Call_Drops_on_TCH_in_Stable_State_Traffic_Channel" float(53),
  "K3012B_Call_Drops_in_TCH_Handovers_Traffic_Channel" float(53),
  "K3013A_Successful_TCH_Seizures_Traffic_Channel" float(53),
  "K3013B_Successful_TCH_Seizures_in_TCH_handovers_Traffic_Channel" float(53),
  "K3014_Traffic_Volume_on_TCH" float(53),
  "K3015_Available_TCHs" float(53),
  "K3016_Configured_TCHs" float(53),
  "K3020_TCH_Seizure_Requests_Signaling_Channel" float(53),
  "K3021_Failed_TCH_Seizures_due_to_Busy_TCH_Signaling_Channel" float(53),
  "K3022_Call_Drops_on_TCH_Signaling_Channel" float(53),
  "K3023_Successful_TCH_Seizures_Signaling_Channel" float(53),
  "K3024_Traffic_Volume_on_TCH_Signaling_Channel" float(53),
  "K3034_TCHH_Traffic_Volume" float(53),
  "K3040_Successful_TCH_Seizures" float(53),
  "K3100_Immediate_Assignment_Requests" float(53),
  "K3101_Immediate_Assignment_Commands" float(53),
  "K3170_Dual-Band_Handover_Requests" float(53),
  "K3173F_Failed_Dual-Band_Handovers" float(53),
  "K3173_Successful_Dual-Band_Handovers" float(53),
  "LA300_Number_of_Location_Update_Requests_Normal_Location_Update" float(53),
  "LA301_Number_of_Location_Update_Requests_Periodic_Location_Upda" float(53),
  "LA302_Number_of_Location_Update_Requests_IMSI_Attach" float(53),
  "LA303_Number_of_Accepted_Location_Update_Requests" float(53),
  "LA304_Number_of_Rejected_Location_Update_Requests" float(53),
  "LA305_Number_of_Rejected_Location_Update_Requests_Normal_Failur" float(53),
  "LA306_Number_of_Rejected_Location_Update_Requests_Not_Allowed_b" float(53),
  "LA307_Number_of_Rejected_Location_Update_Requests_Interface_Una" float(53),
  "LA308_Number_of_Rejected_Location_Update_Requests_Congestion" float(53),
  "R3561_Maximum_Number_of_Busy_Channels_TCHF" float(53),
  "S3013_MRs_of_Serving_Cells" float(53),
  "S373_Number_of_Downlink_MRs" float(53),
  "AS330C_Mean_Uplink_Receiving_Level_during_Handover_Initiation" float(53),
  "AS331C_Mean_Uplink_Receive_Quality_during_Handover_Initiation" float(53),
  "S335_Mean_Uplink_Receiving_Level_during_Edge_Handover_Initiatio" float(53),
  "S336_Mean_Downlink_Receiving_Level_during_Edge_Handover_Initiat" float(53),
  "A03601_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03602_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03603_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03604_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03605_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03606_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03607_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03608_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03609_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03610_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03611_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03612_Number_of_Calls_Originated_or_Terminated_by_MSs_Capable_" float(53),
  "A03613_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03614_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03615_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03616_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03617_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03618_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03619_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03620_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03621_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03622_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03623_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03624_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03625_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03626_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03627_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03628_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03629_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03630_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03631_Number_of_Calls_Originated_or_Terminated_by_MSs_Supporti" float(53),
  "A03640_Number_of_Calls" float(53),
  "A03644_Number_of_Calls_Made_by_LTE_FDD_Capable_MSs" float(53),
  "A03647_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS850_Frequ" float(53),
  "A03648_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS1700_Freq" float(53),
  "A03649_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS1800_Freq" float(53),
  "A03650_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS1900_Freq" float(53),
  "A03651_Number_of_Calls_Made_by_MSs_Supporting_the_UMTS2100_Freq" float(53),
  "A3139H_Number_of_Requests_for_Outgoing_Inter-Cell_Handovers_Bet" float(53),
  "A3139I_Number_of_Failed_Outgoing_Inter-Cell_Handovers_Between_B" float(53),
  "CH3309A_Number_of_Outgoing_External_Inter-Cell_Handover_Request" float(53),
  "CH330_Outgoing_External_Inter-Cell_Handover_Requests" float(53),
  "CH3319A_Number_of_Outgoing_External_Inter-Cell_Handover_Command" float(53),
  "CH331_Outgoing_External_Inter-Cell_Handover_Commands" float(53),
  "CH3329A_Number_of_Failed_Outgoing_External_Inter-Cell_Handovers" float(53),
  "CH332C_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expired" float(53),
  "CH332D_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "CH332H_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "CH332K_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "CH332L_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "CH332_Failed_Outgoing_External_Inter-Cell_Handovers" float(53),
  "CH333a_Number_of_Outgoing_External_Inter-Cell_Handover_Successe" float(53),
  "CH333b_Number_of_Outgoing_External_Inter-Cell_Handover_Successe" float(53),
  "CH333_Successful_Outgoing_External_Inter-Cell_Handovers" float(53),
  "H3300N_Number_of_Outgoing_External_Inter-Cell_Handover_Requests" float(53),
  "H3301X_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3301Y_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3301Z_Outgoing_External_Inter-Cell_Handover_Requests_Directed_" float(53),
  "H3303_Outgoing_External_Inter-Cell_Handover_Requests_Different_" float(53),
  "H330A_Outgoing_External_Inter-Cell_Handover_Requests_Uplink_Qua" float(53),
  "H330B_Outgoing_External_Inter-Cell_Handover_Requests_Downlink_Q" float(53),
  "H330C_Outgoing_External_Inter-Cell_Handover_Requests_Uplink_Str" float(53),
  "H330D_Outgoing_External_Inter-Cell_Handover_Requests_Downlink_S" float(53),
  "H330E_Outgoing_External_Inter-Cell_Handover_Requests_Timing_Adv" float(53),
  "H330F_Outgoing_External_Inter-Cell_Handover_Requests_Better_Cel" float(53),
  "H330G_Outgoing_External_Inter-Cell_Handover_Requests_Load" float(53),
  "H330H_Outgoing_External_Inter-Cell_Handover_Requests_Rapid_Leve" float(53),
  "H330I_Outgoing_External_Inter-Cell_Handover_Requests_MSC_Interv" float(53),
  "H330J_Outgoing_External_Inter-Cell_Handover_Requests_OM_Interve" float(53),
  "H330L_Outgoing_External_Inter-Cell_Handover_Requests_Other_Caus" float(53),
  "H3310N_Number_of_Outgoing_External_Inter-Cell_Handover_Commands" float(53),
  "H331B_Outgoing_External_Inter-Cell_Handover_Commands_Downlink_Q" float(53),
  "H331C_Outgoing_External_Inter-Cell_Handover_Commands_Uplink_Str" float(53),
  "H331D_Outgoing_External_Inter-Cell_Handover_Commands_Downlink_S" float(53),
  "H331E_Outgoing_External_Inter-Cell_Handover_Commands_Timing_Adv" float(53),
  "H331F_Outgoing_External_Inter-Cell_Handover_Commands_Better_Cel" float(53),
  "H331G_Outgoing_External_Inter-Cell_Handover_Commands_Load" float(53),
  "H331H_Outgoing_External_Inter-Cell_Handover_Commands_Rapid_Leve" float(53),
  "H331I_Outgoing_External_Inter-Cell_Handover_Commands_MSC_Interv" float(53),
  "H331J_Outgoing_External_Inter-Cell_Handover_Commands_OM_Interve" float(53),
  "H331L_Outgoing_External_Inter-Cell_Handover_Commands_Other_Caus" float(53),
  "H3320C_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry_" float(53),
  "H3320L_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry_" float(53),
  "H3320N_Number_of_Failed_Outgoing_External_Inter-Cell_Handovers_" float(53),
  "H3321C_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry_" float(53),
  "H3321L_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry_" float(53),
  "H3321W_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3321X_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3321Y_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3321Z_Failed_Outgoing_External_Inter-Cell_Handovers_Directed_R" float(53),
  "H3322A_Failed_Outgoing_External_Inter-Cell_Handovers_Uplink_Qua" float(53),
  "H3322B_Failed_Outgoing_External_Inter-Cell_Handovers_Downlink_Q" float(53),
  "H3322C_Failed_Outgoing_External_Inter-Cell_Handovers_Uplink_Str" float(53),
  "H3322D_Failed_Outgoing_External_Inter-Cell_Handovers_Downlink_S" float(53),
  "H3322E_Failed_Outgoing_External_Inter-Cell_Handovers_Timing_Adv" float(53),
  "H3322F_Failed_Outgoing_External_Inter-Cell_Handovers_Better_Cel" float(53),
  "H3322G_Failed_Outgoing_External_Inter-Cell_Handovers_Load" float(53),
  "H3322H_Failed_Outgoing_External_Inter-Cell_Handovers_Rapid_Leve" float(53),
  "H3322I_Failed_Outgoing_External_Inter-Cell_Handovers_MSC_Interv" float(53),
  "H3322J_Failed_Outgoing_External_Inter-Cell_Handovers_OM_Interve" float(53),
  "H3322L_Failed_Outgoing_External_Inter-Cell_Handovers_Other_Caus" float(53),
  "H3323_Failed_Outgoing_External_Inter-Cell_Handovers_Different_S" float(53),
  "H3327Ca_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3327Cb_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3327La_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3327Lb_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3328Ca_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3328Cb_Failed_Outgoing_External_Inter-Cell_Handovers_T8_Expiry" float(53),
  "H3328La_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H3328Lb_Failed_Outgoing_External_Inter-Cell_Handovers_T7_Expiry" float(53),
  "H332Aa_Number_of_Outgoing_External_Inter-Cell_Handover_Failures" float(53),
  "H332Ab_Number_of_Outgoing_External_Inter-Cell_Handover_Failures" float(53),
  "H332Da_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Db_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dc_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dd_Failed_Outgoing_External_Inter-Cell_Handovers_Abnormal_R" float(53),
  "H332De_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Df_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_F" float(53),
  "H332Dg_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dh_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Di_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dj_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dk_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dl_Failed_Outgoing_External_Inter-Cell_Handovers_Message_Ty" float(53),
  "H332Dm_Failed_Outgoing_External_Inter-Cell_Handovers_Message_Ty" float(53),
  "H332Dn_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Do_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dp_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332Dq_Failed_Outgoing_External_Inter-Cell_Handovers_Reconnecti" float(53),
  "H332G_Failed_Outgoing_External_Inter-Cell_Handovers_A_Interface" float(53),
  "H332Ha_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hb_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hc_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hd_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332He_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hf_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hg_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Hh_Failed_Outgoing_External_Inter-Cell_Handovers_Clear_Comm" float(53),
  "H332Ka_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kb_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kc_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kd_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Ke_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kf_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kg_Failed_Outgoing_External_Inter-Cell_Handovers_rejects_Re" float(53),
  "H332Kh_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Ki_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kj_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kk_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kl_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Km_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H332Kn_Failed_Outgoing_External_Inter-Cell_Handovers_Handover_R" float(53),
  "H333a_Number_of_Outgoing_External_Inter-Cell_Handover_Requests_" float(53),
  "H333b_Number_of_Outgoing_External_Inter-Cell_Handover_Requests_" float(53),
  "H335A_Outgoing_External_Inter-Cell_Handover_Clear_Cmd_Times_Bef" float(53),
  "H335B_Outgoing_External_Inter-Cell_Handover_Clear_Cmd_Times_Aft" float(53),
  "H371P_Number_of_Outgoing_External_Inter-Cell_Handover_Commands_" float(53),
  "A3139D_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "A3139E_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "CH3109A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Request" float(53),
  "CH310_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "CH3119A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Command" float(53),
  "CH311_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "CH3129A_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers" float(53),
  "CH313_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handove" float(53),
  "CH370a_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "CH370b_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H3100N_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3100Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3101Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3107Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H3108Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310B_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310C_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310D_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310E_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310F_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310G_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310H_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310II_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310IO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310I_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310J_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310L_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310M_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310N_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H310OI_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310OO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests" float(53),
  "H310O_Outgoing_Internal_Inter-Cell_Handover_Requests_MS_Handove" float(53),
  "H3110N_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3110Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3111Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3117Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118W_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118X_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118Y_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H3118Z_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311Aa_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311Ab_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311A_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311B_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311C_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311D_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311E_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311F_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311G_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311H_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311II_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311IO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311I_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311J_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311L_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311M_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands_" float(53),
  "H311OI_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311OO_Number_of_Outgoing_Internal_Inter-Cell_Handover_Commands" float(53),
  "H311O_Outgoing_Internal_Inter-Celll_Handover_Commands_MS_Handov" float(53),
  "H3120N_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H3122G_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312A_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_N" float(53),
  "H312B_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_T" float(53),
  "H312Da_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Db_Failed_Outgoing_Internal_Inter-Cell_Handovers_Reconnecti" float(53),
  "H312Dc_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dd_Failed_Outgoing_Internal_Inter-Cell_Handovers_Abnormal_R" float(53),
  "H312De_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Df_Failed_Outgoing_Internal_Inter-Cell_Handovers_Handover_F" float(53),
  "H312Dg_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dh_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Di_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dj_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dk_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dl_Failed_Outgoing_Internal_Inter-Cell_Handovers_Message_Ty" float(53),
  "H312Dm_Failed_Outgoing_Internal_Inter-Cell_Handovers_Message_Ty" float(53),
  "H312Dn_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Do_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dp_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312Dq_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_" float(53),
  "H312G_Number_of_Failed_Outgoing_Internal_Inter-Cell_Handovers_A" float(53),
  "H313II_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H313IO_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H313OI_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H313OO_Number_of_Successful_Outgoing_Internal_Inter-Cell_Handov" float(53),
  "H370a_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "H370b_Number_of_Outgoing_Internal_Inter-Cell_Handover_Requests_" float(53),
  "AR9303_Average_Number_of_Available_PDCHs" float(53),
  "AR9309_Average_Number_of_GPRS_PDCHs_Activated" float(53),
  "AR9311_Average_Number_of_Occupied_PDCHs" float(53),
  "AR9313_Average_Number_of_PDCHs_Occupied_by_Uplink_TBF" float(53),
  "AR9315_Average_Number_of_PDCHs_Occupied_by_Downlink_TBF" float(53),
  "AR9319_Average_Number_of_Occupied_GPRS_PDCHs" float(53),
  "AR9321_Average_Number_of_Occupied_Static_EGPRS_PDCHs" float(53),
  "AR9323_Average_Number_of_Occupied_Dynamic_EGPRS_PDCHs" float(53),
  "AR9325_Average_Allocated_Seizure_Duration_of_All_Available_PDCH" float(53),
  "AR9327_Average_Number_of_PDCHs_Occupied_by_TBF" float(53),
  "AR9381_Average_Number_of_Available_EGPRS_PDCHs" float(53),
  "AR9383_Average_Number_of_Available_GPRS_PDCHs" float(53),
  "R9301_Sampling_Times_of_PDCH_Measurement" float(53),
  "R9302_Total_Number_of_Sampled_Available_PDCHs" float(53),
  "R9316_Maximum_Number_of_Occupied_PDCHs" float(53),
  "R9343_Number_of_Reclaimed_Dynamic_PDCHs" float(53),
  "R9344_Number_of_Reclaimed_Busy_Dynamic_PDCHs" float(53),
  "R9346_Dynamic_PDCH_Requests_Without_Application_Attempts_Becaus" float(53),
  "R9347_Number_of_Dynamic_PDCH_Requests_Without_Application_Attem" float(53),
  "R9393_Number_Of_PDCH_Application_Attempts" float(53),
  "R9394_Number_of_PDCH_Application_Failures_due_to_no_Convertable" float(53),
  "R9395_Number_of_PDCH_Application_failures_For_CELL_PDCH_Ratio_T" float(53),
  "AS3240_Average_Power_Level_of_MS" float(53),
  "AS3241_Average_Power_Level_of_BTS" float(53),
  "AS325A_Mean_Strength_of_Uplink_Signals" float(53),
  "AS325B_Mean_Strength_of_Downlink_Signals" float(53),
  "AS326A_Mean_Quality_of_Uplink_Signals" float(53),
  "AS326B_Mean_Quality_of_Downlink_Signals" float(53),
  "AS3280_Mean_Distance_Between_MS_and_BTS" float(53),
  "S3230A_Number_of_Power_Control_Increase_Messages_Sent_to_MS" float(53),
  "S3230B_Number_of_Power_Control_Decrease_Messages_Sent_to_MS" float(53),
  "S3231A_Number_of_Power_Control_Increase_Messages_Sent_to_BTS" float(53),
  "S3231B_Number_of_Power_Control_Decrease_Messages_Sent_to_BTS" float(53),
  "S3281_Maximum_Distance_Between_MS_and_BTS" float(53),
  "R3191_Number_of_Power_Deficits" float(53),
  "R3192_Number_of_Handover_Requests_due_to_Power_Deficit" float(53),
  "R3195_Number_of_Handover_Commands_due_to_Power_Deficit" float(53),
  "R3196_Number_of_Successful_Handovers_due_to_Power_Deficit" float(53),
  "R3197_Number_of_Call_Drops_in_the_Handover_due_to_Power_Deficit" float(53),
  "K3003A_Successful_SDCCH_Seizures_Call_Type" float(53),
  "A3340A_Uplink_Point-to-Point_Short_Messages_on_SDCCH" float(53),
  "A3340B_Downlink_Point-to-Point_Short_Messages_on_SDCCH" float(53),
  "AS3101_VAC_Compress_Ratio_of_Cell" float(53),
  "S3101_Number_of_Uplink_Frames_with_FR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S3102_Number_of_Uplink_Frames_with_FR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S3103_Number_of_Uplink_Frames_with_FR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S3104_Number_of_Uplink_Frames_with_FR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S3105_Number_of_Uplink_Frames_with_FR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S3106_Number_of_Uplink_Frames_with_FR_AMR_of_7_95_kbit_s_in_the" float(53),
  "S3107_Number_of_Uplink_Frames_with_FR_AMR_of_10_20_kbit_s_in_th" float(53),
  "S3108_Number_of_Uplink_Frames_with_FR_AMR_of_12_20_kbit_s_in_th" float(53),
  "S3109_Number_of_Uplink_Frames_with_HR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S3110_Number_of_Uplink_Frames_with_HR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S3111_Number_of_Uplink_Frames_with_HR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S3112_Number_of_Uplink_Frames_with_HR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S3113_Number_of_Uplink_Frames_with_HR_AMR_of_7_40_kbit_s_in_the" float(53),
  "M3030A_Call_Drops_on_TCHTA" float(53),
  "M3030B_Call_Drops_on_TCHUplink_Received_Level" float(53),
  "M3030C_Call_Drops_on_TCHDownlink_Received_Level" float(53),
  "M3030D_Call_Drops_on_TCHUplink_and_Downlink_Received_Level" float(53),
  "M3030E_Call_Drops_on_TCHUplink_FER" float(53),
  "M3030F_Call_Drops_on_TCHDownlink_FER" float(53),
  "M3030G_Call_Drops_on_TCHUplink_and_Downlink_FER" float(53),
  "M3030H_Call_Drops_on_TCHUplink_Quality" float(53),
  "M3030I_Call_Drops_on_TCHDownlink_Quality" float(53),
  "M3030J_Call_Drops_on_TCHUplink_and_Downlink_Quality" float(53),
  "M3030K_Call_Drops_on_TCHOther" float(53),
  "M3128A_Number_of_Mute_Times_Traffic_Channel" float(53),
  "M3128_Call_Drops_in_Forced_Handover_After_Mute_Traffic_Channel" float(53),
  "R3139C_Average_Number_of_Idle_TRXs_in_a_Carrier_Pool" float(53),
  "R3139D_Number_of_Successful_TRX_Allocations" float(53),
  "R3139E_Number_of_Failed_TRX_Allocations" float(53),
  "R3139F_Number_of_TRX_Releases" float(53),
  "S3655_Number_of_configured_TRXs_in_a_cell" float(53),
  "S3656_Number_of_available_TRXs_in_a_cell" float(53),
  "L9211_Total_Number_of_Valid_Uplink_EGPRS_MCS1_RLC_Data_Blocks" float(53),
  "L9212_Total_Number_of_Valid_Uplink_EGPRS_MCS2_RLC_Data_Blocks" float(53),
  "L9213_Total_Number_of_Valid_Uplink_EGPRS_MCS3_RLC_Data_Blocks" float(53),
  "L9214_Total_Number_of_Valid_Uplink_EGPRS_MCS4_RLC_Data_Blocks" float(53),
  "L9215_Total_Number_of_Valid_Uplink_EGPRS_MCS5_RLC_Data_Blocks" float(53),
  "L9216_Total_Number_of_Valid_Uplink_EGPRS_MCS6_RLC_Data_Blocks" float(53),
  "L9217_Total_Number_of_Valid_Uplink_EGPRS_MCS7_RLC_Data_Blocks" float(53),
  "L9218_Total_Number_of_Valid_Uplink_EGPRS_MCS8_RLC_Data_Blocks" float(53),
  "L9219_Total_Number_of_Valid_Uplink_EGPRS_MCS9_RLC_Data_Blocks" float(53),
  "TL9232_Average_Throughput_of_Uplink_EGPRS_RLC" float(53),
  "TL9233_Average_Payload_of_Single_Uplink_EGPRS_TBF" float(53),
  "TL9237_Throughput_of_Uplink_EGPRS_RLC_Data_Blocks" float(53),
  "A9201_Number_of_Uplink_EGPRS_TBF_Establishment_Attempts" float(53),
  "A9202_Number_of_Successful_Uplink_EGPRS_TBF_Establishments" float(53),
  "A9203_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_N" float(53),
  "A9204_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_M" float(53),
  "A9205_Number_of_Uplink_EGPRS_TBF_Normal_Releases" float(53),
  "A9206_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_N3101" float(53),
  "A9207_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_N3103" float(53),
  "A9208_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_SUSPE" float(53),
  "A9209_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_FLUSH" float(53),
  "A9210_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_No_Ch" float(53),
  "A9214_Total_Duration_of_Uplink_EGPRS_TBF" float(53),
  "A9216_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_O" float(53),
  "A9217_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_Chann" float(53),
  "A9218_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_Other" float(53),
  "A9235_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_O" float(53),
  "A9236_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_O" float(53),
  "A9237_Number_of_Abnormal_Uplink_EGPRS_TBF_Releases_due_to_CS_Ha" float(53),
  "A9238_Number_of_Abnormal_Uplink_EGPRS_TBF_Releases_due_to_Abis_" float(53),
  "A9239_Number_of_Failed_Uplink_EGPRS_TBF_Establishments_due_to_M" float(53),
  "A9240_Number_of_Successful_Uplink_EGPRS_TBF_Establishments_Over" float(53),
  "A9241_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_N3101" float(53),
  "A9242_Number_of_Uplink_EGPRS_TBF_Abnormal_Releases_due_to_DTM_E" float(53),
  "AA9215_Average_Duration_of_Uplink_EGPRS_TBF" float(53),
  "L9001_Total_Number_of_Uplink_GPRS_RLC_Data_Blocks" float(53),
  "L9002_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS1" float(53),
  "L9003_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS2" float(53),
  "L9004_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS3" float(53),
  "L9005_Total_Number_of_Uplink_RLC_Data_Blocks_Using_CS4" float(53),
  "L9006_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS1" float(53),
  "L9007_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS2" float(53),
  "L9008_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS3" float(53),
  "L9009_Number_of_Valid_Uplink_RLC_Data_Blocks_Using_CS4" float(53),
  "L9016_Number_of_Coding_Scheme_Upgrades_on_Uplink_GPRS_TBF" float(53),
  "L9017_Number_of_Coding_Scheme_Degrades_on_Uplink_GPRS_TBF" float(53),
  "L9018_Number_of_Uplink_GPRS_RLC_Control_Blocks" float(53),
  "L9019_Total_Number_of_Uplink_GPRS_TBFs" float(53),
  "L9020_Total_Duration_of_Uplink_GPRS_TBFs" float(53),
  "L9021_Number_of_Uplink_GPRS_RLC_Dummy_Blocks" float(53),
  "TL9014_Average_Throughput_of_Uplink_GPRS_RLC" float(53),
  "TL9023_Throughput_of_Uplink_GPRS_RLC_Data_Blocks" float(53),
  "A9001_Number_of_Uplink_GPRS_TBF_Establishment_Attempts" float(53),
  "A9002_Number_of_Successful_Uplink_GPRS_TBF_Establishments" float(53),
  "A9003_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_No" float(53),
  "A9004_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_MS" float(53),
  "A9005_Number_of_Uplink_GPRS_TBF_Normal_Releases" float(53),
  "A9006_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_N3101_" float(53),
  "A9007_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_N3103_" float(53),
  "A9008_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_SUSPEN" float(53),
  "A9009_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_FLUSH" float(53),
  "A9010_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_No_Cha" float(53),
  "A9014_Total_Duration_of_Uplink_GPRS_TBF" float(53),
  "A9016_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_Ot" float(53),
  "A9017_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_Channe" float(53),
  "A9018_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_Other_" float(53),
  "A9034_Number_of_Abnormal_Uplink_GPRS_TBF_Releases_Because_of_EG" float(53),
  "A9035_Number_of_Uplink_GPRS_TBF_Movements_Because_of_EGPRS_User" float(53),
  "A9037_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_Ot" float(53),
  "A9038_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_Ot" float(53),
  "A9039_Number_of_Abnormal_Uplink_GPRS_TBF_Releases_due_to_CS_Han" float(53),
  "A9040_Number_of_Abnormal_Uplink_GPRS_TBF_Releases_due_to_Abis_R" float(53),
  "A9041_Number_of_Failed_Uplink_GPRS_TBF_Establishments_due_to_MS" float(53),
  "A9043_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_N3101_" float(53),
  "A904A_Number_of_Uplink_GPRS_TBF_Abnormal_Releases_due_to_DTM_Es" float(53),
  "AA9015_Average_Duration_of_Uplink_GPRS_TBF" float(53),
  "AL9404_Average_Length_of_Uplink_LLC_PDU" float(53),
  "AL9405_Average_LLC_PDU_Bytes_per_Uplink_TBF" float(53),
  "AL9425_Uplink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "AL9426_Uplink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "L9403_Total_Bytes_of_Uplink_LLC_PDUs_Sent" float(53),
  "L9421_Total_Bytes_of_Uplink_GPRS_Users_LLC_PDUs" float(53),
  "L9422_Throughput_of_Uplink_GPRS_Users_LLC_PDU" float(53),
  "L9423_Total_Bytes_of_Uplink_EGPRS_Users_LLC_PDUs" float(53),
  "L9424_Throughput_of_Uplink_EGPRS_Users_LLC_PDU" float(53),
  "L9427_Maximum_Uplink_Throughput_of_GPRS_Users_LLC_PDU" float(53),
  "L9428_Maximum_Uplink_Throughput_of_EGPRS_Users_LLC_PDU" float(53),
  "L9458_Total_Bytes_of_Received_Uplink_GPRS_Information_Messages" float(53),
  "L9569_Total_Bytes_of_Uplink_LLC_PDUs_for_LTE_Capable_MSs" float(53),
  "L9573_Total_Bytes_of_Uplink_LLC_PDUs_for_UMTS_Capable_MSs" float(53),
  "CH303_Successful_Internal_Intra-Cell_Handovers" float(53)
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@Site@FlexAbis
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@Site@FlexAbis";
CREATE TABLE "Hourly"."BSC6900GSM@Site@FlexAbis" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "R2720_Number_of_Dynamic_Resource_Requests_8_kbit_s_CS_Service" float(53),
  "R2721_Number_of_Dynamic_Resource_Requests_16_kbit_s_CS_Service" float(53),
  "R2722_Number_of_Dynamic_Resource_Requests_PS_Main_Link" float(53),
  "R2723_Number_of_Dynamic_Resource_Requests_PS_Sublink" float(53),
  "R2730_Number_of_Failed_Dynamic_Resource_Requests_8_kbit_s_CS_Se" float(53),
  "R2731_Number_of_Failed_Dynamic_Resource_Requests_16_kbit_s_CS_S" float(53),
  "R2732_Number_of_Failed_Dynamic_Resource_Requests_PS_Main_Link" float(53),
  "R2733_Number_of_Failed_Dynamic_Resource_Requests_PS_Sublink" float(53),
  "R2741_Number_of_Available_Flex_Timeslots" float(53),
  "R2742_Number_of_Faulty_Flex_Timeslots" float(53),
  "R276_Number_of_Failed_CS_Connections_Caused_by_Link_Failure" float(53),
  "RR2751_Congestion_Rate_of_Dynamic_Resource_Assignment_8_kbit_s" float(53),
  "RR2752_Congestion_Rate_of_Dynamic_Resource_Assignment_16_kbit_s" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Customized_MR
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Customized_MR";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Customized_MR" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S4501_Number_of_Measurements_of_the_Main_and_Diversity_Levels_i" float(53),
  "S4502_Number_of_Measurements_of_the_Main_Level_in_the_Customize" float(53),
  "S4503_Number_of_Measurements_of_the_Diversity_Level_in_the_Cust" float(53),
  "S4504W_Number_of_the_Measurements_of_the_WBAMR_UL_VQI_Voice_Qua" float(53),
  "S4513AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4513AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4513A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Sma" float(53),
  "S4513B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_S" float(53),
  "S4513E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4513F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4513H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4513_Number_of_Customized_MRs_with_Voice_Quality_Rank_Smaller_" float(53),
  "S4514AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4514AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4514A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4514B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4514E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4514F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4514H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4514_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4515AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4515AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4515A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4515B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4515E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4515F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4515H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4515_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4516AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4516AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4516A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4516B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4516E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4516F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4516H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4516_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4517AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4517AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4517A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4517B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4517E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4517F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4517H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4517_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4518AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4518AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4518A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4518B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4518E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4518F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4518H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4518_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4519AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4519AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4519A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4519B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4519E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4519F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4519H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4519_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4520AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4520AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4520A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4520B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4520E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4520F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4520H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4520_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4521AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4521AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4521A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4521B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4521E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4521F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4521H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4521_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4522AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4522AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4522A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4522B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4522E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4522F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4522H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4522_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4523AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4523AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4523A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4523B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4523E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4523F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4523H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4523_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4524_Number_of_Uplink_Frames_with_FR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S4525_Number_of_Downlink_Frames_with_FR_AMR_of_4_75_kbit_s_in_t" float(53),
  "S4526_Number_of_Uplink_Frames_with_FR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S4527_Number_of_Downlink_Frames_with_FR_AMR_of_5_15_kbit_s_in_t" float(53),
  "S4528_Number_of_Uplink_Frames_with_FR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S4529_Number_of_Downlink_Frames_with_FR_AMR_of_5_90_kbit_s_in_t" float(53),
  "S4530_Number_of_Uplink_Frames_with_FR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S4531_Number_of_Downlink_Frames_with_FR_AMR_of_6_70_kbit_s_in_t" float(53),
  "S4532_Number_of_Uplink_Frames_with_FR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S4533_Number_of_Downlink_Frames_with_FR_AMR_of_7_40_kbit_s_in_t" float(53),
  "S4534A_Number_of_Uplink_Frames_with_HR_AMR_of_7_95_kbit_s_in_th" float(53),
  "S4534_Number_of_Uplink_Frames_with_FR_AMR_of_7_95_kbit_s_in_the" float(53),
  "S4535A_Number_of_Downlink_Frames_with_HR_AMR_of_7_95_kbit_s_in_" float(53),
  "S4535_Number_of_Downlink_Frames_with_FR_AMR_of_7_95_kbit_s_in_t" float(53),
  "S4536_Number_of_Uplink_Frames_with_FR_AMR_of_10_2_kbit_s_in_the" float(53),
  "S4537_Number_of_Downlink_Frames_with_FR_AMR_of_10_2_kbit_s_in_t" float(53),
  "S4538_Number_of_Uplink_Frames_with_FR_AMR_of_12_2_kbit_s_in_the" float(53),
  "S4539_Number_of_Downlink_Frames_with_FR_AMR_of_12_2_kbit_s_in_t" float(53),
  "S4540_Number_of_Uplink_Frames_with_HR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S4541_Number_of_Downlink_Frames_with_HR_AMR_of_4_75_kbit_s_in_t" float(53),
  "S4542_Number_of_Uplink_Frames_with_HR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S4543_Number_of_Downlink_Frames_with_HR_AMR_of_5_15_kbit_s_in_t" float(53),
  "S4544_Number_of_Uplink_Frames_with_HR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S4545_Number_of_Downlink_Frames_with_HR_AMR_of_5_90_kbit_s_in_t" float(53),
  "S4546_Number_of_Uplink_Frames_with_HR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S4547_Number_of_Downlink_Frames_with_HR_AMR_of_6_70_kbit_s_in_t" float(53),
  "S4548_Number_of_Uplink_Frames_with_HR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S4549_Number_of_Downlink_Frames_with_HR_AMR_of_7_40_kbit_s_in_t" float(53),
  "S4550W_Number_of_Uplink_Frames_with_WBAMR_of_6_60_kbit_s_in_the" float(53),
  "S4550_Number_of_Uplink_Frames_Among_the_FR_Frames_in_the_Custom" float(53),
  "S4551W_Number_of_Downlink_Frames_with_WBAMR_of_6_60_kbit_s_in_t" float(53),
  "S4551_Number_of_Downlink_Frames_Among_the_FR_Frames_in_the_Cust" float(53),
  "S4552W_Number_of_Uplink_Frames_with_WBAMR_of_8_85_kbit_s_in_the" float(53),
  "S4552_Number_of_Uplink_Frames_Among_the_EFR_Frames_in_the_Custo" float(53),
  "S4553W_Number_of_Downlink_Frames_with_WBAMR_of_8_85_kbit_s_in_t" float(53),
  "S4553_Number_of_Downlink_Frames_Among_the_EFR_Frames_in_the_Cus" float(53),
  "S4554W_Number_of_Uplink_Frames_with_WBAMR_of_12_65_kbit_s_in_th" float(53),
  "S4554_Number_of_Uplink_Frames_Among_the_HR_Frames_in_the_Custom" float(53),
  "S4555W_Number_of_Downlink_Frames_with_WBAMR_of_12_65_kbit_s_in_" float(53),
  "S4555_Number_of_Downlink_Frames_Among_the_HR_Frames_in_the_Cust" float(53),
  "S4556_Average_Main_Level_in_the_Customized_MR" float(53),
  "S4557_Average_Diversity_Level_in_the_Customized_MR" float(53),
  "S4558A_Average_AMR_FR_VQIVoice_Quality_Index_in_the_Customized_" float(53),
  "S4558E_Average_Measurement_Value_of_the_EFR_UL_VQI_Voice_Qualit" float(53),
  "S4558W_Average_Measurement_Value_of_the_WBAMR_UL_VQI_Voice_Qual" float(53),
  "S4558_Average_Measurement_Value_of_the_FR_UL_VQI_Voice_Quality_" float(53),
  "S4559A_Average_AMR_HR_VQIVoice_Quality_Index_in_the_Customized_" float(53),
  "S4559_Average_Measurement_Value_of_the_HR_UL_VQI_Voice_Quality_" float(53),
  "S4560_Average_Uplink_Power_in_the_Customized_MR" float(53),
  "S4561_Average_Downlink_Power_in_the_Customized_MR" float(53),
  "S4562A_Average_Frame_Erasion_Rate_of_the_AMR_FR_in_the_Customiz" float(53),
  "S4562B_Average_Frame_Erasion_Rate_of_the_WBAMR_FR_in_the_Custom" float(53),
  "S4562_Average_Frame_Erasion_Rate_of_the_FR_in_the_Customized_MR" float(53),
  "S4565A_Average_Frame_Erasion_Rate_of_the_AMR_HR_in_the_Customiz" float(53),
  "S4565_Average_Frame_Erasion_Rate_of_the_HR_in_the_Customized_MR" float(53),
  "S4568_Number_of_Measurements_of_the_Level_in_the_Customized_MR_" float(53),
  "S4569_Number_of_Measurements_of_the_Level_in_the_Customized_MR_" float(53),
  "S45710_Average_Level_in_the_Customized_MR_Channel_3" float(53),
  "S45711_Average_Level_in_the_Customized_MR_Channel_4" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Interference_Band
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Interference_Band";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Interference_Band" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AS4200A_Mean_Number_of_SDCCHs_in_Interference_Band_1" float(53),
  "AS4200B_Mean_Number_of_SDCCHs_in_Interference_Band_2" float(53),
  "AS4200C_Mean_Number_of_SDCCHs_in_Interference_Band_3" float(53),
  "AS4200D_Mean_Number_of_SDCCHs_in_Interference_Band_4" float(53),
  "AS4200E_Mean_Number_of_SDCCHs_in_Interference_Band_5" float(53),
  "AS4207A_Mean_Number_of_TCHFs_in_Interference_Band_1" float(53),
  "AS4207B_Mean_Number_of_TCHFs_in_Interference_Band_2" float(53),
  "AS4207C_Mean_Number_of_TCHFs_in_Interference_Band_3" float(53),
  "AS4207D_Mean_Number_of_TCHFs_in_Interference_Band_4" float(53),
  "AS4207E_Mean_Number_of_TCHFs_in_Interference_Band_5" float(53),
  "AS4208A_Mean_Number_of_TCHHs_in_Interference_Band_1" float(53),
  "AS4208B_Mean_Number_of_TCHHs_in_Interference_Band_2" float(53),
  "AS4208C_Mean_Number_of_TCHHs_in_Interference_Band_3" float(53),
  "AS4208D_Mean_Number_of_TCHHs_in_Interference_Band_4" float(53),
  "AS4208E_Mean_Number_of_TCHHs_in_Interference_Band_5" float(53),
  "S4210A_Uplink_Interference_Indication_Messages_SDCCH" float(53),
  "S4210B_Downlink_Interference_Indication_Messages_SDCCH" float(53),
  "S4219A_Uplink_Interference_Indication_Messages_TCH" float(53),
  "S4219B_Downlink_Interference_Indication_Messages_TCH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@MR_Quantity_based_on_TA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@MR_Quantity_based_on_TA";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@MR_Quantity_based_on_TA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S4400A_Number_of_MRs_TA_0" float(53),
  "S4401A_Number_of_MRs_TA_1" float(53),
  "S4402A_Number_of_MRs_TA_2" float(53),
  "S4403A_Number_of_MRs_TA_3" float(53),
  "S4404A_Number_of_MRs_TA_4" float(53),
  "S4405A_Number_of_MRs_TA_5" float(53),
  "S4406A_Number_of_MRs_TA_6" float(53),
  "S4407A_Number_of_MRs_TA_7" float(53),
  "S4408A_Number_of_MRs_TA_8" float(53),
  "S4409A_Number_of_MRs_TA_9" float(53),
  "S4410A_Number_of_MRs_TA_10" float(53),
  "S4411A_Number_of_MRs_TA_11" float(53),
  "S4412A_Number_of_MRs_TA_12" float(53),
  "S4413A_Number_of_MRs_TA_13" float(53),
  "S4414A_Number_of_MRs_TA_14" float(53),
  "S4415A_Number_of_MRs_TA_15" float(53),
  "S4416A_Number_of_MRs_TA_16" float(53),
  "S4417A_Number_of_MRs_TA_17" float(53),
  "S4418A_Number_of_MRs_TA_18" float(53),
  "S4419A_Number_of_MRs_TA_19" float(53),
  "S4420A_Number_of_MRs_TA_20" float(53),
  "S4421A_Number_of_MRs_TA_21" float(53),
  "S4422A_Number_of_MRs_TA_22" float(53),
  "S4423A_Number_of_MRs_TA_23" float(53),
  "S4424A_Number_of_MRs_TA_24" float(53),
  "S4425A_Number_of_MRs_TA_25" float(53),
  "S4426A_Number_of_MRs_TA_26" float(53),
  "S4427A_Number_of_MRs_TA_27" float(53),
  "S4428A_Number_of_MRs_TA_28" float(53),
  "S4429A_Number_of_MRs_TA_29" float(53),
  "S4430A_Number_of_MRs_TA_30_or_31" float(53),
  "S4432A_Number_of_MRs_TA_32_or_33" float(53),
  "S4434A_Number_of_MRs_TA_34_or_35" float(53),
  "S4436A_Number_of_MRs_TA_36_or_37" float(53),
  "S4438A_Number_of_MRs_TA_38_or_39" float(53),
  "S4440A_Number_of_MRs_TA_40_to_44" float(53),
  "S4445A_Number_of_MRs_TA_45_to_49" float(53),
  "S4450A_Number_of_MRs_TA_50_to_54" float(53),
  "S4455A_Number_of_MRs_TA_55_to_63" float(53),
  "S4463A_Number_of_MRs_TA_greater_than_63" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Radio_Link_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AS3337D_Mean_Downlink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "AS4300D_Mean_Uplink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4307D_Mean_Uplink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "AS4308D_Mean_Uplink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "AS4310D_Mean_Uplink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4317D_Mean_Uplink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "AS4318D_Mean_Uplink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "AS4320D_Mean_Downlink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4327D_Mean_Downlink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "AS4328D_Mean_Downlink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "AS4330D_Mean_Downlink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4338D_Mean_Downlink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "AS4340D_Mean_TA_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4347D_Mean_TA_during_Radio_Link_Failure_TCHF" float(53),
  "AS4348D_Mean_TA_during_Radio_Link_Failure_TCHH" float(53),
  "S4300D_Uplink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "S4307D_Uplink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "S4308D_Uplink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "S4310D_Uplink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "S4317D_Uplink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "S4318D_Uplink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "S4320D_Downlink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "S4327D_Downlink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "S4328D_Downlink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "S4330D_Downlink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "S4337D_Downlink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "S4338D_Downlink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "S4340D_TA_during_Radio_Link_Failure_SDCCH" float(53),
  "S4347D_TA_during_Radio_Link_Failure_TCHF" float(53),
  "S4348D_TA_during_Radio_Link_Failure_TCHH" float(53),
  "S4350D_Radio_Link_Failures_SDCCH" float(53),
  "S4357D_Radio_Link_Failures_TCHF" float(53),
  "S4358D_Radio_Link_Failures_TCHH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S4400B_Radio_Link_Failures_TA_0" float(53),
  "S4401B_Radio_Link_Failures_TA_1" float(53),
  "S4402B_Radio_Link_Failures_TA_2" float(53),
  "S4403B_Radio_Link_Failures_TA_3" float(53),
  "S4404B_Radio_Link_Failures_TA_4" float(53),
  "S4405B_Radio_Link_Failures_TA_5" float(53),
  "S4406B_Radio_Link_Failures_TA_6" float(53),
  "S4407B_Radio_Link_Failures_TA_7" float(53),
  "S4408B_Radio_Link_Failures_TA_8" float(53),
  "S4409B_Radio_Link_Failures_TA_9" float(53),
  "S4410B_Radio_Link_Failures_TA_10" float(53),
  "S4411B_Radio_Link_Failures_TA_11" float(53),
  "S4412B_Radio_Link_Failures_TA_12" float(53),
  "S4413B_Radio_Link_Failures_TA_13" float(53),
  "S4414B_Radio_Link_Failures_TA_14" float(53),
  "S4415B_Radio_Link_Failures_TA_15" float(53),
  "S4416B_Radio_Link_Failures_TA_16" float(53),
  "S4417B_Radio_Link_Failures_TA_17" float(53),
  "S4418B_Radio_Link_Failures_TA_18" float(53),
  "S4419B_Radio_Link_Failures_TA_19" float(53),
  "S4420B_Radio_Link_Failures_TA_20" float(53),
  "S4421B_Radio_Link_Failures_TA_21" float(53),
  "S4422B_Radio_Link_Failures_TA_22" float(53),
  "S4423B_Radio_Link_Failures_TA_23" float(53),
  "S4424B_Radio_Link_Failures_TA_24" float(53),
  "S4425B_Radio_Link_Failures_TA_25" float(53),
  "S4426B_Radio_Link_Failures_TA_26" float(53),
  "S4427B_Radio_Link_Failures_TA_27" float(53),
  "S4428B_Radio_Link_Failures_TA_28" float(53),
  "S4429B_Radio_Link_Failures_TA_29" float(53),
  "S4430B_Radio_Link_Failures_TA_30_or_31" float(53),
  "S4432B_Radio_Link_Failures_TA_32_or_33" float(53),
  "S4434B_Radio_Link_Failures_TA_34_or_35" float(53),
  "S4436B_Radio_Link_Failures_TA_36_or_37" float(53),
  "S4438B_Radio_Link_Failures_TA_38_or_39" float(53),
  "S4440B_Radio_Link_Failures_TA_40_to_44" float(53),
  "S4445B_Radio_Link_Failures_TA_45_to_49" float(53),
  "S4450B_Radio_Link_Failures_TA_50_to_54" float(53),
  "S4455B_Radio_Link_Failures_TA_55_to_63" float(53),
  "S4463B_Radio_Link_Failures_TA_greater_than_63" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Receive_Quality
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Receive_Quality";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Receive_Quality" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "CS410A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_0" float(53),
  "CS410B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS410C_Number_of_MRs_on_Uplink_TCHH_Mean_Rank_of_Receive_Qualit" float(53),
  "CS410D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS411A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_1" float(53),
  "CS411B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS411C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_1" float(53),
  "CS411D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS412A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_2" float(53),
  "CS412B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS412C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_2" float(53),
  "CS412D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS413A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_3" float(53),
  "CS413B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS413C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_3" float(53),
  "CS413D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS414A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_4" float(53),
  "CS414B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS414C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_4" float(53),
  "CS414D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS415A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_5" float(53),
  "CS415B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS415C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_5" float(53),
  "CS415D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS416A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_6" float(53),
  "CS416B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS416C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_6" float(53),
  "CS416D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS417A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_7" float(53),
  "CS417B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS417C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_7" float(53),
  "CS417D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Receive_Quality_Distribution
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Receive_Quality_Distribution";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Receive_Quality_Distribution" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "NCS412A_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_0" float(53),
  "NCS412B_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_1" float(53),
  "NCS412C_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_2" float(53),
  "NCS412D_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_3" float(53),
  "NCS412E_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_4" float(53),
  "NCS412F_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_5" float(53),
  "NCS412G_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_6" float(53),
  "NCS412H_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_7" float(53),
  "NCS413A_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_0" float(53),
  "NCS413B_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_1" float(53),
  "NCS413C_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_2" float(53),
  "NCS413D_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_3" float(53),
  "NCS413E_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_4" float(53),
  "NCS413F_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_5" float(53),
  "NCS413G_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_6" float(53),
  "NCS413H_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_7" float(53),
  "NCS414A_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_0" float(53),
  "NCS414B_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_1" float(53),
  "NCS414C_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_2" float(53),
  "NCS414D_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_3" float(53),
  "NCS414E_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_4" float(53),
  "NCS414F_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_5" float(53),
  "NCS414G_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_6" float(53),
  "NCS414H_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_7" float(53),
  "NCS415A_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_0" float(53),
  "NCS415B_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_1" float(53),
  "NCS415C_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_2" float(53),
  "NCS415D_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_3" float(53),
  "NCS415E_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_4" float(53),
  "NCS415F_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_5" float(53),
  "NCS415G_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_6" float(53),
  "NCS415H_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_7" float(53),
  "NCS415I_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415J_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415K_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415L_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415M_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415N_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415O_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415P_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415Q_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415R_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415S_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415T_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415U_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415V_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415W_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415X_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@RQI_based_on_TA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@RQI_based_on_TA";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@RQI_based_on_TA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "AS4400D_Mean_RQI_TA_0" float(53),
  "AS4401D_Mean_RQI_TA_1" float(53),
  "AS4402D_Mean_RQI_TA_2" float(53),
  "AS4403D_Mean_RQI_TA_3" float(53),
  "AS4404D_Mean_RQI_TA_4" float(53),
  "AS4405D_Mean_RQI_TA_5" float(53),
  "AS4406D_Mean_RQI_TA_6" float(53),
  "AS4407D_Mean_RQI_TA_7" float(53),
  "AS4408D_Mean_RQI_TA_8" float(53),
  "AS4409D_Mean_RQI_TA_9" float(53),
  "AS4410D_Mean_RQI_TA_10" float(53),
  "AS4411D_Mean_RQI_TA_11" float(53),
  "AS4412D_Mean_RQI_TA_12" float(53),
  "AS4413D_Mean_RQI_TA_13" float(53),
  "AS4414D_Mean_RQI_TA_14" float(53),
  "AS4415D_Mean_RQI_TA_15" float(53),
  "AS4416D_Mean_RQI_TA_16" float(53),
  "AS4417D_Mean_RQI_TA_17" float(53),
  "AS4418D_Mean_RQI_TA_18" float(53),
  "AS4419D_Mean_RQI_TA_19" float(53),
  "AS4420D_Mean_RQI_TA_20" float(53),
  "AS4421D_Mean_RQI_TA_21" float(53),
  "AS4422D_Mean_RQI_TA_22" float(53),
  "AS4423D_Mean_RQI_TA_23" float(53),
  "AS4424D_Mean_RQI_TA_24" float(53),
  "AS4425D_Mean_RQI_TA_25" float(53),
  "AS4426D_Mean_RQI_TA_26" float(53),
  "AS4427D_Mean_RQI_TA_27" float(53),
  "AS4428D_Mean_RQI_TA_28" float(53),
  "AS4429D_Mean_RQI_TA_29" float(53),
  "AS4430D_Mean_RQI_TA_30_or_31" float(53),
  "AS4432D_Mean_RQI_TA_32_or_33" float(53),
  "AS4434D_Mean_RQI_TA_34_or_35" float(53),
  "AS4436D_Mean_RQI_TA_36_or_37" float(53),
  "AS4438D_Mean_RQI_TA_38_or_39" float(53),
  "AS4440D_Mean_RQI_TA_40_to_44" float(53),
  "AS4445D_Mean_RQI_TA_45_to_49" float(53),
  "AS4450D_Mean_RQI_TA_50_to_54" float(53),
  "AS4455D_Mean_RQI_TA_55_to_63" float(53),
  "AS4463D_Mean_RQI_TA_greater_than_63" float(53),
  "S4400C_MRs_with_RQI_TA_0" float(53),
  "S4401C_MRs_with_RQI_TA_1" float(53),
  "S4402C_MRs_with_RQI_TA_2" float(53),
  "S4403C_MRs_with_RQI_TA_3" float(53),
  "S4404C_MRs_with_RQI_TA_4" float(53),
  "S4405C_MRs_with_RQI_TA_5" float(53),
  "S4406C_MRs_with_RQI_TA_6" float(53),
  "S4407C_MRs_with_RQI_TA_7" float(53),
  "S4408C_MRs_with_RQI_TA_8" float(53),
  "S4409C_MRs_with_RQI_TA_9" float(53),
  "S4410C_MRs_with_RQI_TA_10" float(53),
  "S4411C_MRs_with_RQI_TA_11" float(53),
  "S4412C_MRs_with_RQI_TA_12" float(53),
  "S4413C_MRs_with_RQI_TA_13" float(53),
  "S4414C_MRs_with_RQI_TA_14" float(53),
  "S4415C_MRs_with_RQI_TA_15" float(53),
  "S4416C_MRs_with_RQI_TA_16" float(53),
  "S4417C_MRs_with_RQI_TA_17" float(53),
  "S4418C_MRs_with_RQI_TA_18" float(53),
  "S4419C_MRs_with_RQI_TA_19" float(53),
  "S4420C_MRs_with_RQI_TA_20" float(53),
  "S4421C_MRs_with_RQI_TA_21" float(53),
  "S4422C_MRs_with_RQI_TA_22" float(53),
  "S4423C_MRs_with_RQI_TA_23" float(53),
  "S4424C_MRs_with_RQI_TA_24" float(53),
  "S4425C_MRs_with_RQI_TA_25" float(53),
  "S4426C_MRs_with_RQI_TA_26" float(53),
  "S4427C_MRs_with_RQI_TA_27" float(53),
  "S4428C_MRs_with_RQI_TA_28" float(53),
  "S4429C_MRs_with_RQI_TA_29" float(53),
  "S4430C_MRs_with_RQI_TA_30_or_31" float(53),
  "S4432C_MRs_with_RQI_TA_32_or_33" float(53),
  "S4434C_MRs_with_RQI_TA_34_or_35" float(53),
  "S4436C_MRs_with_RQI_TA_36_or_37" float(53),
  "S4438C_MRs_with_RQI_TA_38_or_39" float(53),
  "S4440C_MRs_with_RQI_TA_40_to_44" float(53),
  "S4445C_MRs_with_RQI_TA_45_to_49" float(53),
  "S4450C_MRs_with_RQI_TA_50_to_54" float(53),
  "S4455C_MRs_with_RQI_TA_55_to_63" float(53),
  "S4463C_MRs_with_RQI_TA_greater_than_63" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@RQI_Distribution
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@RQI_Distribution";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@RQI_Distribution" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S4400E_Number_of_Measurement_Reports_RQI_0_to_1" float(53),
  "S4401E_Number_of_Measurement_Reports_RQI_1_to_2" float(53),
  "S4402E_Number_of_Measurement_Reports_RQI_2_to_3" float(53),
  "S4403E_Number_of_Measurement_Reports_RQI_3_to_4" float(53),
  "S4404E_Number_of_Measurement_Reports_RQI_4_to_5" float(53),
  "S4405E_Number_of_Measurement_Reports_RQI_5_to_6" float(53),
  "S4406E_Number_of_Measurement_Reports_RQI_6_to_7" float(53),
  "S4407E_Number_of_Measurement_Reports_RQI_7_to_8" float(53),
  "S4408E_Number_of_Measurement_Reports_RQI_8_to_9" float(53),
  "S4409E_Number_of_Measurement_Reports_RQI_9_to_10" float(53),
  "S4410E_Number_of_Measurement_Reports_RQI_10_to_11" float(53),
  "S4411E_Number_of_Measurement_Reports_RQI_11_to_12" float(53),
  "S4412E_Number_of_Measurement_Reports_RQI_12_to_13" float(53),
  "S4413E_Number_of_Measurement_Reports_RQI_13_to_14" float(53),
  "S4414E_Number_of_Measurement_Reports_RQI_14_to_15" float(53),
  "S4415E_Number_of_Measurement_Reports_RQI_15_to_25" float(53),
  "S4416E_Number_of_Measurement_Reports_RQI_25_to_35" float(53),
  "S4417E_Number_of_Measurement_Reports_RQI_35_to_45" float(53),
  "S4418E_Number_of_Measurement_Reports_RQI_45_to_55" float(53),
  "S4419E_Number_of_Measurement_Reports_RQI_greater_than_55" float(53),
  "S4440E_Number_of_Measurement_Reports_with_RQI" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@TCHF_Receive_Level
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@TCHF_Receive_Level";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@TCHF_Receive_Level" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S4100A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4100B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4101A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4101B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4102A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4102B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4103A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4103B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4104A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4104B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4105A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4105B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4106A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4106B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4107A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4107B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4110A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4110B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4111A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4111B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4112A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4112B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4113A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4113B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4114A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4114B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4115A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4115B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4116A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4116B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4117A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4117B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4120A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4120B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4121A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4121B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4122A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4122B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4123A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4123B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4124A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4124B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4125A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4125B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4126A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4126B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4127A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4127B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4130A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4130B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4131A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4131B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4132A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4132B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4133A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4133B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4134A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4134B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4135A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4135B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4136A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4136B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4137A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4137B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4140A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4140B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4141A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4141B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4142A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4142B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4143A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4143B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4144A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4144B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4145A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4145B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4146A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4146B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4147A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4147B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4150A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4150B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4151A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4151B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4152A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4152B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4153A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4153B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4154A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4154B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4155A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4155B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4156A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4156B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4157A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4157B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4160A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4160B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4161A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4161B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4162A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4162B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4163A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4163B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4164A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4164B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4165A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4165B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4166A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4166B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4167A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4167B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4170A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4170B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4171A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4171B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4172A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4172B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4173A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4173B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4174A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4174B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4175A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4175B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4176A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4176B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4177A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4177B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@TCHH_Receive_Level
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@TCHH_Receive_Level";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@TCHH_Receive_Level" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S4100C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4100D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4101C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4101D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4102C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4102D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4103C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4103D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4104C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4104D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4105C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4105D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4106C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4106D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4107C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4107D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4110C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4110D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4111C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4111D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4112C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4112D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4113C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4113D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4114C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4114D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4115C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4115D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4116C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4116D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4117C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4117D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4120C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4120D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4121C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4121D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4122C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4122D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4123C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4123D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4124C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4124D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4125C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4125D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4126C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4126D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4127C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4127D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4130C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4130D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4131C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4131D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4132C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4132D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4133C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4133D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4134C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4134D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4135C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4135D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4136C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4136D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4137C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4137D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4140C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4140D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4141C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4141D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4142C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4142D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4143C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4143D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4144C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4144D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4145C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4145D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4146C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4146D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4147C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4147D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4150C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4150D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4151C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4151D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4152C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4152D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4153C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4153D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4154C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4154D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4155C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4155D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4156C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4156D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4157C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4157D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4160C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4160D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4161C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4161D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4162C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4162D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4163C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4163D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4164C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4164D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4165C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4165D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4166C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4166D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4167C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4167D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4170C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4170D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4171C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4171D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4172C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4172D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4173C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4173D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4174C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4174D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4175C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4175D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4176C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4176D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4177C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4177D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@TRX_Status
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@TRX_Status";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@TRX_Status" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "R473_TRX_Out-of-Service_Duration" float(53),
  "R476_The_total_BURST_count_cut_0_5dB_power" float(53),
  "R477_The_total_BURST_count_cut_1_0dB_power" float(53),
  "R478_The_total_BURST_count_cut_1_5dB_power" float(53),
  "R479_The_total_BURST_count_cut_2_0dB_power" float(53),
  "R483_The_total_BURST_count_cut_2_5dB_power" float(53),
  "R484_The_total_BURST_count_cut_3_0dB_and_above_power" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@Uplink-and-Downlink_Balance
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@Uplink-and-Downlink_Balance";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@Uplink-and-Downlink_Balance" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "S462A_Number_of_MRs_Uplink-and-Downlink_Balance_Level_1" float(53),
  "S462B_Number_of_MRs_Uplink-and-Downlink_Balance_Level_2" float(53),
  "S462C_Number_of_MRs_Uplink-and-Downlink_Balance_Level_3" float(53),
  "S462D_Number_of_MRs_Uplink-and-Downlink_Balance_Level_4" float(53),
  "S462E_Number_of_MRs_Uplink-and-Downlink_Balance_Level_5" float(53),
  "S462F_Number_of_MRs_Uplink-and-Downlink_Balance_Level_6" float(53),
  "S462G_Number_of_MRs_Uplink-and-Downlink_Balance_Level_7" float(53),
  "S462H_Number_of_MRs_Uplink-and-Downlink_Balance_Level_8" float(53),
  "S462I_Number_of_MRs_Uplink-and-Downlink_Balance_Level_9" float(53),
  "S462J_Number_of_MRs_Uplink-and-Downlink_Balance_Level_10" float(53),
  "S462K_Number_of_MRs_Uplink-and-Downlink_Balance_Level_11" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900GSM@TRX@User_Defined_Table1
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900GSM@TRX@User_Defined_Table1";
CREATE TABLE "Hourly"."BSC6900GSM@TRX@User_Defined_Table1" (
  "S4518E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4518B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4518A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4518AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4518AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4517_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "Result Time" timestamp(6) NOT NULL,
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "S4501_Number_of_Measurements_of_the_Main_and_Diversity_Levels_i" float(53),
  "S4502_Number_of_Measurements_of_the_Main_Level_in_the_Customize" float(53),
  "S4503_Number_of_Measurements_of_the_Diversity_Level_in_the_Cust" float(53),
  "S4504W_Number_of_the_Measurements_of_the_WBAMR_UL_VQI_Voice_Qua" float(53),
  "S4513AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4513AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4513A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Sma" float(53),
  "S4513B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_S" float(53),
  "S4513E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4513F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4513H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4513_Number_of_Customized_MRs_with_Voice_Quality_Rank_Smaller_" float(53),
  "S4514AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4514AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4514A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4514B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4514E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4514F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4514H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4514_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4515AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4515AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4515A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4515B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4515E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4515F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4515H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4515_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4516AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4516AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4516A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4516B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4516E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4516F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4516H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4516_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4517AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4517AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4517A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4517B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4517E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4517F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4517H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4518F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4518H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4518_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4519AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4519AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4519A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4519B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4519E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4519F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4519H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4519_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4520AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4520AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4520A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4520B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4520E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4520F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4520H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4520_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4521AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4521AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4521A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4521B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4521E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4521F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4521H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4521_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4522AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4522AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4522A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4522B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4522E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4522F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4522H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4522_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4523AF_Number_of_the_Customized_MRs_with_AMR_FR_UL_Voice_Quali" float(53),
  "S4523AH_Number_of_the_Customized_MRs_with_AMR_HR_UL_Voice_Quali" float(53),
  "S4523A_Number_of_Customized_MRs_with_AMR_Voice_Quality_Rank_Gre" float(53),
  "S4523B_Number_of_Customized_MRs_with_WBAMR_Voice_Quality_Rank_G" float(53),
  "S4523E_Number_of_the_Customized_MRs_with_EFR_UL_Voice_Quality_B" float(53),
  "S4523F_Number_of_the_Customized_MRs_with_FR_UL_Voice_Quality_Be" float(53),
  "S4523H_Number_of_the_Customized_MRs_with_HR_UL_Voice_Quality_Be" float(53),
  "S4523_Number_of_Customized_MRs_with_Voice_Quality_Rank_Greater_" float(53),
  "S4524_Number_of_Uplink_Frames_with_FR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S4525_Number_of_Downlink_Frames_with_FR_AMR_of_4_75_kbit_s_in_t" float(53),
  "S4526_Number_of_Uplink_Frames_with_FR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S4527_Number_of_Downlink_Frames_with_FR_AMR_of_5_15_kbit_s_in_t" float(53),
  "S4528_Number_of_Uplink_Frames_with_FR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S4529_Number_of_Downlink_Frames_with_FR_AMR_of_5_90_kbit_s_in_t" float(53),
  "S4530_Number_of_Uplink_Frames_with_FR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S4531_Number_of_Downlink_Frames_with_FR_AMR_of_6_70_kbit_s_in_t" float(53),
  "S4532_Number_of_Uplink_Frames_with_FR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S4533_Number_of_Downlink_Frames_with_FR_AMR_of_7_40_kbit_s_in_t" float(53),
  "S4534A_Number_of_Uplink_Frames_with_HR_AMR_of_7_95_kbit_s_in_th" float(53),
  "S4534_Number_of_Uplink_Frames_with_FR_AMR_of_7_95_kbit_s_in_the" float(53),
  "S4535A_Number_of_Downlink_Frames_with_HR_AMR_of_7_95_kbit_s_in_" float(53),
  "S4535_Number_of_Downlink_Frames_with_FR_AMR_of_7_95_kbit_s_in_t" float(53),
  "S4536_Number_of_Uplink_Frames_with_FR_AMR_of_10_2_kbit_s_in_the" float(53),
  "S4537_Number_of_Downlink_Frames_with_FR_AMR_of_10_2_kbit_s_in_t" float(53),
  "S4538_Number_of_Uplink_Frames_with_FR_AMR_of_12_2_kbit_s_in_the" float(53),
  "S4539_Number_of_Downlink_Frames_with_FR_AMR_of_12_2_kbit_s_in_t" float(53),
  "S4540_Number_of_Uplink_Frames_with_HR_AMR_of_4_75_kbit_s_in_the" float(53),
  "S4541_Number_of_Downlink_Frames_with_HR_AMR_of_4_75_kbit_s_in_t" float(53),
  "S4542_Number_of_Uplink_Frames_with_HR_AMR_of_5_15_kbit_s_in_the" float(53),
  "S4543_Number_of_Downlink_Frames_with_HR_AMR_of_5_15_kbit_s_in_t" float(53),
  "S4544_Number_of_Uplink_Frames_with_HR_AMR_of_5_90_kbit_s_in_the" float(53),
  "S4545_Number_of_Downlink_Frames_with_HR_AMR_of_5_90_kbit_s_in_t" float(53),
  "S4546_Number_of_Uplink_Frames_with_HR_AMR_of_6_70_kbit_s_in_the" float(53),
  "S4547_Number_of_Downlink_Frames_with_HR_AMR_of_6_70_kbit_s_in_t" float(53),
  "S4548_Number_of_Uplink_Frames_with_HR_AMR_of_7_40_kbit_s_in_the" float(53),
  "S4549_Number_of_Downlink_Frames_with_HR_AMR_of_7_40_kbit_s_in_t" float(53),
  "S4550W_Number_of_Uplink_Frames_with_WBAMR_of_6_60_kbit_s_in_the" float(53),
  "S4550_Number_of_Uplink_Frames_Among_the_FR_Frames_in_the_Custom" float(53),
  "S4551W_Number_of_Downlink_Frames_with_WBAMR_of_6_60_kbit_s_in_t" float(53),
  "S4551_Number_of_Downlink_Frames_Among_the_FR_Frames_in_the_Cust" float(53),
  "S4552W_Number_of_Uplink_Frames_with_WBAMR_of_8_85_kbit_s_in_the" float(53),
  "S4552_Number_of_Uplink_Frames_Among_the_EFR_Frames_in_the_Custo" float(53),
  "S4553W_Number_of_Downlink_Frames_with_WBAMR_of_8_85_kbit_s_in_t" float(53),
  "S4553_Number_of_Downlink_Frames_Among_the_EFR_Frames_in_the_Cus" float(53),
  "S4554W_Number_of_Uplink_Frames_with_WBAMR_of_12_65_kbit_s_in_th" float(53),
  "S4554_Number_of_Uplink_Frames_Among_the_HR_Frames_in_the_Custom" float(53),
  "S4555W_Number_of_Downlink_Frames_with_WBAMR_of_12_65_kbit_s_in_" float(53),
  "S4555_Number_of_Downlink_Frames_Among_the_HR_Frames_in_the_Cust" float(53),
  "S4556_Average_Main_Level_in_the_Customized_MR" float(53),
  "S4557_Average_Diversity_Level_in_the_Customized_MR" float(53),
  "S4558A_Average_AMR_FR_VQIVoice_Quality_Index_in_the_Customized_" float(53),
  "S4558E_Average_Measurement_Value_of_the_EFR_UL_VQI_Voice_Qualit" float(53),
  "S4558W_Average_Measurement_Value_of_the_WBAMR_UL_VQI_Voice_Qual" float(53),
  "S4558_Average_Measurement_Value_of_the_FR_UL_VQI_Voice_Quality_" float(53),
  "S4559A_Average_AMR_HR_VQIVoice_Quality_Index_in_the_Customized_" float(53),
  "S4559_Average_Measurement_Value_of_the_HR_UL_VQI_Voice_Quality_" float(53),
  "S4560_Average_Uplink_Power_in_the_Customized_MR" float(53),
  "S4561_Average_Downlink_Power_in_the_Customized_MR" float(53),
  "S4562A_Average_Frame_Erasion_Rate_of_the_AMR_FR_in_the_Customiz" float(53),
  "S4562B_Average_Frame_Erasion_Rate_of_the_WBAMR_FR_in_the_Custom" float(53),
  "S4562_Average_Frame_Erasion_Rate_of_the_FR_in_the_Customized_MR" float(53),
  "S4565A_Average_Frame_Erasion_Rate_of_the_AMR_HR_in_the_Customiz" float(53),
  "S4565_Average_Frame_Erasion_Rate_of_the_HR_in_the_Customized_MR" float(53),
  "S4568_Number_of_Measurements_of_the_Level_in_the_Customized_MR_" float(53),
  "S4569_Number_of_Measurements_of_the_Level_in_the_Customized_MR_" float(53),
  "S45710_Average_Level_in_the_Customized_MR_Channel_3" float(53),
  "S45711_Average_Level_in_the_Customized_MR_Channel_4" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "TRX_Index" text COLLATE "pg_catalog"."default",
  "AS4200A_Mean_Number_of_SDCCHs_in_Interference_Band_1" float(53),
  "AS4200B_Mean_Number_of_SDCCHs_in_Interference_Band_2" float(53),
  "AS4200C_Mean_Number_of_SDCCHs_in_Interference_Band_3" float(53),
  "AS4200D_Mean_Number_of_SDCCHs_in_Interference_Band_4" float(53),
  "AS4200E_Mean_Number_of_SDCCHs_in_Interference_Band_5" float(53),
  "AS4207A_Mean_Number_of_TCHFs_in_Interference_Band_1" float(53),
  "AS4207B_Mean_Number_of_TCHFs_in_Interference_Band_2" float(53),
  "AS4207C_Mean_Number_of_TCHFs_in_Interference_Band_3" float(53),
  "AS4207D_Mean_Number_of_TCHFs_in_Interference_Band_4" float(53),
  "AS4207E_Mean_Number_of_TCHFs_in_Interference_Band_5" float(53),
  "AS4208A_Mean_Number_of_TCHHs_in_Interference_Band_1" float(53),
  "AS4208B_Mean_Number_of_TCHHs_in_Interference_Band_2" float(53),
  "AS4208C_Mean_Number_of_TCHHs_in_Interference_Band_3" float(53),
  "AS4208D_Mean_Number_of_TCHHs_in_Interference_Band_4" float(53),
  "AS4208E_Mean_Number_of_TCHHs_in_Interference_Band_5" float(53),
  "S4210A_Uplink_Interference_Indication_Messages_SDCCH" float(53),
  "S4210B_Downlink_Interference_Indication_Messages_SDCCH" float(53),
  "S4219A_Uplink_Interference_Indication_Messages_TCH" float(53),
  "S4219B_Downlink_Interference_Indication_Messages_TCH" float(53),
  "S4400A_Number_of_MRs_TA_0" float(53),
  "S4401A_Number_of_MRs_TA_1" float(53),
  "S4402A_Number_of_MRs_TA_2" float(53),
  "S4403A_Number_of_MRs_TA_3" float(53),
  "S4404A_Number_of_MRs_TA_4" float(53),
  "S4405A_Number_of_MRs_TA_5" float(53),
  "S4406A_Number_of_MRs_TA_6" float(53),
  "S4407A_Number_of_MRs_TA_7" float(53),
  "S4408A_Number_of_MRs_TA_8" float(53),
  "S4409A_Number_of_MRs_TA_9" float(53),
  "S4410A_Number_of_MRs_TA_10" float(53),
  "S4411A_Number_of_MRs_TA_11" float(53),
  "S4412A_Number_of_MRs_TA_12" float(53),
  "S4413A_Number_of_MRs_TA_13" float(53),
  "S4414A_Number_of_MRs_TA_14" float(53),
  "S4415A_Number_of_MRs_TA_15" float(53),
  "S4416A_Number_of_MRs_TA_16" float(53),
  "S4417A_Number_of_MRs_TA_17" float(53),
  "S4418A_Number_of_MRs_TA_18" float(53),
  "S4419A_Number_of_MRs_TA_19" float(53),
  "S4420A_Number_of_MRs_TA_20" float(53),
  "S4421A_Number_of_MRs_TA_21" float(53),
  "S4422A_Number_of_MRs_TA_22" float(53),
  "S4423A_Number_of_MRs_TA_23" float(53),
  "S4424A_Number_of_MRs_TA_24" float(53),
  "S4425A_Number_of_MRs_TA_25" float(53),
  "S4426A_Number_of_MRs_TA_26" float(53),
  "S4427A_Number_of_MRs_TA_27" float(53),
  "S4428A_Number_of_MRs_TA_28" float(53),
  "S4429A_Number_of_MRs_TA_29" float(53),
  "S4430A_Number_of_MRs_TA_30_or_31" float(53),
  "S4432A_Number_of_MRs_TA_32_or_33" float(53),
  "S4434A_Number_of_MRs_TA_34_or_35" float(53),
  "S4436A_Number_of_MRs_TA_36_or_37" float(53),
  "S4438A_Number_of_MRs_TA_38_or_39" float(53),
  "S4440A_Number_of_MRs_TA_40_to_44" float(53),
  "S4445A_Number_of_MRs_TA_45_to_49" float(53),
  "S4450A_Number_of_MRs_TA_50_to_54" float(53),
  "S4455A_Number_of_MRs_TA_55_to_63" float(53),
  "S4463A_Number_of_MRs_TA_greater_than_63" float(53),
  "AS3337D_Mean_Downlink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "AS4300D_Mean_Uplink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4307D_Mean_Uplink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "AS4308D_Mean_Uplink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "AS4310D_Mean_Uplink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4317D_Mean_Uplink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "AS4318D_Mean_Uplink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "AS4320D_Mean_Downlink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4327D_Mean_Downlink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "AS4328D_Mean_Downlink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "AS4330D_Mean_Downlink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4338D_Mean_Downlink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "AS4340D_Mean_TA_during_Radio_Link_Failure_SDCCH" float(53),
  "AS4347D_Mean_TA_during_Radio_Link_Failure_TCHF" float(53),
  "AS4348D_Mean_TA_during_Radio_Link_Failure_TCHH" float(53),
  "S4300D_Uplink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "S4307D_Uplink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "S4308D_Uplink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "S4310D_Uplink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "S4317D_Uplink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "S4318D_Uplink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "S4320D_Downlink_Level_during_Radio_Link_Failure_SDCCH" float(53),
  "S4327D_Downlink_Level_during_Radio_Link_Failure_TCHF" float(53),
  "S4328D_Downlink_Level_during_Radio_Link_Failure_TCHH" float(53),
  "S4330D_Downlink_Quality_during_Radio_Link_Failure_SDCCH" float(53),
  "S4337D_Downlink_Quality_during_Radio_Link_Failure_TCHF" float(53),
  "S4338D_Downlink_Quality_during_Radio_Link_Failure_TCHH" float(53),
  "S4340D_TA_during_Radio_Link_Failure_SDCCH" float(53),
  "S4347D_TA_during_Radio_Link_Failure_TCHF" float(53),
  "S4348D_TA_during_Radio_Link_Failure_TCHH" float(53),
  "S4350D_Radio_Link_Failures_SDCCH" float(53),
  "S4357D_Radio_Link_Failures_TCHF" float(53),
  "S4358D_Radio_Link_Failures_TCHH" float(53),
  "S4400B_Radio_Link_Failures_TA_0" float(53),
  "S4401B_Radio_Link_Failures_TA_1" float(53),
  "S4402B_Radio_Link_Failures_TA_2" float(53),
  "S4403B_Radio_Link_Failures_TA_3" float(53),
  "S4404B_Radio_Link_Failures_TA_4" float(53),
  "S4405B_Radio_Link_Failures_TA_5" float(53),
  "S4406B_Radio_Link_Failures_TA_6" float(53),
  "S4407B_Radio_Link_Failures_TA_7" float(53),
  "S4408B_Radio_Link_Failures_TA_8" float(53),
  "S4409B_Radio_Link_Failures_TA_9" float(53),
  "S4410B_Radio_Link_Failures_TA_10" float(53),
  "S4411B_Radio_Link_Failures_TA_11" float(53),
  "S4412B_Radio_Link_Failures_TA_12" float(53),
  "S4413B_Radio_Link_Failures_TA_13" float(53),
  "S4414B_Radio_Link_Failures_TA_14" float(53),
  "S4415B_Radio_Link_Failures_TA_15" float(53),
  "S4416B_Radio_Link_Failures_TA_16" float(53),
  "S4417B_Radio_Link_Failures_TA_17" float(53),
  "S4418B_Radio_Link_Failures_TA_18" float(53),
  "S4419B_Radio_Link_Failures_TA_19" float(53),
  "S4420B_Radio_Link_Failures_TA_20" float(53),
  "S4421B_Radio_Link_Failures_TA_21" float(53),
  "S4422B_Radio_Link_Failures_TA_22" float(53),
  "S4423B_Radio_Link_Failures_TA_23" float(53),
  "S4424B_Radio_Link_Failures_TA_24" float(53),
  "S4425B_Radio_Link_Failures_TA_25" float(53),
  "S4426B_Radio_Link_Failures_TA_26" float(53),
  "S4427B_Radio_Link_Failures_TA_27" float(53),
  "S4428B_Radio_Link_Failures_TA_28" float(53),
  "S4429B_Radio_Link_Failures_TA_29" float(53),
  "S4430B_Radio_Link_Failures_TA_30_or_31" float(53),
  "S4432B_Radio_Link_Failures_TA_32_or_33" float(53),
  "S4434B_Radio_Link_Failures_TA_34_or_35" float(53),
  "S4436B_Radio_Link_Failures_TA_36_or_37" float(53),
  "S4438B_Radio_Link_Failures_TA_38_or_39" float(53),
  "S4440B_Radio_Link_Failures_TA_40_to_44" float(53),
  "S4445B_Radio_Link_Failures_TA_45_to_49" float(53),
  "S4450B_Radio_Link_Failures_TA_50_to_54" float(53),
  "S4455B_Radio_Link_Failures_TA_55_to_63" float(53),
  "S4463B_Radio_Link_Failures_TA_greater_than_63" float(53),
  "CS410A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_0" float(53),
  "CS410B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS410C_Number_of_MRs_on_Uplink_TCHH_Mean_Rank_of_Receive_Qualit" float(53),
  "CS410D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS411A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_1" float(53),
  "CS411B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS411C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_1" float(53),
  "CS411D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS412A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_2" float(53),
  "CS412B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS412C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_2" float(53),
  "CS412D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS413A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_3" float(53),
  "CS413B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS413C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_3" float(53),
  "CS413D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS414A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_4" float(53),
  "CS414B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS414C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_4" float(53),
  "CS414D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS415A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_5" float(53),
  "CS415B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS415C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_5" float(53),
  "CS415D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS416A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_6" float(53),
  "CS416B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS416C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_6" float(53),
  "CS416D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "CS417A_Number_of_MRs_on_Uplink_TCHF_Mean_Receive_Quality_Rank_7" float(53),
  "CS417B_Number_of_MRs_on_Downlink_TCHF_Mean_Receive_Quality_Rank" float(53),
  "CS417C_Number_of_MRs_on_Uplink_TCHH_Mean_Receive_Quality_Rank_7" float(53),
  "CS417D_Number_of_MRs_on_Downlink_TCHH_Mean_Receive_Quality_Rank" float(53),
  "NCS412A_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_0" float(53),
  "NCS412B_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_1" float(53),
  "NCS412C_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_2" float(53),
  "NCS412D_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_3" float(53),
  "NCS412E_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_4" float(53),
  "NCS412F_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_5" float(53),
  "NCS412G_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_6" float(53),
  "NCS412H_Number_of_MRs_on_Downlink_TCHF_Receive_Quality_Rank_7" float(53),
  "NCS413A_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_0" float(53),
  "NCS413B_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_1" float(53),
  "NCS413C_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_2" float(53),
  "NCS413D_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_3" float(53),
  "NCS413E_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_4" float(53),
  "NCS413F_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_5" float(53),
  "NCS413G_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_6" float(53),
  "NCS413H_Number_of_MRs_on_Uplink_TCHF_Receive_Quality_Rank_7" float(53),
  "NCS414A_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_0" float(53),
  "NCS414B_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_1" float(53),
  "NCS414C_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_2" float(53),
  "NCS414D_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_3" float(53),
  "NCS414E_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_4" float(53),
  "NCS414F_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_5" float(53),
  "NCS414G_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_6" float(53),
  "NCS414H_Number_of_MRs_on_Downlink_TCHH_Receive_Quality_Rank_7" float(53),
  "NCS415A_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_0" float(53),
  "NCS415B_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_1" float(53),
  "NCS415C_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_2" float(53),
  "NCS415D_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_3" float(53),
  "NCS415E_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_4" float(53),
  "NCS415F_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_5" float(53),
  "NCS415G_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_6" float(53),
  "NCS415H_Number_of_MRs_on_Uplink_TCHH_Receive_Quality_Rank_7" float(53),
  "NCS415I_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415J_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415K_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415L_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415M_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415N_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415O_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415P_Number_of_Times_Uplink_RX_Quality_of_VAMOS_Calls_Being_" float(53),
  "NCS415Q_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415R_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415S_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415T_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415U_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415V_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415W_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "NCS415X_Number_of_Times_Downlink_RX_Quality_of_VAMOS_Calls_Bein" float(53),
  "AS4400D_Mean_RQI_TA_0" float(53),
  "AS4401D_Mean_RQI_TA_1" float(53),
  "AS4402D_Mean_RQI_TA_2" float(53),
  "AS4403D_Mean_RQI_TA_3" float(53),
  "AS4404D_Mean_RQI_TA_4" float(53),
  "AS4405D_Mean_RQI_TA_5" float(53),
  "AS4406D_Mean_RQI_TA_6" float(53),
  "AS4407D_Mean_RQI_TA_7" float(53),
  "AS4408D_Mean_RQI_TA_8" float(53),
  "AS4409D_Mean_RQI_TA_9" float(53),
  "AS4410D_Mean_RQI_TA_10" float(53),
  "AS4411D_Mean_RQI_TA_11" float(53),
  "AS4412D_Mean_RQI_TA_12" float(53),
  "AS4413D_Mean_RQI_TA_13" float(53),
  "AS4414D_Mean_RQI_TA_14" float(53),
  "AS4415D_Mean_RQI_TA_15" float(53),
  "AS4416D_Mean_RQI_TA_16" float(53),
  "AS4417D_Mean_RQI_TA_17" float(53),
  "AS4418D_Mean_RQI_TA_18" float(53),
  "AS4419D_Mean_RQI_TA_19" float(53),
  "AS4420D_Mean_RQI_TA_20" float(53),
  "AS4421D_Mean_RQI_TA_21" float(53),
  "AS4422D_Mean_RQI_TA_22" float(53),
  "AS4423D_Mean_RQI_TA_23" float(53),
  "AS4424D_Mean_RQI_TA_24" float(53),
  "AS4425D_Mean_RQI_TA_25" float(53),
  "AS4426D_Mean_RQI_TA_26" float(53),
  "AS4427D_Mean_RQI_TA_27" float(53),
  "AS4428D_Mean_RQI_TA_28" float(53),
  "AS4429D_Mean_RQI_TA_29" float(53),
  "AS4430D_Mean_RQI_TA_30_or_31" float(53),
  "AS4432D_Mean_RQI_TA_32_or_33" float(53),
  "AS4434D_Mean_RQI_TA_34_or_35" float(53),
  "AS4436D_Mean_RQI_TA_36_or_37" float(53),
  "AS4438D_Mean_RQI_TA_38_or_39" float(53),
  "AS4440D_Mean_RQI_TA_40_to_44" float(53),
  "AS4445D_Mean_RQI_TA_45_to_49" float(53),
  "AS4450D_Mean_RQI_TA_50_to_54" float(53),
  "AS4455D_Mean_RQI_TA_55_to_63" float(53),
  "AS4463D_Mean_RQI_TA_greater_than_63" float(53),
  "S4400C_MRs_with_RQI_TA_0" float(53),
  "S4401C_MRs_with_RQI_TA_1" float(53),
  "S4402C_MRs_with_RQI_TA_2" float(53),
  "S4403C_MRs_with_RQI_TA_3" float(53),
  "S4404C_MRs_with_RQI_TA_4" float(53),
  "S4405C_MRs_with_RQI_TA_5" float(53),
  "S4406C_MRs_with_RQI_TA_6" float(53),
  "S4407C_MRs_with_RQI_TA_7" float(53),
  "S4408C_MRs_with_RQI_TA_8" float(53),
  "S4409C_MRs_with_RQI_TA_9" float(53),
  "S4410C_MRs_with_RQI_TA_10" float(53),
  "S4411C_MRs_with_RQI_TA_11" float(53),
  "S4412C_MRs_with_RQI_TA_12" float(53),
  "S4413C_MRs_with_RQI_TA_13" float(53),
  "S4414C_MRs_with_RQI_TA_14" float(53),
  "S4415C_MRs_with_RQI_TA_15" float(53),
  "S4416C_MRs_with_RQI_TA_16" float(53),
  "S4417C_MRs_with_RQI_TA_17" float(53),
  "S4418C_MRs_with_RQI_TA_18" float(53),
  "S4419C_MRs_with_RQI_TA_19" float(53),
  "S4420C_MRs_with_RQI_TA_20" float(53),
  "S4421C_MRs_with_RQI_TA_21" float(53),
  "S4422C_MRs_with_RQI_TA_22" float(53),
  "S4423C_MRs_with_RQI_TA_23" float(53),
  "S4424C_MRs_with_RQI_TA_24" float(53),
  "S4425C_MRs_with_RQI_TA_25" float(53),
  "S4426C_MRs_with_RQI_TA_26" float(53),
  "S4427C_MRs_with_RQI_TA_27" float(53),
  "S4428C_MRs_with_RQI_TA_28" float(53),
  "S4429C_MRs_with_RQI_TA_29" float(53),
  "S4430C_MRs_with_RQI_TA_30_or_31" float(53),
  "S4432C_MRs_with_RQI_TA_32_or_33" float(53),
  "S4434C_MRs_with_RQI_TA_34_or_35" float(53),
  "S4436C_MRs_with_RQI_TA_36_or_37" float(53),
  "S4438C_MRs_with_RQI_TA_38_or_39" float(53),
  "S4440C_MRs_with_RQI_TA_40_to_44" float(53),
  "S4445C_MRs_with_RQI_TA_45_to_49" float(53),
  "S4450C_MRs_with_RQI_TA_50_to_54" float(53),
  "S4455C_MRs_with_RQI_TA_55_to_63" float(53),
  "S4463C_MRs_with_RQI_TA_greater_than_63" float(53),
  "S4400E_Number_of_Measurement_Reports_RQI_0_to_1" float(53),
  "S4401E_Number_of_Measurement_Reports_RQI_1_to_2" float(53),
  "S4402E_Number_of_Measurement_Reports_RQI_2_to_3" float(53),
  "S4403E_Number_of_Measurement_Reports_RQI_3_to_4" float(53),
  "S4404E_Number_of_Measurement_Reports_RQI_4_to_5" float(53),
  "S4405E_Number_of_Measurement_Reports_RQI_5_to_6" float(53),
  "S4406E_Number_of_Measurement_Reports_RQI_6_to_7" float(53),
  "S4407E_Number_of_Measurement_Reports_RQI_7_to_8" float(53),
  "S4408E_Number_of_Measurement_Reports_RQI_8_to_9" float(53),
  "S4409E_Number_of_Measurement_Reports_RQI_9_to_10" float(53),
  "S4410E_Number_of_Measurement_Reports_RQI_10_to_11" float(53),
  "S4411E_Number_of_Measurement_Reports_RQI_11_to_12" float(53),
  "S4412E_Number_of_Measurement_Reports_RQI_12_to_13" float(53),
  "S4413E_Number_of_Measurement_Reports_RQI_13_to_14" float(53),
  "S4414E_Number_of_Measurement_Reports_RQI_14_to_15" float(53),
  "S4415E_Number_of_Measurement_Reports_RQI_15_to_25" float(53),
  "S4416E_Number_of_Measurement_Reports_RQI_25_to_35" float(53),
  "S4417E_Number_of_Measurement_Reports_RQI_35_to_45" float(53),
  "S4418E_Number_of_Measurement_Reports_RQI_45_to_55" float(53),
  "S4419E_Number_of_Measurement_Reports_RQI_greater_than_55" float(53),
  "S4440E_Number_of_Measurement_Reports_with_RQI" float(53),
  "S4100A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4100B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4101A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4101B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4102A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4102B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4103A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4103B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4104A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4104B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4105A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4105B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4106A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4106B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4107A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_0_and_Re" float(53),
  "S4107B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_0_and_" float(53),
  "S4110A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4110B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4111A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4111B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4112A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4112B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4113A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4113B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4114A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4114B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4115A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4115B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4116A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4116B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4117A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_1_and_Re" float(53),
  "S4117B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_1_and_" float(53),
  "S4120A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4120B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4121A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4121B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4122A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4122B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4123A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4123B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4124A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4124B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4125A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4125B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4126A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4126B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4127A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_2_and_Re" float(53),
  "S4127B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_2_and_" float(53),
  "S4130A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4130B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4131A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4131B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4132A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4132B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4133A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4133B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4134A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4134B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4135A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4135B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4136A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4136B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4137A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_3_and_Re" float(53),
  "S4137B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_3_and_" float(53),
  "S4140A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4140B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4141A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4141B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4142A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4142B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4143A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4143B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4144A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4144B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4145A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4145B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4146A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4146B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4147A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_4_and_Re" float(53),
  "S4147B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_4_and_" float(53),
  "S4150A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4150B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4151A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4151B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4152A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4152B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4153A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4153B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4154A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4154B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4155A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4155B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4156A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4156B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4157A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_5_and_Re" float(53),
  "S4157B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_5_and_" float(53),
  "S4160A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4160B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4161A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4161B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4162A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4162B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4163A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4163B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4164A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4164B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4165A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4165B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4166A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4166B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4167A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_6_and_Re" float(53),
  "S4167B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_6_and_" float(53),
  "S4170A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4170B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4171A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4171B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4172A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4172B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4173A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4173B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4174A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4174B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4175A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4175B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4176A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4176B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4177A_Number_of_MRs_on_Uplink_TCHF_Receive_Level_Rank_7_and_Re" float(53),
  "S4177B_Number_of_MRs_on_Downlink_TCHF_Receive_Level_Rank_7_and_" float(53),
  "S4100C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4100D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4101C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4101D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4102C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4102D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4103C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4103D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4104C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4104D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4105C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4105D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4106C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4106D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4107C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_0_and_Re" float(53),
  "S4107D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_0_and_" float(53),
  "S4110C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4110D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4111C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4111D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4112C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4112D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4113C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4113D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4114C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4114D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4115C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4115D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4116C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4116D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4117C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_1_and_Re" float(53),
  "S4117D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_1_and_" float(53),
  "S4120C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4120D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4121C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4121D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4122C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4122D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4123C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4123D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4124C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4124D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4125C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4125D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4126C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4126D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4127C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_2_and_Re" float(53),
  "S4127D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_2_and_" float(53),
  "S4130C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4130D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4131C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4131D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4132C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4132D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4133C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4133D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4134C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4134D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4135C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4135D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4136C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4136D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4137C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_3_and_Re" float(53),
  "S4137D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_3_and_" float(53),
  "S4140C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4140D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4141C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4141D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4142C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4142D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4143C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4143D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4144C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4144D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4145C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4145D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4146C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4146D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4147C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_4_and_Re" float(53),
  "S4147D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_4_and_" float(53),
  "S4150C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4150D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4151C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4151D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4152C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4152D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4153C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4153D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4154C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4154D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4155C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4155D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4156C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4156D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4157C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_5_and_Re" float(53),
  "S4157D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_5_and_" float(53),
  "S4160C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4160D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4161C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4161D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4162C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4162D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4163C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4163D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4164C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4164D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4165C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4165D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4166C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4166D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4167C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_6_and_Re" float(53),
  "S4167D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_6_and_" float(53),
  "S4170C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4170D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4171C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4171D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4172C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4172D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4173C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4173D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4174C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4174D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4175C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4175D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4176C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4176D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S4177C_Number_of_MRs_on_Uplink_TCHH_Receive_Level_Rank_7_and_Re" float(53),
  "S4177D_Number_of_MRs_on_Downlink_TCHH_Receive_Level_Rank_7_and_" float(53),
  "S462A_Number_of_MRs_Uplink-and-Downlink_Balance_Level_1" float(53),
  "S462B_Number_of_MRs_Uplink-and-Downlink_Balance_Level_2" float(53),
  "S462C_Number_of_MRs_Uplink-and-Downlink_Balance_Level_3" float(53),
  "S462D_Number_of_MRs_Uplink-and-Downlink_Balance_Level_4" float(53),
  "S462E_Number_of_MRs_Uplink-and-Downlink_Balance_Level_5" float(53),
  "S462F_Number_of_MRs_Uplink-and-Downlink_Balance_Level_6" float(53),
  "S462G_Number_of_MRs_Uplink-and-Downlink_Balance_Level_7" float(53),
  "S462H_Number_of_MRs_Uplink-and-Downlink_Balance_Level_8" float(53),
  "S462I_Number_of_MRs_Uplink-and-Downlink_Balance_Level_9" float(53),
  "S462J_Number_of_MRs_Uplink-and-Downlink_Balance_Level_10" float(53),
  "S462K_Number_of_MRs_Uplink-and-Downlink_Balance_Level_11" float(53),
  "Granularity Period" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Algorithm
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Algorithm";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Algorithm" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AMRWB_DLRateDown" float(53),
  "VS_AMRWB_DLRateUp" float(53),
  "VS_AMRWB_ULRateDown" float(53),
  "VS_AMRWB_ULRateUp" float(53),
  "VS_AMR_DL_RateDown" float(53),
  "VS_AMR_DL_RateUp" float(53),
  "VS_AMR_UL_RateDown" float(53),
  "VS_AMR_UL_RateUp" float(53),
  "VS_CellBreath_CPICHDown" float(53),
  "VS_CellBreath_CPICHMax_Time" float(53),
  "VS_CellBreath_CPICHMin_Time" float(53),
  "VS_CellBreath_CPICHUp" float(53),
  "VS_CellBreath_TCPOver_Time" float(53),
  "VS_CellBreath_TCPUnder_Time" float(53),
  "VS_Cell_DynShutDown_Time" float(53),
  "VS_Cell_HSDPA_UnavailTime" float(53),
  "VS_Cell_HSUPA_UnavailTime" float(53),
  "VS_Cell_UnavailTime" float(53),
  "VS_Cell_UnavailTime_Sys" float(53),
  "VS_CPICH_MeanPwr" float(53),
  "VS_DCCC_AttDownsizing_DL_Cong" float(53),
  "VS_DCCC_AttDownsizing_DL_Cov" float(53),
  "VS_DCCC_AttDownsizing_DL_Thr" float(53),
  "VS_DCCC_AttDownsizing_E2E_Thr" float(53),
  "VS_DCCC_AttDownsizing_UL_Cong" float(53),
  "VS_DCCC_AttDownsizing_UL_Cov" float(53),
  "VS_DCCC_AttDownsizing_UL_Thr" float(53),
  "VS_DCCC_AttUpsizing_DL_Thr" float(53),
  "VS_DCCC_AttUpsizing_E2E_Thr" float(53),
  "VS_DCCC_AttUpsizing_UL_Thr" float(53),
  "VS_DCCC_Att_F2P" float(53),
  "VS_DCCC_C2D_Att" float(53),
  "VS_DCCC_D2C_Att" float(53),
  "VS_DCCC_D2P_Att" float(53),
  "VS_DCCC_D2P_Succ" float(53),
  "VS_DCCC_FastDormUe_DF2P_Att" float(53),
  "VS_DCCC_FastDormUe_DF2P_Succ" float(53),
  "VS_DCCC_P2D_Att" float(53),
  "VS_DCCC_P2D_DRD_Att" float(53),
  "VS_DCCC_P2D_DRD_Succ" float(53),
  "VS_DCCC_P2D_Succ" float(53),
  "VS_DCCC_P2F_Att" float(53),
  "VS_DCCC_P2F_Succ" float(53),
  "VS_DCCC_P2URAP" float(53),
  "VS_DCCC_SuccDownsizing_DL_Cong" float(53),
  "VS_DCCC_SuccDownsizing_DL_Cov" float(53),
  "VS_DCCC_SuccDownsizing_DL_Thr" float(53),
  "VS_DCCC_SuccDownsizing_E2E_Thr" float(53),
  "VS_DCCC_SuccDownsizing_UL_Cong" float(53),
  "VS_DCCC_SuccDownsizing_UL_Cov" float(53),
  "VS_DCCC_SuccDownsizing_UL_Thr" float(53),
  "VS_DCCC_SuccUpsizing_DL_Thr" float(53),
  "VS_DCCC_SuccUpsizing_E2E_Thr" float(53),
  "VS_DCCC_SuccUpsizing_UL_Thr" float(53),
  "VS_DCCC_Succ_D2F" float(53),
  "VS_DCCC_Succ_F2D" float(53),
  "VS_DCCC_Succ_F2P" float(53),
  "VS_DCCC_URAP2D_Att" float(53),
  "VS_DCCC_URAP2D_Succ" float(53),
  "VS_DCCC_URAP2F_Att" float(53),
  "VS_DCCC_URAP2F_Succ" float(53),
  "VS_DynClose_CellDel" float(53),
  "VS_DynOpen_CellSetup" float(53),
  "VS_FACH_CCCH_CONG_TIME" float(53),
  "VS_FACH_DCCH_CONG_TIME" float(53),
  "VS_FACH_DTCH_CONG_TIME" float(53),
  "VS_HSDPA_H2P_Att" float(53),
  "VS_HSDPA_H2P_Succ" float(53),
  "VS_HSUPAR99_Unfairness" float(53),
  "VS_HSUPAR99_Unfairness_R99BERateDown" float(53),
  "VS_HSUPA_E2P_Att" float(53),
  "VS_HSUPA_E2P_Succ" float(53),
  "VS_LCC_HSDPA_CodeAdj_Att" float(53),
  "VS_LCC_HSDPA_CodeAdj_Succ" float(53),
  "VS_LCC_LDR_AMRRateDL" float(53),
  "VS_LCC_LDR_AMRRateUL" float(53),
  "VS_LCC_LDR_AMRSfRecfg" float(53),
  "VS_LCC_LDR_CodeAdj_Att" float(53),
  "VS_LCC_LDR_CodeAdj_Succ" float(53),
  "VS_LCC_LDR_DL_BERateDown" float(53),
  "VS_LCC_LDR_DL_QosReNego" float(53),
  "VS_LCC_LDR_HSDPA_InterFreq" float(53),
  "VS_LCC_LDR_HSDPA_InterRATCS" float(53),
  "VS_LCC_LDR_HSDPA_InterRATPS" float(53),
  "VS_LCC_LDR_HSUPA_InterFreq" float(53),
  "VS_LCC_LDR_HSUPA_InterRATCS" float(53),
  "VS_LCC_LDR_HSUPA_InterRATPS" float(53),
  "VS_LCC_LDR_InterFreq" float(53),
  "VS_LCC_LDR_InterRATCS" float(53),
  "VS_LCC_LDR_InterRATPS" float(53),
  "VS_LCC_LDR_MbmsPowerDec" float(53),
  "VS_LCC_LDR_Num_DLCE" float(53),
  "VS_LCC_LDR_Num_DLCode" float(53),
  "VS_LCC_LDR_Num_DLIub" float(53),
  "VS_LCC_LDR_Num_DLPower" float(53),
  "VS_LCC_LDR_Num_ULCE" float(53),
  "VS_LCC_LDR_Num_ULIub" float(53),
  "VS_LCC_LDR_Num_ULPower" float(53),
  "VS_LCC_LDR_Time_DLCE" float(53),
  "VS_LCC_LDR_Time_DLCode" float(53),
  "VS_LCC_LDR_Time_DLIub" float(53),
  "VS_LCC_LDR_Time_DLPower" float(53),
  "VS_LCC_LDR_Time_ULCE" float(53),
  "VS_LCC_LDR_Time_ULIub" float(53),
  "VS_LCC_LDR_Time_ULPower" float(53),
  "VS_LCC_LDR_UL_BERateDown" float(53),
  "VS_LCC_LDR_UL_QosReNego" float(53),
  "VS_LCC_OLC_D2C" float(53),
  "VS_LCC_OLC_DL_Num" float(53),
  "VS_LCC_OLC_DL_TF" float(53),
  "VS_LCC_OLC_DL_Time" float(53),
  "VS_LCC_OLC_DL_UserRel" float(53),
  "VS_LCC_OLC_HSDPA_UserRel" float(53),
  "VS_LCC_OLC_HSUPA_UserRel" float(53),
  "VS_LCC_OLC_MBMS_PTM_RBRel" float(53),
  "VS_LCC_OLC_MBMS_PTP_RBRel" float(53),
  "VS_LCC_OLC_UL_Num" float(53),
  "VS_LCC_OLC_UL_TF" float(53),
  "VS_LCC_OLC_UL_Time" float(53),
  "VS_LCC_OLC_UL_UserRel" float(53),
  "VS_LC_DLCreditUsed_Max" float(53),
  "VS_LC_DLCreditUsed_Mean" float(53),
  "VS_LC_DLCreditUsed_Min" float(53),
  "VS_LC_ULCreditUsed_Max" float(53),
  "VS_LC_ULCreditUsed_Mean" float(53),
  "VS_LC_ULCreditUsed_Min" float(53),
  "VS_NodeB_CPU_Cong_Dur" float(53),
  "VS_PSR99_D2P_Att" float(53),
  "VS_PSR99_D2P_Succ" float(53),
  "VS_PUC_High_IntSrch_Updt" float(53),
  "VS_PUC_High_Offset_Updt" float(53),
  "VS_PUC_Light_IntSrch_Updt" float(53),
  "VS_PUC_Light_Offset_Updt" float(53),
  "VS_PUC_Norm_IntSrch_Updt" float(53),
  "VS_PUC_Norm_Offset_Updt" float(53),
  "VS_RAC_DCCC_Fail_Code_Cong" float(53),
  "VS_RAC_DCCC_Fail_DLCE_Cong" float(53),
  "VS_RAC_DCCC_Fail_DLPower_Cong" float(53),
  "VS_RAC_DCCC_Fail_ULCE_Cong" float(53),
  "VS_RAC_DCCC_Fail_ULPower_Cong" float(53),
  "VS_RAC_DL_EqvUserNum" float(53),
  "VS_RAC_HHOCallAcc" float(53),
  "VS_RAC_HHOCallReq" float(53),
  "VS_RAC_HHO_Fail_Code_Cong" float(53),
  "VS_RAC_HHO_Fail_DLCE_Cong" float(53),
  "VS_RAC_HHO_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_HHO_Fail_DLPower_Cong" float(53),
  "VS_RAC_HHO_Fail_HSDPANum_Cong" float(53),
  "VS_RAC_HHO_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_HHO_Fail_ULCE_Cong" float(53),
  "VS_RAC_HHO_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_HHO_Fail_ULPower_Cong" float(53),
  "VS_RAC_HHO_Preempt_Cong" float(53),
  "VS_RAC_NewCallAcc" float(53),
  "VS_RAC_NewCallReq" float(53),
  "VS_RAC_NewCallReq_Fail_Code_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_DLCE_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_DLPower_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_HSDPANum_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_ULCE_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_ULPower_Cong" float(53),
  "VS_RAC_NewCallReq_Preempt_Cong" float(53),
  "VS_RAC_ReconfigCallAcc" float(53),
  "VS_RAC_ReconfigCallReq" float(53),
  "VS_RAC_SHOCallAcc" float(53),
  "VS_RAC_SHOCallReq" float(53),
  "VS_RAC_SHO_Fail_Code_Cong" float(53),
  "VS_RAC_SHO_Fail_DLCE_Cong" float(53),
  "VS_RAC_SHO_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_SHO_Fail_DLPower_Cong" float(53),
  "VS_RAC_SHO_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_SHO_Fail_ULCE_Cong" float(53),
  "VS_RAC_SHO_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_SHO_Fail_ULPower_Cong" float(53),
  "VS_RAC_TrChSwitchCallAcc" float(53),
  "VS_RAC_TrChSwitchCallReq" float(53),
  "VS_RAC_TrChSwitch_Fail_Code_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_DLCE_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_DLPower_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_HSDPANum_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_ULCE_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_ULPower_Cong" float(53),
  "VS_RAC_UL_EqvUserNum" float(53),
  "VS_ULB_CPICHMin_Time" float(53),
  "VS_ULB_CPICH_AdjustNum" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Algorithm_2
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Algorithm_2";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Algorithm_2" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AbnormUE_BeThrup_D2F_Att" float(53),
  "VS_AbnormUE_BeThrup_D2F_Succ" float(53),
  "VS_AC_CongCtl_MeanAcBarNum_AboveR6_CS" float(53),
  "VS_AC_CongCtl_MeanAcBarNum_AboveR6_PS" float(53),
  "VS_AC_CongCtl_MeanAcBarNum_UnderR5" float(53),
  "VS_AC_CongCtl_Time" float(53),
  "VS_AirLoad_Congestion_Num" float(53),
  "VS_AirLoad_Congestion_Time" float(53),
  "VS.AMRNB.CrystalAdapt.MEAN" float(53),
  "VS.AMRNB.DL.RateDown.Active" float(53),
  "VS_AMRNB_DL_RateDown_Tcp" float(53),
  "VS_AMRNB_DL_RateUp_Tcp" float(53),
  "VS.AMRNB.UL.RateDown.Active" float(53),
  "VS_AMRNB_UL_RateDown_TRFO" float(53),
  "VS_AMRNB_UL_RateDown_UeTxPwr" float(53),
  "VS_AMRNB_UL_RateUp_TRFO" float(53),
  "VS_AMRNB_UL_RateUp_UeTxPwr" float(53),
  "VS.AMRWB.CrystalAdapt.MEAN" float(53),
  "VS.AMRWB.DL.RateDown.Active" float(53),
  "VS_AMRWB_DL_RateDown_Tcp" float(53),
  "VS_AMRWB_DL_RateUp_Tcp" float(53),
  "VS.AMRWB.UL.RateDown.Active" float(53),
  "VS_AMRWB_UL_RateDown_TRFO" float(53),
  "VS_AMRWB_UL_RateDown_UeTxPwr" float(53),
  "VS_AMRWB_UL_RateUp_TRFO" float(53),
  "VS_AMRWB_UL_RateUp_UeTxPwr" float(53),
  "VS_AttRlReEst_CS" float(53),
  "VS_AttRlReEst_PS" float(53),
  "VS_BackGroundNoise_Max" float(53),
  "VS_BackGroundNoise_Mean" float(53),
  "VS_BackGroundNoise_Update" float(53),
  "VS.CellDCHUEs.Band1" float(53),
  "VS.CellDCHUEs.Band2" float(53),
  "VS.CellDCHUEs.Band4" float(53),
  "VS.CellDCHUEs.Band5" float(53),
  "VS.CellDCHUEs.Band6" float(53),
  "VS.CellDCHUEs.Band8" float(53),
  "VS.CellDCHUEs.BandTotal" float(53),
  "VS_Cell_HspaCommChCodeNotOptimum_Time" float(53),
  "VS_Cell_UnavailTime_NodeBBLK" float(53),
  "VS_DCCC_Att_D2U" float(53),
  "VS_DCCC_Att_F2D_AfterP2F" float(53),
  "VS_DCCC_Att_F2U" float(53),
  "VS_DCCC_Fail_F2D_AfterP2F_Cong" float(53),
  "VS_DCCC_Succ_D2U" float(53),
  "VS_DCCC_Succ_F2D_AfterP2F" float(53),
  "VS_DCCC_Succ_F2U" float(53),
  "VS_DL_DPCH_NormalPilotPOAttNum" float(53),
  "VS_DL_DPCH_OptiPilotPOAttNum" float(53),
  "VS.Event.Ea.Num" float(53),
  "VS.Event.Eb.Num" float(53),
  "VS_FastU2LProhibited_SPID" float(53),
  "VS_HSDPA_DynCfgAtt_LongCQI" float(53),
  "VS_HSDPA_DynCfgAtt_ShortCQI" float(53),
  "VS_HSDPA_P2H_Att" float(53),
  "VS_HSDPA_P2H_Succ" float(53),
  "VS_HSPA_ServCellChg_1A1COptTrig" float(53),
  "VS_HSPA_ServCellChg_1DOptTrig" float(53),
  "VS_HSUPA_P2E_Att" float(53),
  "VS_HSUPA_P2E_Succ" float(53),
  "VS_HSUPA_SmallRsnAdj_TTI10ms" float(53),
  "VS_HSUPA_SmallRsnAdj_TTI2ms" float(53),
  "VS_HSUPA_TgtRoTDec" float(53),
  "VS_HSUPA_TgtRoTInc" float(53),
  "VS_HSUPA_TTI2to10_ADMCE_Succ" float(53),
  "VS_HSUPA_TTI2to10_COVER_Succ" float(53),
  "VS_HSUPA_TTI2to10_ResIUB_Succ" float(53),
  "VS_HSUPA_TTI2to10_ResRTWP_Succ" float(53),
  "VS_HSUPA_TTI2to10_ResUsedCE_Succ" float(53),
  "VS_ICR_DCCC_P2D_DRD_Att" float(53),
  "VS_ICR_DCCC_P2D_DRD_Succ" float(53),
  "VS.InterFreq.2D2FAdjTxNum.DLPowerTrig" float(53),
  "VS.InterRAT.2D2FAdjTxNum.DLPowerTrig" float(53),
  "VS_LCC_CLB_CS_InterFreq" float(53),
  "VS_LCC_CLB_PS_InterFreq" float(53),
  "VS_LCC_LDR_AMRWBRateDL" float(53),
  "VS_LCC_LDR_AMRWBRateUL" float(53),
  "VS.LCC.RotCong.Time" float(53),
  "VS_LCG_CoordinatingRL_ULCreditUsage_Max" float(53),
  "VS_LCG_CoordinatingRL_ULCreditUsage_Mean" float(53),
  "VS_LCG_ULCreditUsage_0" float(53),
  "VS_LCG_ULCreditUsage_1" float(53),
  "VS_LCG_ULCreditUsage_10" float(53),
  "VS_LCG_ULCreditUsage_11" float(53),
  "VS_LCG_ULCreditUsage_2" float(53),
  "VS_LCG_ULCreditUsage_3" float(53),
  "VS_LCG_ULCreditUsage_4" float(53),
  "VS_LCG_ULCreditUsage_5" float(53),
  "VS_LCG_ULCreditUsage_6" float(53),
  "VS_LCG_ULCreditUsage_7" float(53),
  "VS_LCG_ULCreditUsage_8" float(53),
  "VS_LCG_ULCreditUsage_9" float(53),
  "VS_LCG_ULCreditUsage_Max" float(53),
  "VS_LCG_ULCreditUsage_Mean" float(53),
  "VS_LoadAndEcNoBased_P2D_Att" float(53),
  "VS_LoadAndEcNoBased_P2D_Succ" float(53),
  "VS.LowBand.Capacity.Time" float(53),
  "VS.LowBand.Coverage.Time" float(53),
  "VS_MaxULActualPowerLoad" float(53),
  "VS_MeanDesensePwr" float(53),
  "VS_MeanULActualPowerLoad" float(53),
  "VS_MinULActualPowerLoad" float(53),
  "VS_PSR99_P2D_Att" float(53),
  "VS_PSR99_P2D_Succ" float(53),
  "VS_Random_Access_ACKNum_Mean" float(53),
  "VS_RABEstabE2D_COVER_Succ" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_0" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_1" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_2" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_3" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_4" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_5" float(53),
  "VS_RAB_Mean_GBR_DL_Throughput_6" float(53),
  "VS_RAB_SpecialUser_AbnormRel_CS" float(53),
  "VS_RAB_SpecialUser_NormRel_CS" float(53),
  "VS_RAC_AdjUlTotalEqUserNum_Max" float(53),
  "VS_RAC_AdjUlTotalEqUserNum_Mean" float(53),
  "VS_RAC_AdjUlTotalEqUserNum_Min" float(53),
  "VS_RAC_DCCC_Fail_SerExp_Cong" float(53),
  "VS_RAC_DL_EqvUserNum_Max" float(53),
  "VS_RAC_F2D_Preempt_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_SerExp_Cong" float(53),
  "VS_RAC_P2D_Preempt_Cong" float(53),
  "VS_RAC_Platinum_Preempt_Cong" float(53),
  "VS_RAC_RRCReq_Preempt_Cong" float(53),
  "VS_RAC_TrChSwitch_Fail_DCCH_Cong_D2F" float(53),
  "VS_RAC_TrChSwitch_Fail_DCCH_Cong_F2D" float(53),
  "VS_RAC_TrChSwitch_Fail_DSP_Overload_D2F" float(53),
  "VS_RAC_TrChSwitch_Fail_SerExp_Cong" float(53),
  "VS.RAC.TrChSwitch.Fail.UP.Overload.D2F" float(53),
  "VS_RAC_UL_EqvUserNum_Max" float(53),
  "VS_RlReEst_D2F_Att" float(53),
  "VS_RlReEst_D2F_Succ" float(53),
  "VS_RLReEstTime_0_CS" float(53),
  "VS_RLReEstTime_1_CS" float(53),
  "VS_RLReEstTime_2_CS" float(53),
  "VS_RLReEstTime_3_CS" float(53),
  "VS_RLReEstTime_4_CS" float(53),
  "VS_RLReEstTime_5_CS" float(53),
  "VS_RLReEst_TotalTime_CS" float(53),
  "VS.SHOParaNum.HSMUEs" float(53),
  "VS.SHOParaNum.LSMUEs" float(53),
  "VS.SirDist.OLPC.User" float(53),
  "VS.Smart.CPICHDown.1dB.Time" float(53),
  "VS.Smart.CPICHDown.2dB.Time" float(53),
  "VS.Smart.CPICHDown.3dB.Time" float(53),
  "VS.Smart.CPICHUp.1dB.Time" float(53),
  "VS.Smart.CPICHUp.2dB.Time" float(53),
  "VS.Smart.CPICHUp.3dB.Time" float(53),
  "VS_SuccRlReEst_CS" float(53),
  "VS_SuccRlReEst_PS" float(53),
  "VS_TotalDesense_Num" float(53),
  "VS_TotalDesense_Time" float(53),
  "VS_U2LProhibited_SPID_Coverage" float(53),
  "VS_U2LProhibited_SPID_Load" float(53),
  "VS_U2LProhibited_SPID_Service" float(53),
  "VS_ULBler_BE_Large" float(53),
  "VS_ULBler_BE_Small" float(53),
  "VS_UMI_DedicatedPri_LTE_High" float(53),
  "VS_UMI_DedicatedPri_UMTS_High" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@BLER
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@BLER";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@BLER" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RepairTbNum_DEU_SRB_DCH" float(53),
  "VS_RepairTbNum_DEU_SRB_RACH" float(53),
  "VS_ULBler_AMR" float(53),
  "VS_ULBler_AMRWB" float(53),
  "VS_ULBler_AMRWB_ErrTB" float(53),
  "VS_ULBler_AMRWB_Sample" float(53),
  "VS_ULBler_AMR_ErrTB" float(53),
  "VS_ULBler_AMR_Sample" float(53),
  "VS_ULBler_CS64" float(53),
  "VS_ULBler_CS64_ErrTB" float(53),
  "VS_ULBler_CS64_Sample" float(53),
  "VS_ULBler_DEU_AMRNB_ErrTB" float(53),
  "VS_ULBler_DEU_AMRWB_ErrTB" float(53),
  "VS_ULBler_Out_CS64" float(53),
  "VS_ULBler_Out_PS_BE_DCH_128" float(53),
  "VS_ULBler_Out_PS_BE_DCH_144" float(53),
  "VS_ULBler_Out_PS_BE_DCH_16" float(53),
  "VS_ULBler_Out_PS_BE_DCH_256" float(53),
  "VS_ULBler_Out_PS_BE_DCH_32" float(53),
  "VS_ULBler_Out_PS_BE_DCH_384" float(53),
  "VS_ULBler_Out_PS_BE_DCH_64" float(53),
  "VS_ULBler_Out_PS_BE_DCH_8" float(53),
  "VS_ULBler_Out_PS_Conv" float(53),
  "VS_ULBler_Out_PS_Str" float(53),
  "VS_ULBler_PS_BE_DCH_128" float(53),
  "VS_ULBler_PS_BE_DCH_128_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_128_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_144" float(53),
  "VS_ULBler_PS_BE_DCH_144_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_144_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_16" float(53),
  "VS_ULBler_PS_BE_DCH_16_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_16_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_256" float(53),
  "VS_ULBler_PS_BE_DCH_256_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_256_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_32" float(53),
  "VS_ULBler_PS_BE_DCH_32_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_32_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_384" float(53),
  "VS_ULBler_PS_BE_DCH_384_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_384_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_64" float(53),
  "VS_ULBler_PS_BE_DCH_64_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_64_Sample" float(53),
  "VS_ULBler_PS_BE_DCH_8" float(53),
  "VS_ULBler_PS_BE_DCH_8_ErrTB" float(53),
  "VS_ULBler_PS_BE_DCH_8_Sample" float(53),
  "VS_ULBler_PS_BE_RACH" float(53),
  "VS_ULBler_PS_BE_RACH_ErrTB" float(53),
  "VS_ULBler_PS_BE_RACH_Sample" float(53),
  "VS_ULBler_PS_Conv" float(53),
  "VS_ULBler_PS_Conv_ErrTB" float(53),
  "VS_ULBler_PS_Conv_Sample" float(53),
  "VS_ULBler_PS_Str" float(53),
  "VS_ULBler_PS_Str_ErrTB" float(53),
  "VS_ULBler_PS_Str_Sample" float(53),
  "VS_ULBler_SRB_DCH" float(53),
  "VS_ULBler_SRB_DCH_0" float(53),
  "VS_ULBler_SRB_DCH_1" float(53),
  "VS_ULBler_SRB_DCH_2" float(53),
  "VS_ULBler_SRB_DCH_3" float(53),
  "VS_ULBler_SRB_DCH_4" float(53),
  "VS_ULBler_SRB_DCH_ErrTB" float(53),
  "VS_ULBler_SRB_DCH_TotalTB" float(53),
  "VS_ULBler_SRB_RACH" float(53),
  "VS_ULBler_SRB_RACH_0" float(53),
  "VS_ULBler_SRB_RACH_1" float(53),
  "VS_ULBler_SRB_RACH_2" float(53),
  "VS_ULBler_SRB_RACH_3" float(53),
  "VS_ULBler_SRB_RACH_4" float(53),
  "VS_ULBler_SRB_RACH_ErrTB" float(53),
  "VS_ULBler_SRB_RACH_Sample" float(53),
  "VS_ULBLer_Out_AMR" float(53),
  "VS_Voice_VQI_Accept_TimeRate" float(53),
  "VS_Voice_VQI_Average" float(53),
  "VS_Voice_VQI_Bad_TimeRate" float(53),
  "VS_Voice_VQI_Excellent_TimeRate" float(53),
  "VS_Voice_VQI_Good_TimeRate" float(53),
  "VS_Voice_VQI_Poor_TimeRate" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Cell_Update
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Cell_Update";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Cell_Update" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttCellUpdt" float(53),
  "VS_AttCellUpdt_Detach_PCH" float(53),
  "VS_AttCellUpdt_EmgCall_PCH" float(53),
  "VS_AttCellUpdt_ErrSRB" float(53),
  "VS_AttCellUpdt_ErrTRB" float(53),
  "VS_AttCellUpdt_MbmsPtpRbReq" float(53),
  "VS_AttCellUpdt_MbmsRecv" float(53),
  "VS_AttCellUpdt_Msg" float(53),
  "VS_AttCellUpdt_Msg_Conv" float(53),
  "VS_AttCellUpdt_OrgBkgCall_PCH" float(53),
  "VS_AttCellUpdt_OrgConvCall_PCH" float(53),
  "VS_AttCellUpdt_OrgHhPrSig_PCH" float(53),
  "VS_AttCellUpdt_OrgInterCall_PCH" float(53),
  "VS_AttCellUpdt_OrgLwPrSig_PCH" float(53),
  "VS_AttCellUpdt_OrgStrCall_PCH" float(53),
  "VS_AttCellUpdt_OrgSubCall_PCH" float(53),
  "VS_AttCellUpdt_Other_PCH" float(53),
  "VS_AttCellUpdt_P2D" float(53),
  "VS_AttCellUpdt_P2D_OldRAB" float(53),
  "VS_AttCellUpdt_PageRsp" float(53),
  "VS_AttCellUpdt_Prd" float(53),
  "VS_AttCellUpdt_Reg_PCH" float(53),
  "VS_AttCellUpdt_Resel" float(53),
  "VS_AttCellUpdt_RLFail" float(53),
  "VS_AttCellUpdt_RSA" float(53),
  "VS_AttCellUpdt_TmBkgCall_PCH" float(53),
  "VS_AttCellUpdt_TmConvCall_PCH" float(53),
  "VS_AttCellUpdt_TmHhPrSig_PCH" float(53),
  "VS_AttCellUpdt_TmInterCall_PCH" float(53),
  "VS_AttCellUpdt_TmLwPrSig_PCH" float(53),
  "VS_AttCellUpdt_TmStrCall_PCH" float(53),
  "VS_AttCellUpdt_ULDataTrans" float(53),
  "VS_AttCellUpdt_Unknown_PCH" float(53),
  "VS_CellUpdt_Confirm" float(53),
  "VS_CellUpdt_Confirm_PageAndUlData_PCH" float(53),
  "VS_CellUpdt_RRCRel" float(53),
  "VS_CU_CONV_FC_Num_CPU_OverLoad" float(53),
  "VS_CU_CONV_FC_Num_RRCQueue" float(53),
  "VS_CU_FC_Num_RRCQueue" float(53),
  "VS_FailCellUpdt_ErrSRB_NoReply_FACH" float(53),
  "VS_FailCellUpdt_ErrTRB_NoReply_FACH" float(53),
  "VS_FailCellUpdt_P2D_Cong" float(53),
  "VS_FailCellUpdt_P2D_CSConv_Cong" float(53),
  "VS_FailCellUpdt_P2D_OldRAB_Cong" float(53),
  "VS_FailCellUpdt_RLFail_NoReply" float(53),
  "VS_P2F_Redir_FailOut_NonTargetFCN" float(53),
  "VS_P2F_Redir_FailOut_NoReply" float(53),
  "VS_P2F_Redir_In_DirectCmp" float(53),
  "VS_P2F_Redir_In_UseNewCU" float(53),
  "VS_P2F_Redir_Out" float(53),
  "VS_P2F_Redir_Out_RT" float(53),
  "VS_P2F_Redir_Out_RT_P2DFail" float(53),
  "VS_SuccCellUpdt" float(53),
  "VS_SuccCellUpdt_Detach_PCH" float(53),
  "VS_SuccCellUpdt_EmgCall_PCH" float(53),
  "VS_SuccCellUpdt_ErrSRB" float(53),
  "VS_SuccCellUpdt_ErrTRB" float(53),
  "VS_SuccCellUpdt_MbmsPtpRbReq" float(53),
  "VS_SuccCellUpdt_MbmsRecv" float(53),
  "VS_SuccCellUpdt_OrgBkgCall_PCH" float(53),
  "VS_SuccCellUpdt_OrgConvCall_PCH" float(53),
  "VS_SuccCellUpdt_OrgHhPrSig_PCH" float(53),
  "VS_SuccCellUpdt_OrgInterCall_PCH" float(53),
  "VS_SuccCellUpdt_OrgLwPrSig_PCH" float(53),
  "VS_SuccCellUpdt_OrgStrCall_PCH" float(53),
  "VS_SuccCellUpdt_OrgSubCall_PCH" float(53),
  "VS_SuccCellUpdt_Other_PCH" float(53),
  "VS_SuccCellUpdt_P2D_OldRAB" float(53),
  "VS_SuccCellUpdt_PageRsp" float(53),
  "VS_SuccCellUpdt_Prd" float(53),
  "VS_SuccCellUpdt_Reg_PCH" float(53),
  "VS_SuccCellUpdt_Resel" float(53),
  "VS_SuccCellUpdt_RLFail" float(53),
  "VS_SuccCellUpdt_Rsa" float(53),
  "VS_SuccCellUpdt_TmBkgCall_PCH" float(53),
  "VS_SuccCellUpdt_TmConvCall_PCH" float(53),
  "VS_SuccCellUpdt_TmHhPrSig_PCH" float(53),
  "VS_SuccCellUpdt_TmInterCall_PCH" float(53),
  "VS_SuccCellUpdt_TmLwPrSig_PCH" float(53),
  "VS_SuccCellUpdt_TmStrCall_PCH" float(53),
  "VS_SuccCellUpdt_ULDataTrans" float(53),
  "VS_SuccCellUpdt_Unknown_PCH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@CNOperator
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@CNOperator";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@CNOperator" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_LC_ULCreditUsed_Max_PLMN3" float(53),
  "VS_RAB_SFOccupy_MAX_PLMN0" float(53),
  "VS_RAB_SFOccupy_MAX_PLMN1" float(53),
  "VS_RAB_SFOccupy_MAX_PLMN2" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Common_Channel
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Common_Channel";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Common_Channel" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IndepTRBNum_FACH" float(53),
  "VS_OneSRBTTINum_FACH" float(53),
  "VS_SRBNum_FACH" float(53),
  "VS_TRBNum_RACH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Compressed_Mode
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Compressed_Mode";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Compressed_Mode" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_CM_DLHLS_Act_Att" float(53),
  "VS_CM_DLHLS_Act_Fail" float(53),
  "VS_CM_DLSF2_Act_Att" float(53),
  "VS_CM_DLSF2_Act_Fail" float(53),
  "VS_CM_DLSF2_AltScramCode_UE_Max" float(53),
  "VS_CM_DLSF2_AltScramCode_UE_Mean" float(53),
  "VS_CM_DLSF2_UE_Max" float(53),
  "VS_CM_DLSF2_UE_Mean" float(53),
  "VS_CM_ULHLS_Act_Att" float(53),
  "VS_CM_ULHLS_Act_Fail" float(53),
  "VS_CM_ULSF2_Act_Att" float(53),
  "VS_CM_ULSF2_Act_Fail" float(53),
  "VS_StartCM_AsynCfg_Att" float(53),
  "VS_StartCM_AsynCfg_Succ" float(53),
  "VS_StartCM_Att" float(53),
  "VS_StartCM_Succ" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@CS_RAB_Modification
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@CS_RAB_Modification";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@CS_RAB_Modification" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttEstModCS_Conv" float(53),
  "VS_RAB_AttEstModCS_Str" float(53),
  "VS_RAB_FailModCS_RNL" float(53),
  "VS_RAB_FailModCS_TNL" float(53),
  "VS_RAB_SuccModCS_Conv" float(53),
  "VS_RAB_SuccModCS_Str" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@CS_RAB_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttEstabCS_AfterP2D" float(53),
  "VS_AttEstabCS_AfterP2F" float(53),
  "VS_HSPA_RAB_AttEstab_CS_Conv" float(53),
  "VS_HSPA_RAB_SuccEstab_CS_Conv" float(53),
  "VS_HSPA_UE_Mean_CS_Conv_Cell" float(53),
  "VS_RAB_AttEstabCS_AMRWB" float(53),
  "VS_RAB_AttEstabCS_AMRWB12_65" float(53),
  "VS_RAB_AttEstabCS_AMRWB14_25" float(53),
  "VS_RAB_AttEstabCS_AMRWB15_85" float(53),
  "VS_RAB_AttEstabCS_AMRWB18_25" float(53),
  "VS_RAB_AttEstabCS_AMRWB19_85" float(53),
  "VS_RAB_AttEstabCS_AMRWB23_05" float(53),
  "VS_RAB_AttEstabCS_AMRWB23_85" float(53),
  "VS_RAB_AttEstabCS_AMRWB6_60" float(53),
  "VS_RAB_AttEstabCS_AMRWB8_85" float(53),
  "VS_RAB_AttEstabCS_AMR_12_2" float(53),
  "VS_RAB_AttEstabCS_Conv" float(53),
  "VS_RAB_AttEstabCS_Conv_Platinum" float(53),
  "VS_RAB_AttEstabCS_CSFB_PSHO" float(53),
  "VS_RAB_AttEstabCS_CSFB_Redir" float(53),
  "VS_RAB_AttEstabCS_FastSetup" float(53),
  "VS_RAB_AttEstabCS_Platinum" float(53),
  "VS_RAB_AttEstabCS_Queue" float(53),
  "VS_RAB_AttEstabCS_Str" float(53),
  "VS_RAB_AttEstabCS_VPLimit" float(53),
  "VS_RAB_AttEstab_AMR" float(53),
  "VS_RAB_AttEstCS_AMR_4_75" float(53),
  "VS_RAB_AttEstCS_AMR_7_95" float(53),
  "VS_RAB_AttEstCS_Conv_64" float(53),
  "VS_RAB_Estab_QueueTime_CS" float(53),
  "VS_RAB_SuccEstabCS_AMR" float(53),
  "VS_RAB_SuccEstabCS_AMRWB" float(53),
  "VS_RAB_SuccEstabCS_AMRWB12_65" float(53),
  "VS_RAB_SuccEstabCS_AMRWB14_25" float(53),
  "VS_RAB_SuccEstabCS_AMRWB15_85" float(53),
  "VS_RAB_SuccEstabCS_AMRWB18_25" float(53),
  "VS_RAB_SuccEstabCS_AMRWB19_85" float(53),
  "VS_RAB_SuccEstabCS_AMRWB23_05" float(53),
  "VS_RAB_SuccEstabCS_AMRWB23_85" float(53),
  "VS_RAB_SuccEstabCS_AMRWB6_60" float(53),
  "VS_RAB_SuccEstabCS_AMRWB8_85" float(53),
  "VS_RAB_SuccEstabCS_AMR_12_2" float(53),
  "VS_RAB_SuccEstabCS_Conv" float(53),
  "VS_RAB_SuccEstabCS_Conv_Platinum" float(53),
  "VS_RAB_SuccEstabCS_CSFB_PSHO" float(53),
  "VS_RAB_SuccEstabCS_CSFB_Redir" float(53),
  "VS_RAB_SuccEstabCS_FastSetup" float(53),
  "VS_RAB_SuccEstabCS_Platinum" float(53),
  "VS_RAB_SuccEstabCS_Queue" float(53),
  "VS_RAB_SuccEstabCS_Str" float(53),
  "VS_RAB_SuccEstCS_AMR_4_75" float(53),
  "VS_RAB_SuccEstCS_AMR_7_95" float(53),
  "VS_RAB_SuccEstCS_Conv_64" float(53),
  "VS_SuccEstabCS_AfterP2D" float(53),
  "VS_SuccEstabCS_AfterP2F" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@CS_RAB_Setup_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup_Failure";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_FailEstabCS_CellUpd" float(53),
  "VS_RAB_FailEstabCS_CellUpd_CSFB" float(53),
  "VS_RAB_FailEstabCS_Code_Cong" float(53),
  "VS_RAB_FailEstabCS_Cong" float(53),
  "VS_RAB_FailEstabCS_DLCE_Cong" float(53),
  "VS_RAB_FailEstabCS_DLIUBBand_Cong" float(53),
  "VS_RAB_FailEstabCS_DLIUCSBand_Cong" float(53),
  "VS_RAB_FailEstabCS_DLPower_Cong" float(53),
  "VS_RAB_FailEstabCS_IubAAL2Fail" float(53),
  "VS_RAB_FailEstabCS_IubFail" float(53),
  "VS_RAB_FailEstabCS_NodeBDLCE_Cong" float(53),
  "VS_RAB_FailEstabCS_NodeBULCE_Cong" float(53),
  "VS_RAB_FailEstabCS_PhyChFail" float(53),
  "VS_RAB_FailEstabCS_RBCfgUnsup" float(53),
  "VS_RAB_FailEstabCS_RBIncCfg" float(53),
  "VS_RAB_FailEstabCS_RNL" float(53),
  "VS_RAB_FailEstabCS_SRBReset" float(53),
  "VS_RAB_FailEstabCS_SRBReset_CSFB" float(53),
  "VS_RAB_FailEstabCS_TNL" float(53),
  "VS_RAB_FailEstabCS_ULCE_Cong" float(53),
  "VS_RAB_FailEstabCS_ULIUBBand_Cong" float(53),
  "VS_RAB_FailEstabCS_ULIUCSBand_Cong" float(53),
  "VS_RAB_FailEstabCS_ULPower_Cong" float(53),
  "VS_RAB_FailEstabCS_Unsp" float(53),
  "VS_RAB_FailEstabCS_UuFail" float(53),
  "VS_RAB_FailEstabCS_UuFail_CSFB" float(53),
  "VS_RAB_FailEstabCS_UuNoReply" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@CS_Service_Quality
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@CS_Service_Quality";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@CS_Service_Quality" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AMRNB_DLGarbledVoice_OccurNum" float(53),
  "VS_AMRNB_DLSilent_OccurNum" float(53),
  "VS_AMRNB_ULGarbledVoiceCorrect_Num" float(53),
  "VS_AMRNB_ULGarbledVoice_OccurNum" float(53),
  "VS_AMRNB_ULSilent_OccurNum" float(53),
  "VS_AMRWB_DLGarbledVoice_OccurNum" float(53),
  "VS_AMRWB_DLSilent_OccurNum" float(53),
  "VS_AMRWB_ULGarbledVoiceCorrect_Num" float(53),
  "VS_AMRWB_ULGarbledVoice_OccurNum" float(53),
  "VS_AMRWB_ULSilent_OccurNum" float(53),
  "VS_MultiRAB_CSVoicePPC_CSVoiceFrames" float(53),
  "VS_MultiRAB_CSVoiceTotalFrames" float(53),
  "VS_OrigCall_EstabDelay_Bad_Num_AMRNB" float(53),
  "VS_OrigCall_EstabDelay_Bad_Num_AMRWB" float(53),
  "VS_OrigCall_EstabDelay_Good_Num_AMRNB" float(53),
  "VS_OrigCall_EstabDelay_Good_Num_AMRWB" float(53),
  "VS_OrigCall_EstabDelay_Medium_Num_AMRNB" float(53),
  "VS_OrigCall_EstabDelay_Medium_Num_AMRWB" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB_CSFB_PSHO" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB_CSFB_Redir" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB_DCH" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB_FACH" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB_Idle" float(53),
  "VS_OrigCall_EstabMeanTime_AMRNB_PCH" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB_CSFB_PSHO" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB_CSFB_Redir" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB_DCH" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB_FACH" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB_Idle" float(53),
  "VS_OrigCall_EstabMeanTime_AMRWB_PCH" float(53),
  "VS_OrigCSCall_AttEstab_CSFB_PSHO" float(53),
  "VS_OrigCSCall_AttEstab_CSFB_Redir" float(53),
  "VS_OrigCSCall_AttEstab_DCH" float(53),
  "VS_OrigCSCall_AttEstab_FACH" float(53),
  "VS_OrigCSCall_AttEstab_Idle" float(53),
  "VS_OrigCSCall_AttEstab_PCH" float(53),
  "VS_OrigCSCall_SuccEstab_CSFB_PSHO" float(53),
  "VS_OrigCSCall_SuccEstab_CSFB_Redir" float(53),
  "VS_OrigCSCall_SuccEstab_DCH" float(53),
  "VS_OrigCSCall_SuccEstab_FACH" float(53),
  "VS_OrigCSCall_SuccEstab_Idle" float(53),
  "VS_OrigCSCall_SuccEstab_PCH" float(53),
  "VS_RAB_Rel_AMRNB_CNAbnormal" float(53),
  "VS_RAB_Rel_AMRNB_DL_LowQuality" float(53),
  "VS_RAB_Rel_AMRNB_UL_LowQuality" float(53),
  "VS_RAB_Rel_AMRWB_CNAbnormal" float(53),
  "VS_RAB_Rel_AMRWB_DL_LowQuality" float(53),
  "VS_RAB_Rel_AMRWB_UL_LowQuality" float(53),
  "VS_SingleRAB_CSVoicePPC_CSVoiceFrames" float(53),
  "VS_SingleRAB_CSVoiceTotalFrames" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Hard_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Hard_Handover";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Hard_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "HHO_FailRelocPrepOut_NoResAvail" float(53),
  "HHO_FailRelocPrepOut_OM" float(53),
  "HHO_FailRelocPrepOut_RelocUnsupp" float(53),
  "HHO_FailRelocPrepOut_ResUnavail" float(53),
  "HHO_FailRelocPrepOut_Texp" float(53),
  "HHO_FailRelocPrepOut_TgtFail" float(53),
  "HHO_FailRelocPrepOut_TgtNotAllow" float(53),
  "HHO_FailRelocPrepOut_Unspec" float(53),
  "VS_HHO_AttBlindHO" float(53),
  "VS_HHO_AttIn" float(53),
  "VS_HHO_AttInterCellLB_MultiRL" float(53),
  "VS_HHO_AttInterCellLB_SingleRL" float(53),
  "VS_HHO_AttInterFreqIn" float(53),
  "VS_HHO_AttInterFreqIn_CS" float(53),
  "VS_HHO_AttInterFreqIn_PS" float(53),
  "VS_HHO_AttInterFreqOut" float(53),
  "VS_HHO_AttInterFreqOut_CS" float(53),
  "VS_HHO_AttInterFreqOut_CSPS" float(53),
  "VS_HHO_AttInterFreqOut_CS_CLB" float(53),
  "VS_HHO_AttInterFreqOut_CS_Code" float(53),
  "VS_HHO_AttInterFreqOut_CS_DlCE" float(53),
  "VS_HHO_AttInterFreqOut_CS_Tcp" float(53),
  "VS_HHO_AttInterFreqOut_CS_TotalRxPwr" float(53),
  "VS_HHO_AttInterFreqOut_CS_TotalTxPwr" float(53),
  "VS_HHO_AttInterFreqOut_CS_TrigEcNo" float(53),
  "VS_HHO_AttInterFreqOut_CS_TrigRscp" float(53),
  "VS_HHO_AttInterFreqOut_CS_UeTxPwr" float(53),
  "VS_HHO_AttInterFreqOut_CS_UlCE" float(53),
  "VS_HHO_AttInterFreqOut_FastMultRLSetup_CS" float(53),
  "VS_HHO_AttInterFreqOut_FastMultRLSetup_PS" float(53),
  "VS_HHO_AttInterFreqOut_InterNodeBIntraRNC" float(53),
  "VS_HHO_AttInterFreqOut_InterRNC" float(53),
  "VS_HHO_AttInterFreqOut_IntraNodeB" float(53),
  "VS_HHO_AttInterFreqOut_PS" float(53),
  "VS_HHO_AttInterFreqOut_PS_CLB" float(53),
  "VS_HHO_AttInterFreqOut_PS_Code" float(53),
  "VS_HHO_AttInterFreqOut_PS_CoMacroMicro" float(53),
  "VS_HHO_AttInterFreqOut_PS_DlCE" float(53),
  "VS_HHO_AttInterFreqOut_PS_Tcp" float(53),
  "VS_HHO_AttInterFreqOut_PS_TotalRxPwr" float(53),
  "VS_HHO_AttInterFreqOut_PS_TotalTxPwr" float(53),
  "VS_HHO_AttInterFreqOut_PS_TrigEcNo" float(53),
  "VS_HHO_AttInterFreqOut_PS_TrigRscp" float(53),
  "VS_HHO_AttInterFreqOut_PS_UeTxPwr" float(53),
  "VS_HHO_AttInterFreqOut_PS_UlBler" float(53),
  "VS_HHO_AttInterFreqOut_PS_UlCE" float(53),
  "VS_HHO_AttInterFreqOut_Sig" float(53),
  "VS_HHO_AttInterFreqRelocExec" float(53),
  "VS_HHO_AttInterFreqRelocPrep" float(53),
  "VS_HHO_AttIntraFreqOut_InterNodeBIntraRNC" float(53),
  "VS_HHO_AttIntraFreqOut_InterRNC" float(53),
  "VS_HHO_AttIntraFreqOut_IntraNodeB" float(53),
  "VS_HHO_AttIntraFreqRelocExec" float(53),
  "VS_HHO_AttIntraFreqRelocPrep" float(53),
  "VS_HHO_AttMultiBandOut_CS" float(53),
  "VS_HHO_AttMultiBandOut_PS" float(53),
  "VS_HHO_EvalIn" float(53),
  "VS_HHO_EvalOut" float(53),
  "VS_HHO_FailInterFreqOut_CellUpdt" float(53),
  "VS_HHO_FailInterFreqOut_CfgUnsupp" float(53),
  "VS_HHO_FailInterFreqOut_InterRNC_CellUpdt" float(53),
  "VS_HHO_FailInterFreqOut_InterRNC_CfgUnsupp" float(53),
  "VS_HHO_FailInterFreqOut_InterRNC_InvCfg" float(53),
  "VS_HHO_FailInterFreqOut_InterRNC_ISR" float(53),
  "VS_HHO_FailInterFreqOut_InterRNC_NoReply" float(53),
  "VS_HHO_FailInterFreqOut_InterRNC_PhyChFail" float(53),
  "VS_HHO_FailInterFreqOut_InvCfg" float(53),
  "VS_HHO_FailInterFreqOut_ISR" float(53),
  "VS_HHO_FailInterFreqOut_NoReply" float(53),
  "VS_HHO_FailInterFreqOut_PrepFail" float(53),
  "VS_HHO_FailInterFreqOut_PyhChFail" float(53),
  "VS_HHO_FailInterFreqOut_RLSetupFail" float(53),
  "VS_HHO_FailIntraFreqOut_CellUpdt" float(53),
  "VS_HHO_FailIntraFreqOut_CfgUnsupp" float(53),
  "VS_HHO_FailIntraFreqOut_InterRNC_CellUpdt" float(53),
  "VS_HHO_FailIntraFreqOut_InterRNC_CfgUnsupp" float(53),
  "VS_HHO_FailIntraFreqOut_InterRNC_InvCfg" float(53),
  "VS_HHO_FailIntraFreqOut_InterRNC_ISR" float(53),
  "VS_HHO_FailIntraFreqOut_InterRNC_NoReply" float(53),
  "VS_HHO_FailIntraFreqOut_InterRNC_PhyChFail" float(53),
  "VS_HHO_FailIntraFreqOut_InvCfg" float(53),
  "VS_HHO_FailIntraFreqOut_ISR" float(53),
  "VS_HHO_FailIntraFreqOut_NoReply" float(53),
  "VS_HHO_FailIntraFreqOut_PrepFail" float(53),
  "VS_HHO_FailIntraFreqOut_PyhChFail" float(53),
  "VS_HHO_FailIntraFreqOut_RLSetupFail" float(53),
  "VS_HHO_InterFreqIn_Eval_CM" float(53),
  "VS_HHO_InterFreqOut_CS_Drop" float(53),
  "VS_HHO_InterFreqOut_CS_MeasTimeOut" float(53),
  "VS_HHO_InterFreqOut_Eval_CM" float(53),
  "VS_HHO_InterFreqOut_FastMultRLSetup_Prep_CS" float(53),
  "VS_HHO_InterFreqOut_FastMultRLSetup_Prep_PS" float(53),
  "VS_HHO_InterFreqOut_PS_Drop" float(53),
  "VS_HHO_InterFreqOut_PS_MeasTimeOut" float(53),
  "VS_HHO_IntraFreqOut_Drop" float(53),
  "VS_HHO_SuccBlindHO" float(53),
  "VS_HHO_SuccIn" float(53),
  "VS_HHO_SuccInterCellLB_MultiRL" float(53),
  "VS_HHO_SuccInterCellLB_SingleRL" float(53),
  "VS_HHO_SuccInterFreqIn" float(53),
  "VS_HHO_SuccInterFreqIn_CS" float(53),
  "VS_HHO_SuccInterFreqIn_PS" float(53),
  "VS_HHO_SuccInterFreqOut" float(53),
  "VS_HHO_SuccInterFreqOut_CS" float(53),
  "VS_HHO_SuccInterFreqOut_CSPS" float(53),
  "VS_HHO_SuccInterFreqOut_CS_CLB" float(53),
  "VS_HHO_SuccInterFreqOut_CS_Code" float(53),
  "VS_HHO_SuccInterFreqOut_CS_DlCE" float(53),
  "VS_HHO_SuccInterFreqOut_CS_EcNo" float(53),
  "VS_HHO_SuccInterFreqOut_CS_Rscp" float(53),
  "VS_HHO_SuccInterFreqOut_CS_Tcp" float(53),
  "VS_HHO_SuccInterFreqOut_CS_TotalRxPwr" float(53),
  "VS_HHO_SuccInterFreqOut_CS_TotalTxPwr" float(53),
  "VS_HHO_SuccInterFreqOut_CS_UeTxPwr" float(53),
  "VS_HHO_SuccInterFreqOut_CS_UlCE" float(53),
  "VS_HHO_SuccInterFreqOut_FastMultRLSetup_CS" float(53),
  "VS_HHO_SuccInterFreqOut_FastMultRLSetup_PS" float(53),
  "VS_HHO_SuccInterFreqOut_InterNodeBIntraRNC" float(53),
  "VS_HHO_SuccInterFreqOut_InterRNC" float(53),
  "VS_HHO_SuccInterFreqOut_IntraNodeB" float(53),
  "VS_HHO_SuccInterFreqOut_PS" float(53),
  "VS_HHO_SuccInterFreqOut_PS_CLB" float(53),
  "VS_HHO_SuccInterFreqOut_PS_Code" float(53),
  "VS_HHO_SuccInterFreqOut_PS_CoMacroMicro" float(53),
  "VS_HHO_SuccInterFreqOut_PS_DlCE" float(53),
  "VS_HHO_SuccInterFreqOut_PS_EcNo" float(53),
  "VS_HHO_SuccInterFreqOut_PS_Rscp" float(53),
  "VS_HHO_SuccInterFreqOut_PS_Tcp" float(53),
  "VS_HHO_SuccInterFreqOut_PS_TotalRxPwr" float(53),
  "VS_HHO_SuccInterFreqOut_PS_TotalTxPwr" float(53),
  "VS_HHO_SuccInterFreqOut_PS_UeTxPwr" float(53),
  "VS_HHO_SuccInterFreqOut_PS_UlBler" float(53),
  "VS_HHO_SuccInterFreqOut_PS_UlCE" float(53),
  "VS_HHO_SuccInterFreqOut_Sig" float(53),
  "VS_HHO_SuccInterFreqRelocExec" float(53),
  "VS_HHO_SuccInterFreqRelocPrep" float(53),
  "VS_HHO_SuccIntraFreqOut_InterNodeBIntraRNC" float(53),
  "VS_HHO_SuccIntraFreqOut_InterRNC" float(53),
  "VS_HHO_SuccIntraFreqOut_IntraNodeB" float(53),
  "VS_HHO_SuccIntraFreqRelocExec" float(53),
  "VS_HHO_SuccIntraFreqRelocPrep" float(53),
  "VS_HHO_SuccMultiBandOut_CS" float(53),
  "VS_HHO_SuccMultiBandOut_PS" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@HSDPA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@HSDPA";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@HSDPA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_HSDPA_3C_PRIM_UE_Mean_Cell" float(53),
  "VS_HSDPA_4C_PRIM_UE_Mean_Cell" float(53),
  "VS_HSDPA_64QAM_UE_Mean_Cell" float(53),
  "VS_HSDPA_CopperUE_Mean_Cell" float(53),
  "VS_HSDPA_D2H_Att" float(53),
  "VS_HSDPA_D2H_Succ" float(53),
  "VS_HSDPA_DB_PRIM_UE_Mean_Cell" float(53),
  "VS_HSDPA_DC_PRIM_UE_Mean_Cell" float(53),
  "VS_HSDPA_DC_SEC_UE_Mean_Cell" float(53),
  "VS_HSDPA_DRD_AttIn_Intelligence" float(53),
  "VS_HSDPA_DRD_AttOut_Intelligence" float(53),
  "VS_HSDPA_DRD_SuccIn_Intelligence" float(53),
  "VS_HSDPA_DRD_SuccOut_Intelligence" float(53),
  "VS_HSDPA_F2H_Att" float(53),
  "VS_HSDPA_F2H_Succ" float(53),
  "VS_HSDPA_GoldenUE_Mean_Cell" float(53),
  "VS_HSDPA_H2D_Att" float(53),
  "VS_HSDPA_H2D_Succ" float(53),
  "VS_HSDPA_H2F_Att" float(53),
  "VS_HSDPA_H2F_Succ" float(53),
  "VS_HSDPA_HHO_H2D_AttOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2D_AttOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2D_AttOutIur" float(53),
  "VS_HSDPA_HHO_H2D_SuccOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2D_SuccOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2D_SuccOutIur" float(53),
  "VS_HSDPA_HHO_H2H_AttOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2H_AttOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2H_AttOutIur" float(53),
  "VS_HSDPA_HHO_H2H_SuccOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2H_SuccOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2H_SuccOutIur" float(53),
  "VS_HSDPA_HighImbalance_Time" float(53),
  "VS_HSDPA_MACD_AttSetup" float(53),
  "VS_HSDPA_MACD_Mean_Cell" float(53),
  "VS_HSDPA_MACD_SuccSetup" float(53),
  "VS_HSDPA_MC_SEC_UE_Mean_Cell" float(53),
  "VS_HSDPA_MeanChThroughput" float(53),
  "VS_HSDPA_MeanChThroughput_TotalBytes" float(53),
  "VS_HSDPA_MeanChThrouput_HighLoad" float(53),
  "VS_HSDPA_MeanCopperBeChThroughput" float(53),
  "VS_HSDPA_MeanCopperBeChThroughput_TotalBytes" float(53),
  "VS_HSDPA_MeanGoldenBeChThroughput" float(53),
  "VS_HSDPA_MeanGoldenBeChThroughput_TotalBytes" float(53),
  "VS_HSDPA_MeanSilverBeChThroughput" float(53),
  "VS_HSDPA_MeanSilverBeChThroughput_TotalBytes" float(53),
  "VS_HSDPA_MidImbalance_Time" float(53),
  "VS_HSDPA_MIMO64QAM_UE_Mean_Cell" float(53),
  "VS_HSDPA_MIMO_UE_Mean_Cell" float(53),
  "VS_HSDPA_RAB_3CMIMO_AttEstab" float(53),
  "VS_HSDPA_RAB_3CMIMO_SuccEstab" float(53),
  "VS_HSDPA_RAB_3C_AttEstab" float(53),
  "VS_HSDPA_RAB_3C_SuccEstab" float(53),
  "VS_HSDPA_RAB_4CMIMO_AttEstab" float(53),
  "VS_HSDPA_RAB_4CMIMO_SuccEstab" float(53),
  "VS_HSDPA_RAB_4C_AttEstab" float(53),
  "VS_HSDPA_RAB_4C_SuccEstab" float(53),
  "VS_HSDPA_RAB_64QAM_AttEstab" float(53),
  "VS_HSDPA_RAB_64QAM_SuccEstab" float(53),
  "VS_HSDPA_RAB_AbnormRel" float(53),
  "VS_HSDPA_RAB_AbnormRel_3C" float(53),
  "VS_HSDPA_RAB_AbnormRel_3C2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_3CMIMO" float(53),
  "VS_HSDPA_RAB_AbnormRel_3CMIMO2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_4C" float(53),
  "VS_HSDPA_RAB_AbnormRel_4C2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_4CMIMO" float(53),
  "VS_HSDPA_RAB_AbnormRel_4CMIMO2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_64QAM" float(53),
  "VS_HSDPA_RAB_AbnormRel_64QAM2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_CellDCH_CellUpdt" float(53),
  "VS_HSDPA_RAB_AbnormRel_DB" float(53),
  "VS_HSDPA_RAB_AbnormRel_DB2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_DBMIMO" float(53),
  "VS_HSDPA_RAB_AbnormRel_DBMIMO2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_DC" float(53),
  "VS_HSDPA_RAB_AbnormRel_DC2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_DCMIMO2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_H2F" float(53),
  "VS_HSDPA_RAB_AbnormRel_H2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO64QAM" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO64QAM2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_RF" float(53),
  "VS_HSDPA_RAB_AbnormRel_SRBoH" float(53),
  "VS_HSDPA_RAB_AbnormRel_SRBoH_H2P" float(53),
  "VS_HSDPA_RAB_AttEstab" float(53),
  "VS_HSDPA_RAB_AttEstab_BE_Copper" float(53),
  "VS_HSDPA_RAB_AttEstab_BE_Golden" float(53),
  "VS_HSDPA_RAB_AttEstab_BE_Silver" float(53),
  "VS_HSDPA_RAB_DBMIMO_AttEstab" float(53),
  "VS_HSDPA_RAB_DBMIMO_SuccEstab" float(53),
  "VS_HSDPA_RAB_DB_AttEstab" float(53),
  "VS_HSDPA_RAB_DB_SuccEstab" float(53),
  "VS_HSDPA_RAB_DCMIMO_AbnormRel" float(53),
  "VS_HSDPA_RAB_DCMIMO_AttEstab" float(53),
  "VS_HSDPA_RAB_DCMIMO_NormRel" float(53),
  "VS_HSDPA_RAB_DCMIMO_SuccEstab" float(53),
  "VS_HSDPA_RAB_DC_AttEstab" float(53),
  "VS_HSDPA_RAB_DC_SuccEstab" float(53),
  "VS_HSDPA_RAB_FailEstab_DLIUBBand_Cong" float(53),
  "VS_HSDPA_RAB_FailEstab_DLPower_Cong" float(53),
  "VS_HSDPA_RAB_MIMO64QAM_AttEstab" float(53),
  "VS_HSDPA_RAB_MIMO64QAM_SuccEstab" float(53),
  "VS_HSDPA_RAB_MIMO_AttEstab" float(53),
  "VS_HSDPA_RAB_MIMO_SuccEstab" float(53),
  "VS_HSDPA_RAB_NormRel" float(53),
  "VS_HSDPA_RAB_NormRel_3C" float(53),
  "VS_HSDPA_RAB_NormRel_3CMIMO" float(53),
  "VS_HSDPA_RAB_NormRel_3CMIMO_All" float(53),
  "VS_HSDPA_RAB_NormRel_3C_All" float(53),
  "VS_HSDPA_RAB_NormRel_4C" float(53),
  "VS_HSDPA_RAB_NormRel_4CMIMO" float(53),
  "VS_HSDPA_RAB_NormRel_4CMIMO_All" float(53),
  "VS_HSDPA_RAB_NormRel_4C_All" float(53),
  "VS_HSDPA_RAB_NormRel_64QAM" float(53),
  "VS_HSDPA_RAB_NormRel_64QAM_All" float(53),
  "VS_HSDPA_RAB_NormRel_DB" float(53),
  "VS_HSDPA_RAB_NormRel_DBMIMO" float(53),
  "VS_HSDPA_RAB_NormRel_DBMIMO_All" float(53),
  "VS_HSDPA_RAB_NormRel_DB_All" float(53),
  "VS_HSDPA_RAB_NormRel_DC" float(53),
  "VS_HSDPA_RAB_NormRel_DCMIMO_All" float(53),
  "VS_HSDPA_RAB_NormRel_DC_All" float(53),
  "VS_HSDPA_RAB_NormRel_MIMO" float(53),
  "VS_HSDPA_RAB_NormRel_MIMO64QAM" float(53),
  "VS_HSDPA_RAB_NormRel_MIMO64QAM_All" float(53),
  "VS_HSDPA_RAB_NormRel_MIMO_All" float(53),
  "VS_HSDPA_RAB_NormRel_SRBoH_All" float(53),
  "VS_HSDPA_RAB_NormRel_UsrInact" float(53),
  "VS_HSDPA_RAB_SuccEstab" float(53),
  "VS_HSDPA_RAB_SuccEstab_BE_Copper" float(53),
  "VS_HSDPA_RAB_SuccEstab_BE_Golden" float(53),
  "VS_HSDPA_RAB_SuccEstab_BE_Silver" float(53),
  "VS_HSDPA_SamplesThroughput" float(53),
  "VS_HSDPA_SHO_IubBasedServCellChg_AttOut" float(53),
  "VS_HSDPA_SHO_IubBasedServCellChg_SuccOut" float(53),
  "VS_HSDPA_SHO_ServCellChg_AttOut" float(53),
  "VS_HSDPA_SHO_ServCellChg_AttOutIur" float(53),
  "VS_HSDPA_SHO_ServCellChg_SuccOut" float(53),
  "VS_HSDPA_SHO_ServCellChg_SuccOutIur" float(53),
  "VS_HSDPA_SilverUE_Mean_Cell" float(53),
  "VS_HSDPA_SRBoH_UE_Mean_Cell" float(53),
  "VS_HSDPA_SumThroughput" float(53),
  "VS_HSDPA_Traffic_HighLoad" float(53),
  "VS.HSDPA.Traffic.LowMBR0" float(53),
  "VS.HSDPA.Traffic.LowMBR1" float(53),
  "VS_HSDPA_UE_Max_CAT11_12" float(53),
  "VS_HSDPA_UE_Max_CAT13_14" float(53),
  "VS_HSDPA_UE_Max_CAT15_16" float(53),
  "VS_HSDPA_UE_Max_CAT17_20" float(53),
  "VS_HSDPA_UE_Max_CAT1_6" float(53),
  "VS_HSDPA_UE_Max_CAT21_24" float(53),
  "VS_HSDPA_UE_Max_CAT25_28" float(53),
  "VS_HSDPA_UE_Max_CAT29" float(53),
  "VS_HSDPA_UE_Max_CAT30" float(53),
  "VS_HSDPA_UE_Max_CAT31" float(53),
  "VS_HSDPA_UE_Max_CAT32" float(53),
  "VS_HSDPA_UE_Max_CAT7_10" float(53),
  "VS_HSDPA_UE_Max_Cell" float(53),
  "VS_HSDPA_UE_Max_Cell_Free" float(53),
  "VS_HSDPA_UE_Mean_CAT11_12" float(53),
  "VS_HSDPA_UE_Mean_CAT13_14" float(53),
  "VS_HSDPA_UE_Mean_CAT15_16" float(53),
  "VS_HSDPA_UE_Mean_CAT17_20" float(53),
  "VS_HSDPA_UE_Mean_CAT1_6" float(53),
  "VS_HSDPA_UE_Mean_CAT21_24" float(53),
  "VS_HSDPA_UE_Mean_CAT25_28" float(53),
  "VS_HSDPA_UE_Mean_CAT29" float(53),
  "VS_HSDPA_UE_Mean_CAT30" float(53),
  "VS_HSDPA_UE_Mean_CAT31" float(53),
  "VS_HSDPA_UE_Mean_CAT32" float(53),
  "VS_HSDPA_UE_Mean_CAT7_10" float(53),
  "VS_HSDPA_UE_Mean_Cell" float(53),
  "VS_HSDPA_UE_Mean_Cell_Free" float(53),
  "VS_PS_Conv_Kbps_HSDSCH" float(53),
  "VS_PS_Conv_Traffic_HSDSCH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@HSUPA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@HSUPA";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@HSUPA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_HSUPA_16QAM_UE_Mean_Cell" float(53),
  "VS_HSUPA_BoostingCPC_UE_Mean_Cell" float(53),
  "VS_HSUPA_Boosting_UE_Mean_Cell" float(53),
  "VS_HSUPA_CopperBeMeanChThroughput" float(53),
  "VS_HSUPA_CopperBeMeanChThroughput_TotalBytes" float(53),
  "VS_HSUPA_CopperUE_Mean_Cell" float(53),
  "VS_HSUPA_D2E_Att" float(53),
  "VS_HSUPA_D2E_Succ" float(53),
  "VS_HSUPA_DC_PRIM_UE_Mean_Cell" float(53),
  "VS_HSUPA_DC_SEC_UE_Mean_Cell" float(53),
  "VS_HSUPA_E2D_Att" float(53),
  "VS_HSUPA_E2D_Succ" float(53),
  "VS_HSUPA_E2F_Att" float(53),
  "VS_HSUPA_E2F_Succ" float(53),
  "VS_HSUPA_F2E_Att" float(53),
  "VS_HSUPA_F2E_Succ" float(53),
  "VS_HSUPA_FlexPCLowRate_UE_Mean_TTI10ms" float(53),
  "VS_HSUPA_FlexPCLowRate_UE_Mean_TTI2ms" float(53),
  "VS_HSUPA_GoldenBeMeanChThroughput" float(53),
  "VS_HSUPA_GoldenBeMeanChThroughput_TotalBytes" float(53),
  "VS_HSUPA_GoldenUE_Mean_Cell" float(53),
  "VS_HSUPA_HARQ_POReCfgAtt_TTI10ms" float(53),
  "VS_HSUPA_HARQ_POReCfgAtt_TTI2ms" float(53),
  "VS_HSUPA_HARQ_POReCfgSucc_TTI10ms" float(53),
  "VS_HSUPA_HARQ_POReCfgSucc_TTI2ms" float(53),
  "VS_HSUPA_HHO_E2D_AttOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2D_AttOutIntraFreq" float(53),
  "VS_HSUPA_HHO_E2D_AttOutIur" float(53),
  "VS_HSUPA_HHO_E2D_SuccOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2D_SuccOutIntraFreq" float(53),
  "VS_HSUPA_HHO_E2D_SuccOutIur" float(53),
  "VS_HSUPA_HHO_E2E_AttOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2E_AttOutIntraFreq" float(53),
  "VS_HSUPA_HHO_E2E_AttOutIur" float(53),
  "VS_HSUPA_HHO_E2E_SuccOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2E_SuccOutIntraFreq" float(53),
  "VS_HSUPA_HHO_E2E_SuccOutIur" float(53),
  "VS_HSUPA_MACD_AttSetup" float(53),
  "VS_HSUPA_MACD_SuccSetup" float(53),
  "VS_HSUPA_MeanChThroughput" float(53),
  "VS_HSUPA_MeanChThroughput_TotalBytes" float(53),
  "VS_HSUPA_RABEstabTTI10ms_AdmCE_Succ" float(53),
  "VS_HSUPA_RABEstabTTI10ms_Cover_Succ" float(53),
  "VS.HSUPA.RABEstabTTI10ms.Max2msUserNum.Succ" float(53),
  "VS_HSUPA_RABEstabTTI10ms_ResIUB_Succ" float(53),
  "VS_HSUPA_RABEstabTTI10ms_ResRTWP_Succ" float(53),
  "VS_HSUPA_RABEstabTTI10ms_ResUsedCE_Succ" float(53),
  "VS_HSUPA_RAB_16QAM_AttEstab" float(53),
  "VS_HSUPA_RAB_16QAM_SuccEstab" float(53),
  "VS_HSUPA_RAB_AbnormRel" float(53),
  "VS_HSUPA_RAB_AbnormRel_16QAM" float(53),
  "VS_HSUPA_RAB_AbnormRel_16QAM2P" float(53),
  "VS_HSUPA_RAB_AbnormRel_Boosting" float(53),
  "VS_HSUPA_RAB_AbnormRel_DC2P" float(53),
  "VS_HSUPA_RAB_AbnormRel_E2P" float(53),
  "VS_HSUPA_RAB_AbnormRel_RF" float(53),
  "VS_HSUPA_RAB_AbnormRel_SRBoE_AboveR8" float(53),
  "VS_HSUPA_RAB_AttEstab" float(53),
  "VS_HSUPA_RAB_AttEstab_BE_Copper" float(53),
  "VS_HSUPA_RAB_AttEstab_BE_Golden" float(53),
  "VS_HSUPA_RAB_AttEstab_BE_Silver" float(53),
  "VS_HSUPA_RAB_Boosting_AttEstab" float(53),
  "VS_HSUPA_RAB_Boosting_SuccEstab" float(53),
  "VS_HSUPA_RAB_DC_AbnormRel" float(53),
  "VS_HSUPA_RAB_DC_AttEstab" float(53),
  "VS_HSUPA_RAB_DC_NormRel" float(53),
  "VS_HSUPA_RAB_DC_SuccEstab" float(53),
  "VS_HSUPA_RAB_FailEstab_ULCE_Cong" float(53),
  "VS_HSUPA_RAB_FailEstab_ULIUBBand_Cong" float(53),
  "VS_HSUPA_RAB_FailEstab_ULPower_Cong" float(53),
  "VS_HSUPA_RAB_NormRel" float(53),
  "VS_HSUPA_RAB_NormRel_16QAM" float(53),
  "VS_HSUPA_RAB_NormRel_16QAM_All" float(53),
  "VS_HSUPA_RAB_NormRel_Boosting" float(53),
  "VS_HSUPA_RAB_NormRel_DC_All" float(53),
  "VS_HSUPA_RAB_NormRel_SRBoE_AboveR8" float(53),
  "VS_HSUPA_RAB_NormRel_UEGen" float(53),
  "VS_HSUPA_RAB_SuccEstab" float(53),
  "VS_HSUPA_RAB_SuccEstab_BE_Copper" float(53),
  "VS_HSUPA_RAB_SuccEstab_BE_Golden" float(53),
  "VS_HSUPA_RAB_SuccEstab_BE_Silver" float(53),
  "VS_HSUPA_RsnLarge2Small_TTI10ms" float(53),
  "VS_HSUPA_RsnLarge2Small_TTI2ms" float(53),
  "VS_HSUPA_RsnSmall2Large_TTI10ms" float(53),
  "VS_HSUPA_RsnSmall2Large_TTI2ms" float(53),
  "VS_HSUPA_SamplesThroughput" float(53),
  "VS_HSUPA_SHO_AttOut" float(53),
  "VS_HSUPA_SHO_ServCellChg_AttOut" float(53),
  "VS_HSUPA_SHO_ServCellChg_AttOutIur" float(53),
  "VS_HSUPA_SHO_ServCellChg_SuccOut" float(53),
  "VS_HSUPA_SHO_ServCellChg_SuccOutIur" float(53),
  "VS_HSUPA_SHO_SuccOut" float(53),
  "VS_HSUPA_SilverBeMeanChThroughput" float(53),
  "VS_HSUPA_SilverBeMeanChThroughput_TotalBytes" float(53),
  "VS_HSUPA_SilverUE_Mean_Cell" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI10ms_ULActualPowerLoad_0" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI10ms_ULActualPowerLoad_1" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI10ms_ULActualPowerLoad_2" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI10ms_ULActualPowerLoad_3" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI10ms_ULActualPowerLoad_4" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI2ms_ULActualPowerLoad_0" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI2ms_ULActualPowerLoad_1" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI2ms_ULActualPowerLoad_2" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI2ms_ULActualPowerLoad_3" float(53),
  "VS_HSUPA_SingleBE_Mean_TTI2ms_ULActualPowerLoad_4" float(53),
  "VS_HSUPA_SumThroughput" float(53),
  "VS_HSUPA_TTI10to2_Att" float(53),
  "VS_HSUPA_TTI10to2_Succ" float(53),
  "VS_HSUPA_TTI2to10_Att" float(53),
  "VS_HSUPA_TTI2to10_Succ" float(53),
  "VS_HSUPA_UE_Max_CAT1_4" float(53),
  "VS_HSUPA_UE_Max_CAT5" float(53),
  "VS_HSUPA_UE_Max_CAT6" float(53),
  "VS_HSUPA_UE_Max_CAT7" float(53),
  "VS_HSUPA_UE_Max_CAT8" float(53),
  "VS_HSUPA_UE_Max_CAT9" float(53),
  "VS_HSUPA_UE_Max_Cell" float(53),
  "VS_HSUPA_UE_Max_TTI10ms" float(53),
  "VS_HSUPA_UE_Max_TTI2ms" float(53),
  "VS_HSUPA_UE_Mean_CAT1_4" float(53),
  "VS_HSUPA_UE_Mean_CAT5" float(53),
  "VS_HSUPA_UE_Mean_CAT6" float(53),
  "VS_HSUPA_UE_Mean_CAT7" float(53),
  "VS_HSUPA_UE_Mean_CAT8" float(53),
  "VS_HSUPA_UE_Mean_CAT9" float(53),
  "VS_HSUPA_UE_Mean_Cell" float(53),
  "VS_HSUPA_UE_Mean_TTI10ms" float(53),
  "VS_HSUPA_UE_Mean_TTI2ms" float(53),
  "VS_MultiRAB_FlexPCLowRate_UE_Mean_TTI10ms" float(53),
  "VS_MultiRAB_FlexPCLowRate_UE_Mean_TTI2ms" float(53),
  "VS_PS_Conv_Kbps_EDCH" float(53),
  "VS_PS_Conv_Traffic_EDCH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Inter-RAT_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Inter-RAT_Handover";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Inter-RAT_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "IRATHO_AttOutCS" float(53),
  "IRATHO_AttOutCS_Retry" float(53),
  "IRATHO_AttOutPSUTRAN" float(53),
  "IRATHO_AttOutPSUTRAN_Retry" float(53),
  "IRATHO_AttRelocPrepOutCS" float(53),
  "IRATHO_FailOutCS_CfgUnsupp" float(53),
  "IRATHO_FailOutCS_PhyChFail" float(53),
  "IRATHO_FailOutPSUTRAN_CfgUnsupp" float(53),
  "IRATHO_FailOutPSUTRAN_PhyChFail" float(53),
  "IRATHO_FailRelocPrepOutCS_HigherTrafficLod" float(53),
  "IRATHO_FailRelocPrepOutCS_NoResAvail" float(53),
  "IRATHO_FailRelocPrepOutCS_ReloNoSup" float(53),
  "IRATHO_FailRelocPrepOutCS_TAlExp" float(53),
  "IRATHO_FailRelocPrepOutCS_TgtFail" float(53),
  "IRATHO_FailRelocPrepOutCS_UKnowRNC" float(53),
  "IRATHO_SuccOutCS" float(53),
  "IRATHO_SuccOutPSUE" float(53),
  "IRATHO_SuccOutPSUTRAN" float(53),
  "IRATHO_SuccRelocPrepOutCS" float(53),
  "VS_IRATHOCS_Cancel_ReEstab" float(53),
  "VS_IRATHOPS_Cancel_ReEstab" float(53),
  "VS_IRATHO_AttENACC" float(53),
  "VS_IRATHO_AttInCS" float(53),
  "VS_IRATHO_AttNACC" float(53),
  "VS_IRATHO_AttOutCS_MBDR" float(53),
  "VS_IRATHO_AttOutCS_Sig" float(53),
  "VS_IRATHO_AttOutCS_TrigDLTxp" float(53),
  "VS_IRATHO_AttOutCS_TrigEcNo" float(53),
  "VS_IRATHO_AttOutCS_TrigRscp" float(53),
  "VS_IRATHO_AttOutCS_TrigULTxp" float(53),
  "VS_IRATHO_AttOutMultiRABCSPS" float(53),
  "VS_IRATHO_AttOutPSUE" float(53),
  "VS_IRATHO_AttOutPSUTRAN_Load" float(53),
  "VS_IRATHO_AttOutPSUTRAN_RF" float(53),
  "VS_IRATHO_AttOutPSUTRAN_Service" float(53),
  "VS_IRATHO_AttOutPSUTRAN_Sig" float(53),
  "VS_IRATHO_AttOutPS_TrigDLTxp" float(53),
  "VS_IRATHO_AttOutPS_TrigEcNo" float(53),
  "VS_IRATHO_AttOutPS_TrigRscp" float(53),
  "VS_IRATHO_AttOutPS_TrigULTxp" float(53),
  "VS_IRATHO_AttRelocOutPS" float(53),
  "VS_IRATHO_AttRelocPrepInCS" float(53),
  "VS_IRATHO_AttRelocPrepInPS" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_DR" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_Load" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_RF" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_Service" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_Sig" float(53),
  "VS_IRATHO_AttRelocPrepOutPS" float(53),
  "VS_IRATHO_FailInCS_NoReply" float(53),
  "VS_IRATHO_FailOutCS_Abort" float(53),
  "VS_IRATHO_FailOutCS_CNUnspecFail" float(53),
  "VS_IRATHO_FailOutCS_InterRatRF" float(53),
  "VS_IRATHO_FailOutCS_NoReply" float(53),
  "VS_IRATHO_FailOutCS_SCRI" float(53),
  "VS_IRATHO_FailOutPS" float(53),
  "VS_IRATHO_FailOutPSUTRAN_CNUnspecFail" float(53),
  "VS_IRATHO_FailOutPSUTRAN_InterRatRF" float(53),
  "VS_IRATHO_FailOutPSUTRAN_NoReply" float(53),
  "VS_IRATHO_FailOutPSUTRAN_NoSRNSDataForwardCmd" float(53),
  "VS_IRATHO_FailOutPSUTRAN_SCRI" float(53),
  "VS_IRATHO_FailOutPS_Abort" float(53),
  "VS_IRATHO_FailOutPS_UEGen" float(53),
  "VS_IRATHO_FailRelocInPS_NoReply" float(53),
  "VS_IRATHO_FailRelocOutPS_CfgUnSupp" float(53),
  "VS_IRATHO_FailRelocOutPS_NoReply" float(53),
  "VS_IRATHO_FailRelocOutPS_PhyChFail" float(53),
  "VS_IRATHO_FailRelocPrepInCS_Abort" float(53),
  "VS_IRATHO_FailRelocPrepInCS_ResUnavail" float(53),
  "VS_IRATHO_FailRelocPrepInCS_TgtHighLoad" float(53),
  "VS_IRATHO_FailRelocPrepInCS_TRNCSysFailReloc" float(53),
  "VS_IRATHO_FailRelocPrepInCS_TRNCSysRelocUnsupp" float(53),
  "VS_IRATHO_FailRelocPrepInPS_ReloUnSupp" float(53),
  "VS_IRATHO_FailRelocPrepInPS_ResUnavail" float(53),
  "VS_IRATHO_FailRelocPrepInPS_TgtFail" float(53),
  "VS_IRATHO_FailRelocPrepInPS_TgtHighLoad" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_Abort" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_Cancel" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_CNNoReply" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_ReqInfoNotAvail" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_NoResAvail" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_ReloUnSupp" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_TAlExp" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_TgtFail" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_TgtHighLoad" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_UnKnowRNC" float(53),
  "VS_IRATHO_HSDPA_AttOutPSUTRAN" float(53),
  "VS_IRATHO_HSDPA_SuccOutPSUTRAN" float(53),
  "VS_IRATHO_HSUPA_AttOutPSUTRAN" float(53),
  "VS_IRATHO_HSUPA_SuccOutPSUTRAN" float(53),
  "VS_IRATHO_OutCS_MeasTimeOut" float(53),
  "VS_IRATHO_OutPS_MeasTimeOut" float(53),
  "VS_IRATHO_SuccENACC" float(53),
  "VS_IRATHO_SuccInCS" float(53),
  "VS_IRATHO_SuccNACC" float(53),
  "VS_IRATHO_SuccOutCS_DR" float(53),
  "VS_IRATHO_SuccOutCS_Load" float(53),
  "VS_IRATHO_SuccOutCS_MBDR" float(53),
  "VS_IRATHO_SuccOutCS_RF" float(53),
  "VS_IRATHO_SuccOutCS_Service" float(53),
  "VS_IRATHO_SuccOutCS_Sig" float(53),
  "VS_IRATHO_SuccOutCS_TrigDLTxp" float(53),
  "VS_IRATHO_SuccOutCS_TrigEcNo" float(53),
  "VS_IRATHO_SuccOutCS_TrigRscp" float(53),
  "VS_IRATHO_SuccOutCS_TrigULTxp" float(53),
  "VS_IRATHO_SuccOutMultiRABCSPS" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_Load" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_RF" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_Service" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_Sig" float(53),
  "VS_IRATHO_SuccOutPS_TrigDLTxp" float(53),
  "VS_IRATHO_SuccOutPS_TrigEcNo" float(53),
  "VS_IRATHO_SuccOutPS_TrigRscp" float(53),
  "VS_IRATHO_SuccOutPS_TrigULTxp" float(53),
  "VS_IRATHO_SuccRelocInPS" float(53),
  "VS_IRATHO_SuccRelocOutPS" float(53),
  "VS_IRATHO_SuccRelocPrepInCS" float(53),
  "VS_IRATHO_SuccRelocPrepInPS" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_DR" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_Load" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_RF" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_Service" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_Sig" float(53),
  "VS_IRATHO_SuccRelocPrepOutPS" float(53),
  "VS_L2U_AttRelocPrepInPS" float(53),
  "VS_L2U_AttRelocPrepInPS_CS_CELL" float(53),
  "VS_L2U_AttRelocPrepIn_UltraFlashCSFB" float(53),
  "VS_L2U_IRATHO_FailRelocInCS_NoReply" float(53),
  "VS_L2U_IRATHO_FailRelocInPS_NoReply" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInCS_Abort" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInCS_RelocUnSupp" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInCS_ResUnavail" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInCS_TgtFail" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInCS_TgtHighLoad" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInPS_Abort" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInPS_ReloUnSupp" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInPS_ResUnavail" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInPS_TgtFail" float(53),
  "VS_L2U_IRATHO_FailRelocPrepInPS_TgtHighLoad" float(53),
  "VS_L2U_SuccRelocInPS" float(53),
  "VS_L2U_SuccRelocInPS_CS_CELL" float(53),
  "VS_L2U_SuccRelocIn_UltraFlashCSFB" float(53),
  "VS_L2U_SuccRelocPrepInPS" float(53),
  "VS_L2U_SuccRelocPrepInPS_CS_CELL" float(53),
  "VS_L2U_SuccRelocPrepIn_UltraFlashCSFB" float(53),
  "VS_SRVCC_FailRelocPrepInCSPS_CSTimeOut" float(53),
  "VS_SRVCC_FailRelocPrepInCSPS_PSTimeOut" float(53),
  "VS_SRVCC_L2U_AttInCSPS" float(53),
  "VS_SRVCC_L2U_AttRelocPrepInCS" float(53),
  "VS_SRVCC_L2U_AttRelocPrepInCSPS" float(53),
  "VS_SRVCC_L2U_AttRelocPrepInCSPS_Emerg" float(53),
  "VS_SRVCC_L2U_AttRelocPrepInCS_Emerg" float(53),
  "VS_SRVCC_L2U_SuccInCSPS" float(53),
  "VS_SRVCC_L2U_SuccRelocInCS" float(53),
  "VS_SRVCC_L2U_SuccRelocInCSPS_Emerg" float(53),
  "VS_SRVCC_L2U_SuccRelocInCS_Emerg" float(53),
  "VS_SRVCC_L2U_SuccRelocPrepInCS" float(53),
  "VS_SRVCC_L2U_SuccRelocPrepInCSPS" float(53),
  "VS_SRVCC_L2U_SuccRelocPrepInCSPS_Emerg" float(53),
  "VS_SRVCC_L2U_SuccRelocPrepInCS_Emerg" float(53),
  "VS_SRVCC_U2GERAN_AttRelocPrepOutPS" float(53),
  "VS_SRVCC_U2GERAN_SuccRelocOutPS" float(53),
  "VS_SRVCC_U2GERAN_SuccRelocPrepOutPS" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "VS_IRATHO_FailRelocPrepOutCS_OM" float(53)
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttRecfg_DCH0K_HSDPA_64QAM_Upsizing" float(53),
  "VS_AttRecfg_DCH0K_HSDPA_DC_Upsizing" float(53),
  "VS_AttRecfg_DCH0K_HSDPA_Upsizing" float(53),
  "VS_AttRecfg_DCH0K_HSUPA_Upsizing" float(53),
  "VS_AttRecfg_DCH0K_Upsizing" float(53),
  "VS_AttRecfg_F2D_DataTransTrig" float(53),
  "VS_AttRecfg_F2E_DataTransTrig" float(53),
  "VS_AttRecfg_F2H_DataTransTrig" float(53),
  "VS_AttRecfg_P2D_DataTransTrig" float(53),
  "VS_AttRecfg_P2E_DataTransTrig" float(53),
  "VS_AttRecfg_P2H_DataTransTrig" float(53),
  "VS_AttRecfg_Rep_F2D_DataTransTrig" float(53),
  "VS_AttRecfg_Rep_F2E_DataTransTrig" float(53),
  "VS_AttRecfg_Rep_F2H_DataTransTrig" float(53),
  "VS_FailRecfg_DCH0K_CellUpd" float(53),
  "VS_FailRecfg_DCH0K_Code_Cong" float(53),
  "VS_FailRecfg_DCH0K_Cong" float(53),
  "VS_FailRecfg_DCH0K_DLCE_Cong" float(53),
  "VS_FailRecfg_DCH0K_DLIUBBand_Cong" float(53),
  "VS_FailRecfg_DCH0K_DLpower_Cong" float(53),
  "VS_FailRecfg_DCH0K_HSDPAUser_Cong" float(53),
  "VS_FailRecfg_DCH0K_HSUPAUser_Cong" float(53),
  "VS_FailRecfg_DCH0K_IubAAL2Fail" float(53),
  "VS_FailRecfg_DCH0K_IubFail" float(53),
  "VS_FailRecfg_DCH0K_PhyChFail" float(53),
  "VS_FailRecfg_DCH0K_RBCfgUnsupp" float(53),
  "VS_FailRecfg_DCH0K_RBInvCfg" float(53),
  "VS_FailRecfg_DCH0K_SRBReset" float(53),
  "VS_FailRecfg_DCH0K_ULCE_Cong" float(53),
  "VS_FailRecfg_DCH0K_ULIUBBand_Cong" float(53),
  "VS_FailRecfg_DCH0K_ULpower_Cong" float(53),
  "VS_FailRecfg_DCH0K_UuFail" float(53),
  "VS_FailRecfg_DCH0K_UuNoReply" float(53),
  "VS_FailRecfg_F2D_DataTransTrig_Cong" float(53),
  "VS_SuccRecfg_DCH0K_HSDPA_64QAM_Upsizing" float(53),
  "VS_SuccRecfg_DCH0K_HSDPA_DC_Upsizing" float(53),
  "VS_SuccRecfg_DCH0K_HSDPA_Upsizing" float(53),
  "VS_SuccRecfg_DCH0K_HSUPA_Upsizing" float(53),
  "VS_SuccRecfg_DCH0K_Upsizing" float(53),
  "VS_SuccRecfg_F2D_DataTransTrig" float(53),
  "VS_SuccRecfg_F2E_DataTransTrig" float(53),
  "VS_SuccRecfg_F2H_DataTransTrig" float(53),
  "VS_SuccRecfg_P2D_DataTransTrig" float(53),
  "VS_SuccRecfg_P2E_DataTransTrig" float(53),
  "VS_SuccRecfg_P2H_DataTransTrig" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Multi-RAB_Service
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Multi-RAB_Service";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Multi-RAB_Service" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttEstabCS_PSinDCH" float(53),
  "VS_AttEstabCS_PSinFACH" float(53),
  "VS_AttPSP2D_CSConv" float(53),
  "VS_MultiRAB_AttEstabCS_FastSetup" float(53),
  "VS_MultiRAB_AttEstab_CSPS" float(53),
  "VS_MultiRAB_AttEstab_PSPS" float(53),
  "VS_MultiRAB_CSAbnormRel_CSPS" float(53),
  "VS_MultiRAB_CSAbnormRel_PSAtt" float(53),
  "VS_MultiRAB_CSAbnormRel_PSPhyRecfg_CellUpd" float(53),
  "VS_MultiRAB_CSAbnormRel_PSRBconfig_CellUpd" float(53),
  "VS_MultiRAB_CSAbnormRel_PSRel" float(53),
  "VS_MultiRAB_CSNormRel_CSPS" float(53),
  "VS_MultiRAB_CSPSAbnormRel_CSPS" float(53),
  "VS_MultiRAB_CSPSNormRel_CSPS" float(53),
  "VS_MultiRAB_MeanThroughput_HSDPA" float(53),
  "VS_MultiRAB_MeanThroughput_HSUPA" float(53),
  "VS_MultiRAB_MeanThroughput_PSR99DL" float(53),
  "VS_MultiRAB_MeanThroughput_PSR99UL" float(53),
  "VS_MultiRAB_PSAbnormRel_CSPS" float(53),
  "VS_MultiRAB_PSAbnormRel_PSPS" float(53),
  "VS_MultiRAB_PSAbnormRel_ResumeExp" float(53),
  "VS_MultiRAB_PSNormRel_CSPS" float(53),
  "VS_MultiRAB_PSNormRel_PSPS" float(53),
  "VS_MultiRAB_SuccEstabCS_FastSetup" float(53),
  "VS_MultiRAB_SuccEstab_CSPS" float(53),
  "VS_MultiRAB_SuccEstab_PSPS" float(53),
  "VS_MultRAB_SF128" float(53),
  "VS_MultRAB_SF16" float(53),
  "VS_MultRAB_SF256" float(53),
  "VS_MultRAB_SF32" float(53),
  "VS_MultRAB_SF4" float(53),
  "VS_MultRAB_SF64" float(53),
  "VS_MultRAB_SF8" float(53),
  "VS_RAB_SFOccupy" float(53),
  "VS_RAB_SFOccupy_MAX" float(53),
  "VS_SingleRAB_SF128" float(53),
  "VS_SingleRAB_SF16" float(53),
  "VS_SingleRAB_SF256" float(53),
  "VS_SingleRAB_SF32" float(53),
  "VS_SingleRAB_SF4" float(53),
  "VS_SingleRAB_SF64" float(53),
  "VS_SingleRAB_SF8" float(53),
  "VS_SuccEstabCS_PSinDCH" float(53),
  "VS_SuccEstabCS_PSinFACH" float(53),
  "VS_SuccPSP2D_CSConv" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Paging
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Paging";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Paging" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_Paging1_Att1_Idle_NoneRealTime_Cell" float(53),
  "VS_Paging1_Att1_Idle_RealTime_Cell" float(53),
  "VS_Paging1_Att1_URA_NoneRealTime_Cell" float(53),
  "VS_Paging1_Att1_URA_RealTime_Cell" float(53),
  "VS_Paging1_Succ1_Idle_NoneRealTime_Cell" float(53),
  "VS_Paging1_Succ1_Idle_RealTime_Cell" float(53),
  "VS_Paging1_Succ1_URA_NoneRealTime_Cell" float(53),
  "VS_Paging1_Succ1_URA_RealTime_Cell" float(53),
  "VS_Paging1_TotalSucc_URA_NoneRealTime_Cell" float(53),
  "VS_Paging1_TotalSucc_URA_RealTime_Cell" float(53),
  "VS_RRC_Paging1_Loss_PCHCong_Cell" float(53),
  "VS_RRC_Paging1_Loss_PCHCong_CNInit_Conv" float(53),
  "VS_RRC_Paging1_Loss_PCHCong_CNInit_SMS" float(53),
  "VS_RRC_Paging1_Loss_PCHCong_UTRANInit_PSData" float(53),
  "VS_RRC_Paging1_Loss_PCHCong_UTRANInit_PTT" float(53),
  "VS_RRC_Paging1_PCHCong_CSPreemptAtt" float(53),
  "VS_RRC_Paging1_PCHCong_CSPreemptSucc" float(53),
  "VS_RRC_Paging1_PCHCong_SMSPreemptAtt" float(53),
  "VS_RRC_Paging1_PCHCong_SMSPreemptSucc" float(53),
  "VS_UTRAN_AttPaging1" float(53),
  "VS_UTRAN_Paging1_Att_Etws" float(53),
  "VS_UTRAN_Paging1_Att_Idle_CS" float(53),
  "VS_UTRAN_Paging1_Att_Idle_PS" float(53),
  "VS_UTRAN_Paging1_Att_UraPCH" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@PS_RAB_Modification
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@PS_RAB_Modification";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@PS_RAB_Modification" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttEstModPS_Bkg" float(53),
  "VS_RAB_AttEstModPS_Conv" float(53),
  "VS_RAB_AttEstModPS_Inter" float(53),
  "VS_RAB_AttEstModPS_Str" float(53),
  "VS_RAB_FailModPS_RNL" float(53),
  "VS_RAB_FailModPS_TNL" float(53),
  "VS_RAB_SuccModPS_Bkg" float(53),
  "VS_RAB_SuccModPS_Conv" float(53),
  "VS_RAB_SuccModPS_Inter" float(53),
  "VS_RAB_SuccModPS_Str" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@PS_RAB_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttEstabPS_AfterP2D" float(53),
  "VS_AttEstabPS_AfterP2F" float(53),
  "VS_RAB_AttEstabPS_Bkg" float(53),
  "VS_RAB_AttEstabPS_Conv" float(53),
  "VS_RAB_AttEstabPS_Conv_Platinum" float(53),
  "VS_RAB_AttEstabPS_FastSetup" float(53),
  "VS_RAB_AttEstabPS_Free" float(53),
  "VS_RAB_AttEstabPS_Int" float(53),
  "VS_RAB_AttEstabPS_Platinum" float(53),
  "VS_RAB_AttEstabPS_PTT" float(53),
  "VS_RAB_AttEstabPS_Queue" float(53),
  "VS_RAB_AttEstabPS_Str" float(53),
  "VS_RAB_AttEstab_PSR99" float(53),
  "VS_RAB_Estab_QueueTime_PS" float(53),
  "VS_RAB_SuccEstabPS_0kbps" float(53),
  "VS_RAB_SuccEstabPS_Bkg" float(53),
  "VS_RAB_SuccEstabPS_Conv" float(53),
  "VS_RAB_SuccEstabPS_Conv_Platinum" float(53),
  "VS_RAB_SuccEstabPS_FastSetup" float(53),
  "VS_RAB_SuccEstabPS_Free" float(53),
  "VS_RAB_SuccEstabPS_Int" float(53),
  "VS_RAB_SuccEstabPS_Platinum" float(53),
  "VS_RAB_SuccEstabPS_PTT" float(53),
  "VS_RAB_SuccEstabPS_Queue" float(53),
  "VS_RAB_SuccEstabPS_Str" float(53),
  "VS_RAB_SuccEstab_PSR99" float(53),
  "VS_SuccEstabPS_AfterP2D" float(53),
  "VS_SuccEstabPS_AfterP2F" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@PS_RAB_Setup_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup_Failure";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_FailEstabPS_CellUpd" float(53),
  "VS_RAB_FailEstabPS_Code_Cong" float(53),
  "VS_RAB_FailEstabPS_Cong" float(53),
  "VS_RAB_FailEstabPS_DLCE_Cong" float(53),
  "VS_RAB_FailEstabPS_DLIUBBand_Cong" float(53),
  "VS_RAB_FailEstabPS_DLIUPSBand_Cong" float(53),
  "VS_RAB_FailEstabPS_DLPower_Cong" float(53),
  "VS_RAB_FailEstabPS_DLPower_Cong_Free" float(53),
  "VS_RAB_FailEstabPS_HSDPAUser_Cong" float(53),
  "VS_RAB_FailEstabPS_HSUPAUser_Cong" float(53),
  "VS_RAB_FailEstabPS_IubAAL2Fail" float(53),
  "VS_RAB_FailEstabPS_IubFail" float(53),
  "VS_RAB_FailEstabPS_NodeBDLCE_Cong" float(53),
  "VS_RAB_FailEstabPS_NodeBULCE_Cong" float(53),
  "VS_RAB_FailEstabPS_PhyChFail" float(53),
  "VS_RAB_FailEstabPS_RBCfgUnsupp" float(53),
  "VS_RAB_FailEstabPS_RBIncCfg" float(53),
  "VS_RAB_FailEstabPS_RNL" float(53),
  "VS_RAB_FailEstabPS_SRBReset" float(53),
  "VS_RAB_FailEstabPS_TNL" float(53),
  "VS_RAB_FailEstabPS_ULCE_Cong" float(53),
  "VS_RAB_FailEstabPS_ULCE_FinalCong" float(53),
  "VS_RAB_FailEstabPS_ULIUBBand_Cong" float(53),
  "VS_RAB_FailEstabPS_ULIUPSBand_Cong" float(53),
  "VS_RAB_FailEstabPS_ULPower_Cong" float(53),
  "VS_RAB_FailEstabPS_Unsp" float(53),
  "VS_RAB_FailEstabPS_UuFail" float(53),
  "VS_RAB_FailEstabPS_UuNoReply" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RAB_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RAB_Release";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RAB_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AbnormRelPS_PTT" float(53),
  "VS_RAB_AbnormRel_AMR" float(53),
  "VS_RAB_AbnormRel_AMRWB" float(53),
  "VS_RAB_AbnormRel_AMRWB_12_65" float(53),
  "VS_RAB_AbnormRel_AMRWB_14_25" float(53),
  "VS_RAB_AbnormRel_AMRWB_15_85" float(53),
  "VS_RAB_AbnormRel_AMRWB_18_25" float(53),
  "VS_RAB_AbnormRel_AMRWB_19_85" float(53),
  "VS_RAB_AbnormRel_AMRWB_23_05" float(53),
  "VS_RAB_AbnormRel_AMRWB_23_85" float(53),
  "VS_RAB_AbnormRel_AMRWB_6_6" float(53),
  "VS_RAB_AbnormRel_AMRWB_8_85" float(53),
  "VS_RAB_AbnormRel_AMR_12_2" float(53),
  "VS_RAB_AbnormRel_AMR_4_75" float(53),
  "VS_RAB_AbnormRel_AMR_5_9" float(53),
  "VS_RAB_AbnormRel_AMR_7_95" float(53),
  "VS_RAB_AbnormRel_AMR_RF" float(53),
  "VS_RAB_AbnormRel_CS" float(53),
  "VS_RAB_AbnormRel_CS64" float(53),
  "VS_RAB_AbnormRel_CS64_RF" float(53),
  "VS_RAB_AbnormRel_CS_CN" float(53),
  "VS_RAB_AbnormRel_CS_CSFB" float(53),
  "VS_RAB_AbnormRel_CS_CSFB_RF" float(53),
  "VS_RAB_AbnormRel_CS_HSPA_Conv" float(53),
  "VS_RAB_AbnormRel_CS_IuAAL2" float(53),
  "VS_RAB_AbnormRel_CS_OLC" float(53),
  "VS_RAB_AbnormRel_CS_OM" float(53),
  "VS_RAB_AbnormRel_CS_Preempt" float(53),
  "VS_RAB_AbnormRel_CS_RF" float(53),
  "VS_RAB_AbnormRel_CS_RF_SRBReset" float(53),
  "VS_RAB_AbnormRel_CS_RF_ULSync" float(53),
  "VS_RAB_AbnormRel_CS_RF_UuNoReply" float(53),
  "VS_RAB_AbnormRel_CS_Security" float(53),
  "VS_RAB_AbnormRel_CS_Str" float(53),
  "VS_RAB_AbnormRel_CS_UTRANgen" float(53),
  "VS_RAB_AbnormRel_PS" float(53),
  "VS_RAB_AbnormRel_PSR99" float(53),
  "VS_RAB_AbnormRel_PSR99_CellDCH_CellUpdt" float(53),
  "VS_RAB_AbnormRel_PSR99_RF" float(53),
  "VS_RAB_AbnormRel_PS_BE" float(53),
  "VS_RAB_AbnormRel_PS_CCH" float(53),
  "VS_RAB_AbnormRel_PS_CN" float(53),
  "VS_RAB_AbnormRel_PS_Conv" float(53),
  "VS_RAB_AbnormRel_PS_D2P" float(53),
  "VS_RAB_AbnormRel_PS_F2P" float(53),
  "VS_RAB_AbnormRel_PS_GTPULoss" float(53),
  "VS_RAB_AbnormRel_PS_OLC" float(53),
  "VS_RAB_AbnormRel_PS_OM" float(53),
  "VS_RAB_AbnormRel_PS_PCH" float(53),
  "VS_RAB_AbnormRel_PS_Preempt" float(53),
  "VS_RAB_AbnormRel_PS_R99D2F" float(53),
  "VS_RAB_AbnormRel_PS_R99D2P" float(53),
  "VS_RAB_AbnormRel_PS_RF" float(53),
  "VS_RAB_AbnormRel_PS_RF_SRBReset" float(53),
  "VS_RAB_AbnormRel_PS_RF_TRBReset" float(53),
  "VS_RAB_AbnormRel_PS_RF_ULSync" float(53),
  "VS_RAB_AbnormRel_PS_RF_UuNoReply" float(53),
  "VS_RAB_AbnormRel_PS_Security" float(53),
  "VS_RAB_AbnormRel_PS_Str" float(53),
  "VS_RAB_AbnormRel_PS_UTRANgen" float(53),
  "VS_RAB_NormRelPS_PTT" float(53),
  "VS_RAB_NormRel_AMR" float(53),
  "VS_RAB_NormRel_AMRWB" float(53),
  "VS_RAB_NormRel_AMRWB_12_65" float(53),
  "VS_RAB_NormRel_AMRWB_14_25" float(53),
  "VS_RAB_NormRel_AMRWB_15_85" float(53),
  "VS_RAB_NormRel_AMRWB_18_25" float(53),
  "VS_RAB_NormRel_AMRWB_19_85" float(53),
  "VS_RAB_NormRel_AMRWB_23_05" float(53),
  "VS_RAB_NormRel_AMRWB_23_85" float(53),
  "VS_RAB_NormRel_AMRWB_6_60" float(53),
  "VS_RAB_NormRel_AMRWB_8_85" float(53),
  "VS_RAB_NormRel_CS" float(53),
  "VS_RAB_NormRel_CS64" float(53),
  "VS_RAB_NormRel_CS_CSFB" float(53),
  "VS_RAB_NormRel_CS_HSPA_Conv" float(53),
  "VS_RAB_NormRel_CS_NetOpt" float(53),
  "VS_RAB_NormRel_CS_Str" float(53),
  "VS_RAB_NormRel_CS_UEGen" float(53),
  "VS_RAB_NormRel_CS_UEReEst" float(53),
  "VS_RAB_NormRel_PS" float(53),
  "VS_RAB_NormRel_PSR99" float(53),
  "VS_RAB_NormRel_PS_0kbps_Timeout" float(53),
  "VS_RAB_NormRel_PS_BE" float(53),
  "VS_RAB_NormRel_PS_CCH" float(53),
  "VS_RAB_NormRel_PS_Conv" float(53),
  "VS_RAB_NormRel_PS_NetOpt" float(53),
  "VS_RAB_NormRel_PS_PCH" float(53),
  "VS_RAB_NormRel_PS_Str" float(53),
  "VS_RAB_NormRel_PS_UEGen" float(53),
  "VS_RAB_NormRel_PS_UEReEst" float(53),
  "VS_RAB_NormRel_PS_UEReEst_CCHRelated" float(53),
  "VS_RAB_NormRel_VPLimit" float(53),
  "VS_RAB_RelReqPS_BE_HSDPA_Cong_Copper" float(53),
  "VS_RAB_RelReqPS_BE_HSDPA_Cong_Golden" float(53),
  "VS_RAB_RelReqPS_BE_HSDPA_Cong_Silver" float(53),
  "VS_RAB_RelReqPS_BE_HSUPA_Cong_Copper" float(53),
  "VS_RAB_RelReqPS_BE_HSUPA_Cong_Golden" float(53),
  "VS_RAB_RelReqPS_BE_HSUPA_Cong_Silver" float(53),
  "VS_RAB_Rel_CS_CNInit_AfterReEst" float(53),
  "VS_RAB_Rel_CS_CNInit_DuringReEst" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "VS_RAB_AbnormRel_CS_IuTNL" float(53),
  "VS_RAB_AbnormRel_CS_IuupFail" float(53),
  "VS_RAB_AbnormRel_CS_Disconnect" float(53)
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RB_Procedure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RB_Procedure";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RB_Procedure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttPhyRecfg_F2P" float(53),
  "VS_AttRBRecfg" float(53),
  "VS_AttRBSetup" float(53),
  "VS_DRD_FailPhyRecfg_RollBack" float(53),
  "VS_DRD_FailRBRecfg_RollBack" float(53),
  "VS_DRD_FailRBSetup_RollBack" float(53),
  "VS_DRD_IFREQ_CS_MBDR_RBSetup_AttOut" float(53),
  "VS_DRD_IFREQ_CS_MBDR_RBSetup_SuccOut" float(53),
  "VS_DRD_IFREQ_PS_MBDR_HResCong_RBSetup_AttOut" float(53),
  "VS_DRD_IFREQ_PS_MBDR_HResCong_RBSetup_SuccOut" float(53),
  "VS_DRD_IFREQ_PS_MBDR_R99_RBSetup_AttOut" float(53),
  "VS_DRD_IFREQ_PS_MBDR_R99_RBSetup_SuccOut" float(53),
  "VS_DRD_PhyRecfg_AttEstab_RollBack" float(53),
  "VS_DRD_PhyRecfg_AttIn" float(53),
  "VS_DRD_PhyRecfg_AttOut" float(53),
  "VS_DRD_PhyRecfg_SuccEstab_RollBack" float(53),
  "VS_DRD_PhyRecfg_SuccIn" float(53),
  "VS_DRD_PhyRecfg_SuccOut" float(53),
  "VS_DRD_RBRecfg_AttEstab_RollBack" float(53),
  "VS_DRD_RBRecfg_AttIn" float(53),
  "VS_DRD_RBRecfg_AttOut" float(53),
  "VS_DRD_RBRecfg_SuccEstab_RollBack" float(53),
  "VS_DRD_RBRecfg_SuccIn" float(53),
  "VS_DRD_RBRecfg_SuccOut" float(53),
  "VS_DRD_RBSetup_AttEstab_RollBack" float(53),
  "VS_DRD_RBSetup_AttIn" float(53),
  "VS_DRD_RBSetup_AttOut" float(53),
  "VS_DRD_RBSetup_SuccEstab_RollBack" float(53),
  "VS_DRD_RBSetup_SuccIn" float(53),
  "VS_DRD_RBSetup_SuccOut" float(53),
  "VS_DRD_RB_D2E_AttIn" float(53),
  "VS_DRD_RB_D2E_AttOut" float(53),
  "VS_DRD_RB_D2E_SuccIn" float(53),
  "VS_DRD_RB_D2E_SuccOut" float(53),
  "VS_DRD_RB_D2H_AttIn" float(53),
  "VS_DRD_RB_D2H_AttOut" float(53),
  "VS_DRD_RB_D2H_SuccIn" float(53),
  "VS_DRD_RB_D2H_SuccOut" float(53),
  "VS_DRD_RB_F2E_AttIn" float(53),
  "VS_DRD_RB_F2E_AttOut" float(53),
  "VS_DRD_RB_F2E_SuccIn" float(53),
  "VS_DRD_RB_F2E_SuccOut" float(53),
  "VS_DRD_RB_F2H_AttIn" float(53),
  "VS_DRD_RB_F2H_AttOut" float(53),
  "VS_DRD_RB_F2H_SuccIn" float(53),
  "VS_DRD_RB_F2H_SuccOut" float(53),
  "VS_FailRBRecfg_CellUpd" float(53),
  "VS_FailRBRecfg_CfgUnsup" float(53),
  "VS_FailRBRecfg_IncCfg" float(53),
  "VS_FailRBRecfg_NoReply" float(53),
  "VS_FailRBRecfg_PhyChFail" float(53),
  "VS_FailRBSetup_CellUpd" float(53),
  "VS_FailRBSetup_CfgUnsup" float(53),
  "VS_FailRBSetup_IncCfg" float(53),
  "VS_FailRBSetup_NoReply" float(53),
  "VS_FailRBSetup_PhyChFail" float(53),
  "VS_MCDRD_Periodic_AttIn" float(53),
  "VS_MCDRD_Periodic_AttOut" float(53),
  "VS_MCDRD_Periodic_SuccIn" float(53),
  "VS_MCDRD_Periodic_SuccOut" float(53),
  "VS_RB_AMRWB_DL_12_65" float(53),
  "VS_RB_AMRWB_DL_14_25" float(53),
  "VS_RB_AMRWB_DL_15_85" float(53),
  "VS_RB_AMRWB_DL_18_25" float(53),
  "VS_RB_AMRWB_DL_19_85" float(53),
  "VS_RB_AMRWB_DL_23_05" float(53),
  "VS_RB_AMRWB_DL_23_85" float(53),
  "VS_RB_AMRWB_DL_6_60" float(53),
  "VS_RB_AMRWB_DL_8_85" float(53),
  "VS_RB_AMRWB_UL_12_65" float(53),
  "VS_RB_AMRWB_UL_14_25" float(53),
  "VS_RB_AMRWB_UL_15_85" float(53),
  "VS_RB_AMRWB_UL_18_25" float(53),
  "VS_RB_AMRWB_UL_19_85" float(53),
  "VS_RB_AMRWB_UL_23_05" float(53),
  "VS_RB_AMRWB_UL_23_85" float(53),
  "VS_RB_AMRWB_UL_6_60" float(53),
  "VS_RB_AMRWB_UL_8_85" float(53),
  "VS_RB_AMR_DL_10_2" float(53),
  "VS_RB_AMR_DL_12_2" float(53),
  "VS_RB_AMR_DL_4_75" float(53),
  "VS_RB_AMR_DL_5_15" float(53),
  "VS_RB_AMR_DL_5_9" float(53),
  "VS_RB_AMR_DL_6_7" float(53),
  "VS_RB_AMR_DL_7_4" float(53),
  "VS_RB_AMR_DL_7_95" float(53),
  "VS_RB_AMR_UL_10_2" float(53),
  "VS_RB_AMR_UL_12_2" float(53),
  "VS_RB_AMR_UL_4_75" float(53),
  "VS_RB_AMR_UL_5_15" float(53),
  "VS_RB_AMR_UL_5_9" float(53),
  "VS_RB_AMR_UL_6_7" float(53),
  "VS_RB_AMR_UL_7_4" float(53),
  "VS_RB_AMR_UL_7_95" float(53),
  "VS_RB_CS_Conv_DL_64" float(53),
  "VS_RB_CS_Conv_UL_64" float(53),
  "VS_RB_CS_Str_DL_57_6" float(53),
  "VS_RB_CS_Str_UL_57_6" float(53),
  "VS_RB_PS_Bkg_DL_128" float(53),
  "VS_RB_PS_Bkg_DL_144" float(53),
  "VS_RB_PS_Bkg_DL_16" float(53),
  "VS_RB_PS_Bkg_DL_256" float(53),
  "VS_RB_PS_Bkg_DL_32" float(53),
  "VS_RB_PS_Bkg_DL_384" float(53),
  "VS_RB_PS_Bkg_DL_64" float(53),
  "VS_RB_PS_Bkg_DL_8" float(53),
  "VS_RB_PS_Bkg_UL_128" float(53),
  "VS_RB_PS_Bkg_UL_144" float(53),
  "VS_RB_PS_Bkg_UL_16" float(53),
  "VS_RB_PS_Bkg_UL_256" float(53),
  "VS_RB_PS_Bkg_UL_32" float(53),
  "VS_RB_PS_Bkg_UL_384" float(53),
  "VS_RB_PS_Bkg_UL_64" float(53),
  "VS_RB_PS_Bkg_UL_8" float(53),
  "VS_RB_PS_Conv_DL_38_8" float(53),
  "VS_RB_PS_Conv_DL_39_2" float(53),
  "VS_RB_PS_Conv_DL_40" float(53),
  "VS_RB_PS_Conv_DL_42_8" float(53),
  "VS_RB_PS_Conv_DL_64" float(53),
  "VS_RB_PS_Conv_EDCH" float(53),
  "VS_RB_PS_Conv_HSDSCH" float(53),
  "VS_RB_PS_Conv_UL_38_8" float(53),
  "VS_RB_PS_Conv_UL_39_2" float(53),
  "VS_RB_PS_Conv_UL_40" float(53),
  "VS_RB_PS_Conv_UL_42_8" float(53),
  "VS_RB_PS_Conv_UL_64" float(53),
  "VS_RB_PS_Int_DL_128" float(53),
  "VS_RB_PS_Int_DL_144" float(53),
  "VS_RB_PS_Int_DL_16" float(53),
  "VS_RB_PS_Int_DL_256" float(53),
  "VS_RB_PS_Int_DL_32" float(53),
  "VS_RB_PS_Int_DL_384" float(53),
  "VS_RB_PS_Int_DL_64" float(53),
  "VS_RB_PS_Int_DL_8" float(53),
  "VS_RB_PS_Int_UL_128" float(53),
  "VS_RB_PS_Int_UL_144" float(53),
  "VS_RB_PS_Int_UL_16" float(53),
  "VS_RB_PS_Int_UL_256" float(53),
  "VS_RB_PS_Int_UL_32" float(53),
  "VS_RB_PS_Int_UL_384" float(53),
  "VS_RB_PS_Int_UL_64" float(53),
  "VS_RB_PS_Int_UL_8" float(53),
  "VS_RB_PS_Str_DL_128" float(53),
  "VS_RB_PS_Str_DL_144" float(53),
  "VS_RB_PS_Str_DL_16" float(53),
  "VS_RB_PS_Str_DL_256_384" float(53),
  "VS_RB_PS_Str_DL_32" float(53),
  "VS_RB_PS_Str_DL_64" float(53),
  "VS_RB_PS_Str_DL_8" float(53),
  "VS_RB_PS_Str_UL_128" float(53),
  "VS_RB_PS_Str_UL_144" float(53),
  "VS_RB_PS_Str_UL_16" float(53),
  "VS_RB_PS_Str_UL_256_384" float(53),
  "VS_RB_PS_Str_UL_32" float(53),
  "VS_RB_PS_Str_UL_64" float(53),
  "VS_RB_PS_Str_UL_8" float(53),
  "VS_RB_RateDown_To_0kbps" float(53),
  "VS_SuccPhyRecfg_F2P" float(53),
  "VS_SuccRBRecfg" float(53),
  "VS_SuccRBSetup" float(53),
  "VS_UELocation_MultiBand_DRD_AttIn" float(53),
  "VS_UELocation_MultiBand_DRD_AttOut" float(53),
  "VS_UELocation_MultiBand_DRD_SuccIn" float(53),
  "VS_UELocation_MultiBand_DRD_SuccOut" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RRC_Connection_Reject
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Reject";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Reject" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_HighPriRRC_RanFC_Disc_Num" float(53),
  "VS_LowPriRRC_RanFC_Disc_Num" float(53),
  "VS_NormPriRRC_RanFC_Disc_Num" float(53),
  "VS_RRC_FailConnEstab_Cong" float(53),
  "VS_RRC_FailConnEstab_NoReply" float(53),
  "VS_RRC_FailConnEstab_NoReply_CSFB" float(53),
  "VS_RRC_FC_Disc_Num" float(53),
  "VS_RRC_Rej_Code_Cong" float(53),
  "VS_RRC_Rej_DLCE_Cong" float(53),
  "VS_RRC_Rej_DLIUBBand_Cong" float(53),
  "VS_RRC_Rej_DLPower_Cong" float(53),
  "VS_RRC_Rej_NodeBDLCE_Cong" float(53),
  "VS_RRC_Rej_NodeBResUnavail" float(53),
  "VS_RRC_Rej_NodeBULCE_Cong" float(53),
  "VS_RRC_Rej_Redir_CoMacroMicro" float(53),
  "VS_RRC_Rej_Redir_Dist" float(53),
  "VS_RRC_Rej_Redir_Dist_IntraRat" float(53),
  "VS_RRC_Rej_Redir_InterRat" float(53),
  "VS_RRC_Rej_Redir_InterRat_CSService" float(53),
  "VS_RRC_Rej_Redir_InterRat_PSService" float(53),
  "VS_RRC_Rej_Redir_IntraRat" float(53),
  "VS_RRC_Rej_Redir_IntraRat_CSService" float(53),
  "VS_RRC_Rej_Redir_IntraRat_PSService" float(53),
  "VS_RRC_Rej_Redir_PingPongNum" float(53),
  "VS_RRC_Rej_Redir_Service" float(53),
  "VS_RRC_Rej_Redir_WeakCoverage" float(53),
  "VS_RRC_Rej_RL_Fail" float(53),
  "VS_RRC_Rej_Sum" float(53),
  "VS_RRC_Rej_TNL_Fail" float(53),
  "VS_RRC_Rej_ULCE_Cong" float(53),
  "VS_RRC_Rej_ULIUBBand_Cong" float(53),
  "VS_RRC_Rej_ULPower_Cong" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RRC_Connection_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Release";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "RRC_AttConnRelCCCH_Cong" float(53),
  "RRC_AttConnRelCCCH_DSCR" float(53),
  "RRC_AttConnRelCCCH_Norm" float(53),
  "RRC_AttConnRelCCCH_Preempt" float(53),
  "RRC_AttConnRelCCCH_ReEstRej" float(53),
  "RRC_AttConnRelCCCH_Unspec" float(53),
  "RRC_AttConnRelCCCH_UsrInact" float(53),
  "RRC_AttConnRelDCCH_Cong" float(53),
  "RRC_AttConnRelDCCH_DSCR" float(53),
  "RRC_AttConnRelDCCH_Norm" float(53),
  "RRC_AttConnRelDCCH_Preempt" float(53),
  "RRC_AttConnRelDCCH_ReEstRej" float(53),
  "RRC_AttConnRelDCCH_Unspec" float(53),
  "RRC_AttConnRelDCCH_UsrInact" float(53),
  "VS_RRCSig_AbnormRel_Preempted" float(53),
  "VS_RRC_ConnRel_CellUpd" float(53),
  "VS_RRC_SigConnRelInd_UEPSDataEnd" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RRC_Connection_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Setup";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "RRC_AttConnEstab_CallReEst" float(53),
  "RRC_AttConnEstab_Conv_Platinum" float(53),
  "RRC_AttConnEstab_Detach" float(53),
  "RRC_AttConnEstab_EmgCall" float(53),
  "RRC_AttConnEstab_IRATCCO" float(53),
  "RRC_AttConnEstab_IRATCelRes" float(53),
  "RRC_AttConnEstab_MBMSPtp" float(53),
  "RRC_AttConnEstab_MBMSRep" float(53),
  "RRC_AttConnEstab_OrgBkgCall" float(53),
  "RRC_AttConnEstab_OrgConvCall" float(53),
  "RRC_AttConnEstab_OrgHhPrSig" float(53),
  "RRC_AttConnEstab_OrgInterCall" float(53),
  "RRC_AttConnEstab_OrgLwPrSig" float(53),
  "RRC_AttConnEstab_OrgStrCall" float(53),
  "RRC_AttConnEstab_OrgSubCall" float(53),
  "RRC_AttConnEstab_Platinum" float(53),
  "RRC_AttConnEstab_Reg" float(53),
  "RRC_AttConnEstab_Rep_CallReEst" float(53),
  "RRC_AttConnEstab_Rep_Detach" float(53),
  "RRC_AttConnEstab_Rep_EmgCall" float(53),
  "RRC_AttConnEstab_Rep_IRATCCO" float(53),
  "RRC_AttConnEstab_Rep_IRATCelRes" float(53),
  "RRC_AttConnEstab_Rep_OrgBkgCall" float(53),
  "RRC_AttConnEstab_Rep_OrgConvCall" float(53),
  "RRC_AttConnEstab_Rep_OrgHhPrSig" float(53),
  "RRC_AttConnEstab_Rep_OrgInterCall" float(53),
  "RRC_AttConnEstab_Rep_OrgLwPrSig" float(53),
  "RRC_AttConnEstab_Rep_OrgStrCall" float(53),
  "RRC_AttConnEstab_Rep_OrgSubCall" float(53),
  "RRC_AttConnEstab_Rep_Reg" float(53),
  "RRC_AttConnEstab_Rep_TmBkgCall" float(53),
  "RRC_AttConnEstab_Rep_TmConvCall" float(53),
  "RRC_AttConnEstab_Rep_TmHhPrSig" float(53),
  "RRC_AttConnEstab_Rep_TmInterCall" float(53),
  "RRC_AttConnEstab_Rep_TmLwPrSig" float(53),
  "RRC_AttConnEstab_Rep_TmStrCall" float(53),
  "RRC_AttConnEstab_Rep_Unknown" float(53),
  "RRC_AttConnEstab_TmBkgCall" float(53),
  "RRC_AttConnEstab_TmConvCall" float(53),
  "RRC_AttConnEstab_TmHhPrSig" float(53),
  "RRC_AttConnEstab_TmInterCall" float(53),
  "RRC_AttConnEstab_TmLwPrSig" float(53),
  "RRC_AttConnEstab_TmStrCall" float(53),
  "RRC_AttConnEstab_Unknown" float(53),
  "RRC_SuccConnEstab_CallReEst" float(53),
  "RRC_SuccConnEstab_Conv_Platinum" float(53),
  "RRC_SuccConnEstab_Detach" float(53),
  "RRC_SuccConnEstab_EmgCall" float(53),
  "RRC_SuccConnEstab_IRATCCO" float(53),
  "RRC_SuccConnEstab_IRATCelRes" float(53),
  "RRC_SuccConnEstab_MBMSPtp" float(53),
  "RRC_SuccConnEstab_MBMSRep" float(53),
  "RRC_SuccConnEstab_OrgBkgCall" float(53),
  "RRC_SuccConnEstab_OrgConvCall" float(53),
  "RRC_SuccConnEstab_OrgHhPrSig" float(53),
  "RRC_SuccConnEstab_OrgInterCall" float(53),
  "RRC_SuccConnEstab_OrgLwPrSig" float(53),
  "RRC_SuccConnEstab_OrgStrCall" float(53),
  "RRC_SuccConnEstab_OrgSubCall" float(53),
  "RRC_SuccConnEstab_Platinum" float(53),
  "RRC_SuccConnEstab_Reg" float(53),
  "RRC_SuccConnEstab_sum" float(53),
  "RRC_SuccConnEstab_TmBkgCall" float(53),
  "RRC_SuccConnEstab_TmConvCall" float(53),
  "RRC_SuccConnEstab_TmHhPrSig" float(53),
  "RRC_SuccConnEstab_TmItrCall" float(53),
  "RRC_SuccConnEstab_TmLwPrSig" float(53),
  "RRC_SuccConnEstab_TmStrCall" float(53),
  "RRC_SuccConnEstab_Unkown" float(53),
  "VS_CellDCHUEs_PTT" float(53),
  "VS_CellFACHUEs_PTT" float(53),
  "VS_CellPCHUEs_PTT" float(53),
  "VS_CU_FC_Num_CPU_OverLoad" float(53),
  "VS_EcNo_Mean_TP0" float(53),
  "VS_EcNo_Mean_TP1" float(53),
  "VS_EcNo_Mean_TP10_15" float(53),
  "VS_EcNo_Mean_TP16_25" float(53),
  "VS_EcNo_Mean_TP2" float(53),
  "VS_EcNo_Mean_TP26_35" float(53),
  "VS_EcNo_Mean_TP3" float(53),
  "VS_EcNo_Mean_TP36_55" float(53),
  "VS_EcNo_Mean_TP4" float(53),
  "VS_EcNo_Mean_TP5" float(53),
  "VS_EcNo_Mean_TP6_9" float(53),
  "VS_EcNo_Mean_TP_More55" float(53),
  "VS_RRC_AttConnEstab_CellDCH" float(53),
  "VS_RRC_AttConnEstab_CellFACH" float(53),
  "VS_RRC_AttConnEstab_CellUpd_DSCR_CS" float(53),
  "VS_RRC_AttConnEstab_CellUpd_DSCR_Other" float(53),
  "VS_RRC_AttConnEstab_CellUpd_DSCR_PS" float(53),
  "VS_RRC_AttConnEstab_CellUpd_DSCR_Service" float(53),
  "VS_RRC_AttConnEstab_CSDomain" float(53),
  "VS_RRC_AttConnEstab_CSFB" float(53),
  "VS_RRC_AttConnEstab_EDCH" float(53),
  "VS_RRC_AttConnEstab_HSDSCH" float(53),
  "VS_RRC_AttConnEstab_Msg" float(53),
  "VS_RRC_AttConnEstab_Msg_Conv" float(53),
  "VS_RRC_AttConnEstab_PSDomain" float(53),
  "VS_RRC_AttConnEstab_Sum" float(53),
  "VS_RRC_AttConnEstab_WithSI_CsDomain" float(53),
  "VS_RRC_AttConnEstab_WithSI_PsDomain" float(53),
  "VS_RRC_AutoDsac_Num" float(53),
  "VS_RRC_ConnEstabTimeMax_CellDCH" float(53),
  "VS_RRC_ConnEstabTimeMax_CellFACH" float(53),
  "VS_RRC_ConnEstabTimeMean_CellDCH" float(53),
  "VS_RRC_ConnEstabTimeMean_CellFACH" float(53),
  "VS_RRC_CONV_FC_Num_CallShock" float(53),
  "VS_RRC_CONV_FC_Num_CAPS" float(53),
  "VS_RRC_CONV_FC_Num_CPU_OverLoad" float(53),
  "VS_RRC_CONV_FC_Num_INT_OverLoad" float(53),
  "VS_RRC_CONV_FC_Num_MPU_OverLoad" float(53),
  "VS_RRC_CONV_FC_Num_RanFC_Ph1" float(53),
  "VS_RRC_CONV_FC_Num_RanFC_Ph2" float(53),
  "VS_RRC_CONV_FC_Num_RRCQueue" float(53),
  "VS_RRC_Estab_DRDIn" float(53),
  "VS_RRC_Estab_DRDOut_Att" float(53),
  "VS_RRC_Estab_DRDOut_Succ" float(53),
  "VS_RRC_FC_Num_CallShock" float(53),
  "VS_RRC_FC_Num_CAPS" float(53),
  "VS_RRC_FC_Num_CPU_OverLoad" float(53),
  "VS_RRC_FC_Num_FACH_Cong" float(53),
  "VS_RRC_FC_Num_INT_OverLoad" float(53),
  "VS_RRC_FC_Num_MPU_OverLoad" float(53),
  "VS_RRC_FC_Num_RanFC_Ph1" float(53),
  "VS_RRC_FC_Num_RanFC_Ph2" float(53),
  "VS_RRC_FC_Num_RRCQueue" float(53),
  "VS_RRC_SetupConnEstab" float(53),
  "VS_RRC_SuccConnEstab_CellDCH" float(53),
  "VS_RRC_SuccConnEstab_CellFACH" float(53),
  "VS_RRC_SuccConnEstab_CSFB" float(53),
  "VS_RRC_SuccConnEstab_EDCH" float(53),
  "VS_RRC_SuccConnEstab_First" float(53),
  "VS_RRC_SuccConnEstab_HSDSCH" float(53),
  "VS_RRC_SuccConnEstab_Second" float(53),
  "VS_RRC_SuccConnEstab_Third" float(53),
  "VS_RRC_SuccConnEstab_WithSI_CsDomain" float(53),
  "VS_RRC_SuccConnEstab_WithSI_PsDomain" float(53),
  "VS_TP_UE_0" float(53),
  "VS_TP_UE_1" float(53),
  "VS_TP_UE_10_15" float(53),
  "VS_TP_UE_16_25" float(53),
  "VS_TP_UE_2" float(53),
  "VS_TP_UE_26_35" float(53),
  "VS_TP_UE_3" float(53),
  "VS_TP_UE_36_55" float(53),
  "VS_TP_UE_4" float(53),
  "VS_TP_UE_5" float(53),
  "VS_TP_UE_6_9" float(53),
  "VS_TP_UE_More55" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "VS_RAB_AbnormRel_CS_Disconnect" float(53)
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RRC_MR
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RRC_MR";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RRC_MR" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_Cell_Updt_EcNo_0" float(53),
  "VS_Cell_Updt_EcNo_1" float(53),
  "VS_Cell_Updt_EcNo_2" float(53),
  "VS_Cell_Updt_EcNo_3" float(53),
  "VS_Cell_Updt_EcNo_4" float(53),
  "VS_Cell_Updt_EcNo_5" float(53),
  "VS_Cell_Updt_EcNo_6" float(53),
  "VS_Cell_Updt_EcNo_7" float(53),
  "VS_Cell_Updt_EcNo_8" float(53),
  "VS_Periodic_MrRpt_EcNo_0" float(53),
  "VS_Periodic_MrRpt_EcNo_1" float(53),
  "VS_Periodic_MrRpt_EcNo_2" float(53),
  "VS_Periodic_MrRpt_EcNo_3" float(53),
  "VS_Periodic_MrRpt_EcNo_4" float(53),
  "VS_Periodic_MrRpt_EcNo_5" float(53),
  "VS_Periodic_MrRpt_EcNo_6" float(53),
  "VS_Periodic_MrRpt_EcNo_7" float(53),
  "VS_Periodic_MrRpt_EcNo_8" float(53),
  "VS_Periodic_MrRpt_RSCP_0" float(53),
  "VS_Periodic_MrRpt_RSCP_1" float(53),
  "VS_Periodic_MrRpt_RSCP_2" float(53),
  "VS_Periodic_MrRpt_RSCP_3" float(53),
  "VS_Periodic_MrRpt_RSCP_4" float(53),
  "VS_Periodic_MrRpt_RSCP_5" float(53),
  "VS_Periodic_MrRpt_RSCP_6" float(53),
  "VS_Periodic_MrRpt_RSCP_7" float(53),
  "VS_Periodic_MrRpt_RSCP_8" float(53),
  "VS_Periodic_MrRpt_RSCP_9" float(53),
  "VS_Periodic_MrRpt_UETxPower_0" float(53),
  "VS_Periodic_MrRpt_UETxPower_1" float(53),
  "VS_Periodic_MrRpt_UETxPower_10" float(53),
  "VS_Periodic_MrRpt_UETxPower_11" float(53),
  "VS_Periodic_MrRpt_UETxPower_12" float(53),
  "VS_Periodic_MrRpt_UETxPower_13" float(53),
  "VS_Periodic_MrRpt_UETxPower_2" float(53),
  "VS_Periodic_MrRpt_UETxPower_3" float(53),
  "VS_Periodic_MrRpt_UETxPower_4" float(53),
  "VS_Periodic_MrRpt_UETxPower_5" float(53),
  "VS_Periodic_MrRpt_UETxPower_6" float(53),
  "VS_Periodic_MrRpt_UETxPower_7" float(53),
  "VS_Periodic_MrRpt_UETxPower_8" float(53),
  "VS_Periodic_MrRpt_UETxPower_9" float(53),
  "VS_RRC_Access_EcNo_0" float(53),
  "VS_RRC_Access_EcNo_1" float(53),
  "VS_RRC_Access_EcNo_2" float(53),
  "VS_RRC_Access_EcNo_3" float(53),
  "VS_RRC_Access_EcNo_4" float(53),
  "VS_RRC_Access_EcNo_5" float(53),
  "VS_RRC_Access_EcNo_6" float(53),
  "VS_RRC_Access_EcNo_7" float(53),
  "VS_RRC_Access_EcNo_8" float(53),
  "VS_RRC_Access_RSCP_0" float(53),
  "VS_RRC_Access_RSCP_1" float(53),
  "VS_RRC_Access_RSCP_2" float(53),
  "VS_RRC_Access_RSCP_3" float(53),
  "VS_RRC_Access_RSCP_4" float(53),
  "VS_RRC_Access_RSCP_5" float(53),
  "VS_RRC_Access_RSCP_6" float(53),
  "VS_RRC_Access_RSCP_7" float(53),
  "VS_RRC_Access_RSCP_8" float(53),
  "VS_RRC_Access_RSCP_9" float(53),
  "VS_RRC_MrRpt_1A" float(53),
  "VS_RRC_MrRpt_1A_InterNodeB_All" float(53),
  "VS_RRC_MrRpt_1A_InterNodeB_RSCP_0" float(53),
  "VS_RRC_MrRpt_1A_InterNodeB_RSCP_1" float(53),
  "VS_RRC_MrRpt_1A_InterNodeB_RSCP_2" float(53),
  "VS_RRC_MrRpt_1A_InterNodeB_RSCP_3" float(53),
  "VS_RRC_MrRpt_1A_InterNodeB_RSCP_4" float(53),
  "VS_RRC_MrRpt_1B" float(53),
  "VS_RRC_MrRpt_1C" float(53),
  "VS_RRC_MrRpt_1D" float(53),
  "VS_RRC_MrRpt_2D" float(53),
  "VS_RRC_MrRpt_2F" float(53),
  "VS_RRC_MrRpt_4A" float(53),
  "VS_RRC_MrRpt_4B" float(53),
  "VS_RRC_MrRpt_SHO_EcNo" float(53),
  "VS_RRC_MrRpt_SHO_RSCP" float(53),
  "VS_RSCP_Mean_TP0" float(53),
  "VS_RSCP_Mean_TP1" float(53),
  "VS_RSCP_Mean_TP10_15" float(53),
  "VS_RSCP_Mean_TP16_25" float(53),
  "VS_RSCP_Mean_TP2" float(53),
  "VS_RSCP_Mean_TP26_35" float(53),
  "VS_RSCP_Mean_TP3" float(53),
  "VS_RSCP_Mean_TP36_55" float(53),
  "VS_RSCP_Mean_TP4" float(53),
  "VS_RSCP_Mean_TP5" float(53),
  "VS_RSCP_Mean_TP6_9" float(53),
  "VS_RSCP_Mean_TP_More55" float(53),
  "VS_SHO_EcNo_0" float(53),
  "VS_SHO_EcNo_1" float(53),
  "VS_SHO_EcNo_2" float(53),
  "VS_SHO_EcNo_3" float(53),
  "VS_SHO_EcNo_4" float(53),
  "VS_SHO_EcNo_5" float(53),
  "VS_SHO_EcNo_6" float(53),
  "VS_SHO_EcNo_7" float(53),
  "VS_SHO_EcNo_8" float(53),
  "VS_SHO_RSCP_0" float(53),
  "VS_SHO_RSCP_1" float(53),
  "VS_SHO_RSCP_2" float(53),
  "VS_SHO_RSCP_3" float(53),
  "VS_SHO_RSCP_4" float(53),
  "VS_SHO_RSCP_5" float(53),
  "VS_SHO_RSCP_6" float(53),
  "VS_SHO_RSCP_7" float(53),
  "VS_SHO_RSCP_8" float(53),
  "VS_SHO_RSCP_9" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.0" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.1" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.2" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.3" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.4" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.5" float(53),
  "VS.UL.AMR.ErrTbNum.RSCP.6" float(53),
  "VS_Utran_MrRpt_4A" float(53),
  "VS_Utran_MrRpt_4B" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@RRC_Status
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@RRC_Status";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Status" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_CellDCHUEs" float(53),
  "VS_CellDCHUEs_MultiRAB" float(53),
  "VS_CellFACHUEs" float(53),
  "VS_CellFACHUEs_MAX" float(53),
  "VS_CellPCHUEs" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Soft_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Soft_Handover";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Soft_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_SHO_AMR_Att" float(53),
  "VS_SHO_AMR_Succ" float(53),
  "VS_SHO_AS_1RL" float(53),
  "VS_SHO_AS_2RL" float(53),
  "VS_SHO_AS_3RL" float(53),
  "VS_SHO_AS_4RL" float(53),
  "VS_SHO_AS_5RL" float(53),
  "VS_SHO_AS_6RL" float(53),
  "VS_SHO_AttRLAdd" float(53),
  "VS_SHO_AttRLAdd_Prep" float(53),
  "VS_SHO_AttRLDel" float(53),
  "VS_SHO_CS64_Att" float(53),
  "VS_SHO_CS64_Succ" float(53),
  "VS_SHO_FailRLAdd_CfgUnsupp" float(53),
  "VS_SHO_FailRLAdd_InvCfg" float(53),
  "VS_SHO_FailRLAdd_ISR" float(53),
  "VS_SHO_FailRLAdd_NoReply" float(53),
  "VS_SHO_PS_Att" float(53),
  "VS_SHO_PS_Succ" float(53),
  "VS_SHO_SigOnly_Att" float(53),
  "VS_SHO_SigOnly_Succ" float(53),
  "VS_SHO_SuccRLAdd" float(53),
  "VS_SHO_SuccRLDel" float(53),
  "VS_SoHO_AttRLAdd" float(53),
  "VS_SoHO_AttRLDel" float(53),
  "VS_SoHO_FailRLAdd_CfgUnsupp" float(53),
  "VS_SoHO_FailRLAdd_InvCfg" float(53),
  "VS_SoHO_FailRLAdd_ISR" float(53),
  "VS_SoHO_FailRLAdd_NoReply" float(53),
  "VS_SoHO_SuccRLAdd" float(53),
  "VS_SoHO_SuccRLDel" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Traffic
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Traffic";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Traffic" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_BcchSrbKbps_Dl" float(53),
  "VS_CcchSrbKbps_Dl" float(53),
  "VS_CcchSrbKbps_Ul" float(53),
  "VS_CRNCIubBytesFACH_Tx" float(53),
  "VS_CRNCIubBytesPCH_Tx" float(53),
  "VS_CRNCIubBytesPSR99_CCH_Rx" float(53),
  "VS_CRNCIubBytesPSR99_CCH_Tx" float(53),
  "VS_CRNCIubBytesRACH_Rx" float(53),
  "VS_CRNC_IUB_FACH_Bandwidth" float(53),
  "VS_CRNC_IUB_PCH_Bandwidth" float(53),
  "VS_CRNC_IUB_RACH_Bandwidth" float(53),
  "VS_DRNCIubBytesDCH_Rx" float(53),
  "VS_DRNCIubBytesDCH_Tx" float(53),
  "VS_MBMS_IUB_BANDWIDTH" float(53),
  "VS_SRNCIubBytesCSConv_Rx" float(53),
  "VS_SRNCIubBytesCSConv_Tx" float(53),
  "VS_SRNCIubBytesCSStr_Rx" float(53),
  "VS_SRNCIubBytesCSStr_Tx" float(53),
  "VS_SRNCIubBytesDCHSig_Rx" float(53),
  "VS_SRNCIubBytesDCHSig_Tx" float(53),
  "VS_SRNCIubBytesEDCHSig_Rx" float(53),
  "VS_SRNCIubBytesHSDPA_Tx" float(53),
  "VS_SRNCIubBytesHSDSCHSig_Tx" float(53),
  "VS_SRNCIubBytesHSUPA_Rx" float(53),
  "VS_SRNCIubBytesPSEFACH_Tx" float(53),
  "VS_SRNCIubBytesPSERACH_Rx" float(53),
  "VS_SRNCIubBytesPSFACH_Tx" float(53),
  "VS_SRNCIubBytesPSR99Bkg_Rx" float(53),
  "VS_SRNCIubBytesPSR99Bkg_Tx" float(53),
  "VS_SRNCIubBytesPSR99Conv_Rx" float(53),
  "VS_SRNCIubBytesPSR99Conv_Tx" float(53),
  "VS_SRNCIubBytesPSR99Int_Rx" float(53),
  "VS_SRNCIubBytesPSR99Int_Tx" float(53),
  "VS_SRNCIubBytesPSR99Str_Rx" float(53),
  "VS_SRNCIubBytesPSR99Str_Tx" float(53),
  "VS_SRNCIubBytesPSRACH_Rx" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AMR_DL_Traffic_BestCell" float(53),
  "VS_AMR_Erlang_BestCell" float(53),
  "VS_AMR_Erlang_MO" float(53),
  "VS_AMR_Erlang_MT" float(53),
  "VS_AMR_Erlang_NotDistinguish" float(53),
  "VS_AMR_UL_Traffic_BestCell" float(53),
  "VS_CS_Conv_DL_64_Traffic" float(53),
  "VS_CS_Conv_Kbps_DL64" float(53),
  "VS_CS_Str_DL_57_6_Traffic" float(53),
  "VS_CS_Str_Kbps_DL57_6" float(53),
  "VS_DcchSrbKbps_Dl" float(53),
  "VS_DcchSrbKbps_Ul" float(53),
  "VS_DcchSRB_Dl_Traffic" float(53),
  "VS_DcchSRB_Ul_Traffic" float(53),
  "VS_MBMS_PTM_MeanThroughput" float(53),
  "VS_MBMS_PTP_MeanThroughput" float(53),
  "VS_PS_BE_DCH_DL_SamplesThroughput" float(53),
  "VS_PS_BE_DCH_DL_SumThroughput" float(53),
  "VS_PS_BE_DCH_UL_SamplesThroughput" float(53),
  "VS_PS_BE_DCH_UL_SumThroughput" float(53),
  "VS_PS_BE_kbits_DL_0_32_BestCell" float(53),
  "VS_PS_BE_kbits_DL_144_384_BestCell" float(53),
  "VS_PS_BE_kbits_DL_32_64_BestCell" float(53),
  "VS_PS_BE_kbits_DL_64_144_BestCell" float(53),
  "VS_PS_BE_kbits_UL_0_32_BestCell" float(53),
  "VS_PS_BE_kbits_UL_144_384_BestCell" float(53),
  "VS_PS_BE_kbits_UL_32_64_BestCell" float(53),
  "VS_PS_BE_kbits_UL_64_144_BestCell" float(53),
  "VS_PS_Bkg_DL_128_Traffic" float(53),
  "VS_PS_Bkg_DL_144_Traffic" float(53),
  "VS_PS_Bkg_DL_16_Traffic" float(53),
  "VS_PS_Bkg_DL_256_Traffic" float(53),
  "VS_PS_Bkg_DL_32_Traffic" float(53),
  "VS_PS_Bkg_DL_384_Traffic" float(53),
  "VS_PS_Bkg_DL_64_Traffic" float(53),
  "VS_PS_Bkg_DL_8_Traffic" float(53),
  "VS_PS_Bkg_Kbps_DL128" float(53),
  "VS_PS_Bkg_Kbps_DL144" float(53),
  "VS_PS_Bkg_Kbps_DL16" float(53),
  "VS_PS_Bkg_Kbps_DL256" float(53),
  "VS_PS_Bkg_Kbps_DL32" float(53),
  "VS_PS_Bkg_Kbps_DL384" float(53),
  "VS_PS_Bkg_Kbps_DL64" float(53),
  "VS_PS_Bkg_Kbps_DL8" float(53),
  "VS_PS_Bkg_Kbps_UL128" float(53),
  "VS_PS_Bkg_Kbps_UL144" float(53),
  "VS_PS_Bkg_Kbps_UL16" float(53),
  "VS_PS_Bkg_Kbps_UL256" float(53),
  "VS_PS_Bkg_Kbps_UL32" float(53),
  "VS_PS_Bkg_Kbps_UL384" float(53),
  "VS_PS_Bkg_Kbps_UL64" float(53),
  "VS_PS_Bkg_Kbps_UL8" float(53),
  "VS_PS_Bkg_UL_128_Traffic" float(53),
  "VS_PS_Bkg_UL_144_Traffic" float(53),
  "VS_PS_Bkg_UL_16_Traffic" float(53),
  "VS_PS_Bkg_UL_256_Traffic" float(53),
  "VS_PS_Bkg_UL_32_Traffic" float(53),
  "VS_PS_Bkg_UL_384_Traffic" float(53),
  "VS_PS_Bkg_UL_64_Traffic" float(53),
  "VS_PS_Bkg_UL_8_Traffic" float(53),
  "VS_PS_Conv_DL_Traffic" float(53),
  "VS_PS_Conv_Kbps_DL" float(53),
  "VS_PS_Conv_Kbps_UL" float(53),
  "VS_PS_Conv_UL_Traffic" float(53),
  "VS_PS_Int_DL_128_Traffic" float(53),
  "VS_PS_Int_DL_144_Traffic" float(53),
  "VS_PS_Int_DL_16_Traffic" float(53),
  "VS_PS_Int_DL_256_Traffic" float(53),
  "VS_PS_Int_DL_32_Traffic" float(53),
  "VS_PS_Int_DL_384_Traffic" float(53),
  "VS_PS_Int_DL_64_Traffic" float(53),
  "VS_PS_Int_DL_8_Traffic" float(53),
  "VS_PS_Int_Kbps_DL128" float(53),
  "VS_PS_Int_Kbps_DL144" float(53),
  "VS_PS_Int_Kbps_DL16" float(53),
  "VS_PS_Int_Kbps_DL256" float(53),
  "VS_PS_Int_Kbps_DL32" float(53),
  "VS_PS_Int_Kbps_DL384" float(53),
  "VS_PS_Int_Kbps_DL64" float(53),
  "VS_PS_Int_Kbps_DL8" float(53),
  "VS_PS_Int_Kbps_UL128" float(53),
  "VS_PS_Int_Kbps_UL144" float(53),
  "VS_PS_Int_Kbps_UL16" float(53),
  "VS_PS_Int_Kbps_UL256" float(53),
  "VS_PS_Int_Kbps_UL32" float(53),
  "VS_PS_Int_Kbps_UL384" float(53),
  "VS_PS_Int_Kbps_UL64" float(53),
  "VS_PS_Int_Kbps_UL8" float(53),
  "VS_PS_Int_UL_128_Traffic" float(53),
  "VS_PS_Int_UL_144_Traffic" float(53),
  "VS_PS_Int_UL_16_Traffic" float(53),
  "VS_PS_Int_UL_256_Traffic" float(53),
  "VS_PS_Int_UL_32_Traffic" float(53),
  "VS_PS_Int_UL_384_Traffic" float(53),
  "VS_PS_Int_UL_64_Traffic" float(53),
  "VS_PS_Int_UL_8_Traffic" float(53),
  "VS_PS_Str_DL_128_Traffic" float(53),
  "VS_PS_Str_DL_144_Traffic" float(53),
  "VS_PS_Str_DL_16_Traffic" float(53),
  "VS_PS_Str_DL_256_Traffic" float(53),
  "VS_PS_Str_DL_32_Traffic" float(53),
  "VS_PS_Str_DL_384_Traffic" float(53),
  "VS_PS_Str_DL_64_Traffic" float(53),
  "VS_PS_Str_DL_8_Traffic" float(53),
  "VS_PS_Str_Kbps_DL128" float(53),
  "VS_PS_Str_Kbps_DL144" float(53),
  "VS_PS_Str_Kbps_DL16" float(53),
  "VS_PS_Str_Kbps_DL256" float(53),
  "VS_PS_Str_Kbps_DL32" float(53),
  "VS_PS_Str_Kbps_DL384" float(53),
  "VS_PS_Str_Kbps_DL64" float(53),
  "VS_PS_Str_Kbps_DL8" float(53),
  "VS_PS_Str_Kbps_UL128" float(53),
  "VS_PS_Str_Kbps_UL16" float(53),
  "VS_PS_Str_Kbps_UL32" float(53),
  "VS_PS_Str_Kbps_UL64" float(53),
  "VS_PS_Str_Kbps_UL8" float(53),
  "VS_PS_Str_UL_128_Traffic" float(53),
  "VS_PS_Str_UL_16_Traffic" float(53),
  "VS_PS_Str_UL_32_Traffic" float(53),
  "VS_PS_Str_UL_64_Traffic" float(53),
  "VS_PS_Str_UL_8_Traffic" float(53),
  "VS_RAB_AMRWB_Erlang_cell" float(53),
  "VS_RAB_AMR_Erlang_cell" float(53),
  "VS_VP_DL_Traffic_BestCell" float(53),
  "VS_VP_Erlang_BestCell" float(53),
  "VS_VP_UL_Traffic_BestCell" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@TX_and_RX_Power
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@TX_and_RX_Power";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@TX_and_RX_Power" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_HSDPA_MaxRequiredPwr" float(53),
  "VS_HSDPA_MaxRequiredPwr_Free" float(53),
  "VS_HSDPA_MC_MaxRequiredPwr" float(53),
  "VS_HSDPA_MC_MeanRequiredPwr" float(53),
  "VS_HSDPA_MC_MinRequiredPwr" float(53),
  "VS_HSDPA_MeanRequiredPwr" float(53),
  "VS_HSDPA_MeanRequiredPwr_Free" float(53),
  "VS_HSDPA_MinRequiredPwr" float(53),
  "VS_HSUPA_MaxRSEPS" float(53),
  "VS_HSUPA_MeanRSEPS" float(53),
  "VS_HSUPA_MinRSEPS" float(53),
  "VS_MaxRTWP" float(53),
  "VS_MaxTCP" float(53),
  "VS_MaxTCP_HSDPA_MC" float(53),
  "VS_MaxTCP_NonHS" float(53),
  "VS_MeanRTWP" float(53),
  "VS_MeanTCP" float(53),
  "VS_MeanTCP_HSDPA_MC" float(53),
  "VS_MeanTCP_NonHS" float(53),
  "VS_MinRTWP" float(53),
  "VS_MinTCP" float(53),
  "VS_MinTCP_HSDPA_MC" float(53),
  "VS_MinTCP_NonHS" float(53),
  "VS_RTWP_0" float(53),
  "VS_RTWP_1" float(53),
  "VS_RTWP_10" float(53),
  "VS_RTWP_11" float(53),
  "VS_RTWP_12" float(53),
  "VS_RTWP_13" float(53),
  "VS_RTWP_14" float(53),
  "VS_RTWP_15" float(53),
  "VS_RTWP_16" float(53),
  "VS_RTWP_17" float(53),
  "VS_RTWP_18" float(53),
  "VS_RTWP_19" float(53),
  "VS_RTWP_2" float(53),
  "VS_RTWP_20" float(53),
  "VS_RTWP_21" float(53),
  "VS_RTWP_3" float(53),
  "VS_RTWP_4" float(53),
  "VS_RTWP_5" float(53),
  "VS_RTWP_6" float(53),
  "VS_RTWP_7" float(53),
  "VS_RTWP_8" float(53),
  "VS_RTWP_9" float(53),
  "VS_TCP_0" float(53),
  "VS_TCP_1" float(53),
  "VS_TCP_10" float(53),
  "VS_TCP_11" float(53),
  "VS_TCP_12" float(53),
  "VS_TCP_13" float(53),
  "VS_TCP_14" float(53),
  "VS_TCP_15" float(53),
  "VS_TCP_16" float(53),
  "VS_TCP_17" float(53),
  "VS_TCP_18" float(53),
  "VS_TCP_19" float(53),
  "VS_TCP_2" float(53),
  "VS_TCP_3" float(53),
  "VS_TCP_4" float(53),
  "VS_TCP_5" float(53),
  "VS_TCP_6" float(53),
  "VS_TCP_7" float(53),
  "VS_TCP_8" float(53),
  "VS_TCP_9" float(53),
  "VS_TCP_NonHS_0" float(53),
  "VS_TCP_NonHS_1" float(53),
  "VS_TCP_NonHS_10" float(53),
  "VS_TCP_NonHS_11" float(53),
  "VS_TCP_NonHS_12" float(53),
  "VS_TCP_NonHS_13" float(53),
  "VS_TCP_NonHS_14" float(53),
  "VS_TCP_NonHS_15" float(53),
  "VS_TCP_NonHS_16" float(53),
  "VS_TCP_NonHS_17" float(53),
  "VS_TCP_NonHS_18" float(53),
  "VS_TCP_NonHS_19" float(53),
  "VS_TCP_NonHS_2" float(53),
  "VS_TCP_NonHS_3" float(53),
  "VS_TCP_NonHS_4" float(53),
  "VS_TCP_NonHS_5" float(53),
  "VS_TCP_NonHS_6" float(53),
  "VS_TCP_NonHS_7" float(53),
  "VS_TCP_NonHS_8" float(53),
  "VS_TCP_NonHS_9" float(53),
  "VS.TCP.NonHS.Usage.Max" float(53),
  "VS.TCP.NonHS.Usage.Mean" float(53),
  "VS.TCP.NonHS.Usage.Min" float(53),
  "VS.TCP.Usage.Max" float(53),
  "VS.TCP.Usage.Mean" float(53),
  "VS.TCP.Usage.Min" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@UL_Interoperability
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@UL_Interoperability";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@UL_Interoperability" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_U2LHO_AttOutPS_Coverage" float(53),
  "VS_U2LHO_AttRelocPrepOutPS_Coverage" float(53),
  "VS_U2LHO_SuccOutPS_Coverage" float(53),
  "VS_U2LHO_SuccRelocPrepOutPS_Coverage" float(53),
  "VS_U2LTEHO_AttOutPS" float(53),
  "VS_U2LTEHO_AttOutPS_Load" float(53),
  "VS_U2LTEHO_AttOutPS_Service" float(53),
  "VS_U2LTEHO_AttRelocPrepOutPS" float(53),
  "VS_U2LTEHO_AttRelocPrepOutPS_Load" float(53),
  "VS_U2LTEHO_AttRelocPrepOutPS_Service" float(53),
  "VS_U2LTEHO_FailOutPS_Abort" float(53),
  "VS_U2LTEHO_FailOutPS_CfgUnSupp" float(53),
  "VS_U2LTEHO_FailOutPS_NoReply" float(53),
  "VS_U2LTEHO_FailOutPS_PhyChFail" float(53),
  "VS_U2LTEHO_FailRelocPrepOutPS_NoResAvail" float(53),
  "VS_U2LTEHO_FailRelocPrepOutPS_ReloUnSupp" float(53),
  "VS_U2LTEHO_FailRelocPrepOutPS_TAlExp" float(53),
  "VS_U2LTEHO_FailRelocPrepOutPS_TgtFail" float(53),
  "VS_U2LTEHO_FailRelocPrepOutPS_TgtHighLoad" float(53),
  "VS_U2LTEHO_FailRelocPrepOutPS_UnKnowRNC" float(53),
  "VS_U2LTEHO_MeasCtrl_Num" float(53),
  "VS.U2LTEHO.MeasCtrl.Num.SRVCCUE" float(53),
  "VS_U2LTEHO_MeasTimeOut_Num" float(53),
  "VS.U2LTEHO.MeasTimeOut.Num.SRVCCUE" float(53),
  "VS_U2LTEHO_Redir_FailOutNum" float(53),
  "VS_U2LTEHO_Redir_PingPongNum" float(53),
  "VS_U2LTEHO_RRCRelease_Coverage" float(53),
  "VS_U2LTEHO_RRCRelease_Coverage_EmergBlind" float(53),
  "VS_U2LTEHO_RRCRelease_FastReturn_Blind" float(53),
  "VS_U2LTEHO_RRCRelease_FastReturn_GridBlind" float(53),
  "VS.U2LTEHO.RRCRelease.FastReturn.GridBlind.SRVCCUE" float(53),
  "VS_U2LTEHO_RRCRelease_Load" float(53),
  "VS_U2LTEHO_RRCRelease_Load_Blind" float(53),
  "VS_U2LTEHO_RRCRelease_Service" float(53),
  "VS.U2LTEHO.RRCRelease.Service.GridBlind" float(53),
  "VS_U2LTEHO_RRCRelease_Sevice_Blind" float(53),
  "VS_U2LTEHO_SuccOutPS" float(53),
  "VS_U2LTEHO_SuccOutPS_Load" float(53),
  "VS_U2LTEHO_SuccOutPS_Service" float(53),
  "VS_U2LTEHO_SuccRelocPrepOutPS" float(53),
  "VS_U2LTEHO_SuccRelocPrepOutPS_Load" float(53),
  "VS_U2LTEHO_SuccRelocPrepOutPS_Service" float(53),
  "VS_U2L_FastReturn_Redirect_CSFBUE" float(53),
  "VS_U2L_FastReturn_Redirect_SRVCCUE" float(53),
  "VS.U2L.FastReturn.SRVCCUE.Delay.Blind" float(53),
  "VS.U2L.FastReturn.SRVCCUE.Delay.Measurement" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@URA_Update
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@URA_Update";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@URA_Update" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttURAUpd_Chg" float(53),
  "VS_AttURAUpd_Prd" float(53),
  "VS_SuccURAUpd_Chg" float(53),
  "VS_SuccURAUpd_Prd" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Cell@User_Defined_Table1
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Cell@User_Defined_Table1";
CREATE TABLE "Hourly"."BSC6900UMTS@Cell@User_Defined_Table1" (
  "Cell_Name" text COLLATE "pg_catalog"."default",
  "Date" timestamp(6),
  "IRATHO_AttOutCS" float(53),
  "IRATHO_AttOutPSUTRAN" float(53),
  "IRATHO_FailOutCS_CfgUnsupp" float(53),
  "IRATHO_FailOutCS_PhyChFail" float(53),
  "IRATHO_FailOutPSUTRAN_CfgUnsupp" float(53),
  "IRATHO_FailOutPSUTRAN_PhyChFail" float(53),
  "IRATHO_SuccOutCS" float(53),
  "IRATHO_SuccOutPSUTRAN" float(53),
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Result Time" timestamp(6) NOT NULL,
  "RRC_AttConnEstab_CallReEst" float(53),
  "RRC_AttConnEstab_EmgCall" float(53),
  "RRC_AttConnEstab_OrgBkgCall" float(53),
  "RRC_AttConnEstab_OrgConvCall" float(53),
  "RRC_AttConnEstab_OrgHhPrSig" float(53),
  "RRC_AttConnEstab_OrgInterCall" float(53),
  "RRC_AttConnEstab_OrgLwPrSig" float(53),
  "RRC_AttConnEstab_OrgStrCall" float(53),
  "RRC_AttConnEstab_OrgSubCall" float(53),
  "RRC_AttConnEstab_Reg" float(53),
  "RRC_AttConnEstab_TmBkgCall" float(53),
  "RRC_AttConnEstab_TmConvCall" float(53),
  "RRC_AttConnEstab_TmHhPrSig" float(53),
  "RRC_AttConnEstab_TmInterCall" float(53),
  "RRC_AttConnEstab_TmLwPrSig" float(53),
  "RRC_AttConnEstab_TmStrCall" float(53),
  "RRC_AttConnEstab_Unknown" float(53),
  "RRC_AttConnRelCCCH_Cong" float(53),
  "RRC_AttConnRelCCCH_DSCR" float(53),
  "RRC_AttConnRelCCCH_Norm" float(53),
  "RRC_AttConnRelCCCH_Preempt" float(53),
  "RRC_AttConnRelCCCH_ReEstRej" float(53),
  "RRC_AttConnRelCCCH_Unspec" float(53),
  "RRC_AttConnRelCCCH_UsrInact" float(53),
  "RRC_AttConnRelDCCH_Cong" float(53),
  "RRC_AttConnRelDCCH_DSCR" float(53),
  "RRC_AttConnRelDCCH_Norm" float(53),
  "RRC_AttConnRelDCCH_Preempt" float(53),
  "RRC_AttConnRelDCCH_ReEstRej" float(53),
  "RRC_AttConnRelDCCH_Unspec" float(53),
  "RRC_AttConnRelDCCH_UsrInact" float(53),
  "RRC_SuccConnEstab_CallReEst" float(53),
  "RRC_SuccConnEstab_EmgCall" float(53),
  "RRC_SuccConnEstab_OrgBkgCall" float(53),
  "RRC_SuccConnEstab_OrgConvCall" float(53),
  "RRC_SuccConnEstab_OrgHhPrSig" float(53),
  "RRC_SuccConnEstab_OrgInterCall" float(53),
  "RRC_SuccConnEstab_OrgLwPrSig" float(53),
  "RRC_SuccConnEstab_OrgStrCall" float(53),
  "RRC_SuccConnEstab_OrgSubCall" float(53),
  "RRC_SuccConnEstab_Reg" float(53),
  "RRC_SuccConnEstab_sum" float(53),
  "RRC_SuccConnEstab_TmBkgCall" float(53),
  "RRC_SuccConnEstab_TmConvCall" float(53),
  "RRC_SuccConnEstab_TmHhPrSig" float(53),
  "RRC_SuccConnEstab_TmItrCall" float(53),
  "RRC_SuccConnEstab_TmLwPrSig" float(53),
  "RRC_SuccConnEstab_TmStrCall" float(53),
  "RRC_SuccConnEstab_Unkown" float(53),
  "Time" text COLLATE "pg_catalog"."default",
  "VS_AMR_DL_Traffic_BestCell" float(53),
  "VS_AttURAUpd_Chg" float(53),
  "VS_AttURAUpd_Prd" float(53),
  "VS_Cell_HSDPA_UnavailTime" float(53),
  "VS_Cell_UnavailTime_Sys" float(53),
  "VS_CellDCHUEs" float(53),
  "VS_CellFACHUEs" float(53),
  "VS_CRNC_IUB_FACH_Bandwidth" float(53),
  "VS_CRNC_IUB_PCH_Bandwidth" float(53),
  "VS_CRNC_IUB_RACH_Bandwidth" float(53),
  "VS_DCCC_Att_F2P" float(53),
  "VS_DCCC_C2D_Att" float(53),
  "VS_DCCC_D2C_Att" float(53),
  "VS_DCCC_D2P_Att" float(53),
  "VS_DCCC_D2P_Succ" float(53),
  "VS_DCCC_P2D_Att" float(53),
  "VS_DCCC_P2D_Succ" float(53),
  "VS_DCCC_P2F_Att" float(53),
  "VS_DCCC_P2F_Succ" float(53),
  "VS_DCCC_Succ_D2F" float(53),
  "VS_DCCC_Succ_F2D" float(53),
  "VS_DCCC_Succ_F2P" float(53),
  "VS_DCCC_URAP2D_Att" float(53),
  "VS_DCCC_URAP2D_Succ" float(53),
  "VS_DCCC_URAP2F_Att" float(53),
  "VS_DCCC_URAP2F_Succ" float(53),
  "VS_DRD_RBSetup_AttOut" float(53),
  "VS_DRD_RBSetup_SuccOut" float(53),
  "VS_EcNo_Mean_TP_More55" float(53),
  "VS_EcNo_Mean_TP0" float(53),
  "VS_EcNo_Mean_TP1" float(53),
  "VS_EcNo_Mean_TP10_15" float(53),
  "VS_EcNo_Mean_TP16_25" float(53),
  "VS_EcNo_Mean_TP2" float(53),
  "VS_EcNo_Mean_TP26_35" float(53),
  "VS_EcNo_Mean_TP3" float(53),
  "VS_EcNo_Mean_TP36_55" float(53),
  "VS_EcNo_Mean_TP4" float(53),
  "VS_EcNo_Mean_TP5" float(53),
  "VS_EcNo_Mean_TP6_9" float(53),
  "VS_FACH_DCCH_CONG_TIME" float(53),
  "VS_FACH_DTCH_CONG_TIME" float(53),
  "VS_FailRBRecfg_CellUpd" float(53),
  "VS_FailRBRecfg_CfgUnsup" float(53),
  "VS_FailRBRecfg_IncCfg" float(53),
  "VS_FailRBRecfg_NoReply" float(53),
  "VS_FailRBRecfg_PhyChFail" float(53),
  "VS_FailRBSetup_CellUpd" float(53),
  "VS_FailRBSetup_CfgUnsup" float(53),
  "VS_FailRBSetup_IncCfg" float(53),
  "VS_FailRBSetup_NoReply" float(53),
  "VS_FailRBSetup_PhyChFail" float(53),
  "VS_HHO_AttInterFreqOut" float(53),
  "VS_HHO_AttIntraFreqOut_InterNodeBIntraRNC" float(53),
  "VS_HHO_AttIntraFreqOut_InterRNC" float(53),
  "VS_HHO_AttIntraFreqOut_IntraNodeB" float(53),
  "VS_HHO_SuccInterFreqOut" float(53),
  "VS_HHO_SuccIntraFreqOut_InterNodeBIntraRNC" float(53),
  "VS_HHO_SuccIntraFreqOut_InterRNC" float(53),
  "VS_HHO_SuccIntraFreqOut_IntraNodeB" float(53),
  "VS_HSDPA_D2H_Att" float(53),
  "VS_HSDPA_D2H_Succ" float(53),
  "VS_HSDPA_F2H_Att" float(53),
  "VS_HSDPA_F2H_Succ" float(53),
  "VS_HSDPA_H2D_Att" float(53),
  "VS_HSDPA_H2D_Succ" float(53),
  "VS_HSDPA_H2F_Att" float(53),
  "VS_HSDPA_H2F_Succ" float(53),
  "VS_HSDPA_H2P_Succ" float(53),
  "VS_HSDPA_HHO_H2D_SuccOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2D_SuccOutIntraFreq" float(53),
  "VS_HSDPA_MeanChThroughput" float(53),
  "VS_HSDPA_MeanChThroughput_TotalBytes" float(53),
  "VS_HSDPA_RAB_64QAM_AttEstab" float(53),
  "VS_HSDPA_RAB_64QAM_SuccEstab" float(53),
  "VS_HSDPA_RAB_AbnormRel" float(53),
  "VS_HSDPA_RAB_AbnormRel_H2P" float(53),
  "VS_HSDPA_RAB_AttEstab" float(53),
  "VS_HSDPA_RAB_NormRel" float(53),
  "VS_HSDPA_RAB_SuccEstab" float(53),
  "VS_HSDPA_UE_Max_Cell" float(53),
  "VS_HSDPA_UE_Mean_CAT1_6" float(53),
  "VS_HSDPA_UE_Mean_Cell" float(53),
  "VS_HSUPA_E2P_Succ" float(53),
  "VS_IRATHO_AttOutCS_TrigDLTxp" float(53),
  "VS_IRATHO_AttOutCS_TrigEcNo" float(53),
  "VS_IRATHO_AttOutCS_TrigRscp" float(53),
  "VS_IRATHO_AttOutCS_TrigULTxp" float(53),
  "VS_IRATHO_AttOutPS_TrigDLTxp" float(53),
  "VS_IRATHO_AttOutPS_TrigEcNo" float(53),
  "VS_IRATHO_AttOutPS_TrigRscp" float(53),
  "VS_IRATHO_AttOutPS_TrigULTxp" float(53),
  "VS_IRATHO_FailOutCS_Abort" float(53),
  "VS_IRATHO_FailOutCS_NoReply" float(53),
  "VS_IRATHO_FailOutPS_Abort" float(53),
  "VS_IRATHO_FailOutPS_UEGen" float(53),
  "VS_IRATHO_FailOutPSUTRAN_NoReply" float(53),
  "VS_IRATHOCS_Cancel_ReEstab" float(53),
  "VS_IRATHOPS_Cancel_ReEstab" float(53),
  "VS_LCC_LDR_Num_DLCE" float(53),
  "VS_LCC_LDR_Num_DLCode" float(53),
  "VS_LCC_LDR_Num_DLIub" float(53),
  "VS_LCC_LDR_Num_DLPower" float(53),
  "VS_LCC_LDR_Num_ULCE" float(53),
  "VS_LCC_LDR_Num_ULIub" float(53),
  "VS_LCC_LDR_Num_ULPower" float(53),
  "VS_LCC_LDR_Time_DLCE" float(53),
  "VS_LCC_LDR_Time_DLCode" float(53),
  "VS_LCC_LDR_Time_DLIub" float(53),
  "VS_LCC_LDR_Time_DLPower" float(53),
  "VS_LCC_LDR_Time_ULCE" float(53),
  "VS_LCC_LDR_Time_ULIub" float(53),
  "VS_LCC_LDR_Time_ULPower" float(53),
  "VS_LCC_OLC_D2C" float(53),
  "VS_LCC_OLC_DL_Num" float(53),
  "VS_LCC_OLC_DL_TF" float(53),
  "VS_LCC_OLC_DL_Time" float(53),
  "VS_LCC_OLC_DL_UserRel" float(53),
  "VS_LCC_OLC_HSDPA_UserRel" float(53),
  "VS_LCC_OLC_HSUPA_UserRel" float(53),
  "VS_LCC_OLC_UL_Num" float(53),
  "VS_LCC_OLC_UL_TF" float(53),
  "VS_LCC_OLC_UL_Time" float(53),
  "VS_LCC_OLC_UL_UserRel" float(53),
  "VS_NodeB_CPU_Cong_Dur" float(53),
  "VS_PS_Bkg_DL_128_Traffic" float(53),
  "VS_PS_Bkg_DL_144_Traffic" float(53),
  "VS_PS_Bkg_DL_16_Traffic" float(53),
  "VS_PS_Bkg_DL_256_Traffic" float(53),
  "VS_PS_Bkg_DL_32_Traffic" float(53),
  "VS_PS_Bkg_DL_384_Traffic" float(53),
  "VS_PS_Bkg_DL_64_Traffic" float(53),
  "VS_PS_Bkg_DL_8_Traffic" float(53),
  "VS_PS_Bkg_UL_128_Traffic" float(53),
  "VS_PS_Bkg_UL_144_Traffic" float(53),
  "VS_PS_Bkg_UL_16_Traffic" float(53),
  "VS_PS_Bkg_UL_256_Traffic" float(53),
  "VS_PS_Bkg_UL_32_Traffic" float(53),
  "VS_PS_Bkg_UL_384_Traffic" float(53),
  "VS_PS_Bkg_UL_64_Traffic" float(53),
  "VS_PS_Bkg_UL_8_Traffic" float(53),
  "VS_PS_Conv_DL_Traffic" float(53),
  "VS_PS_Conv_UL_Traffic" float(53),
  "VS_PS_Int_DL_128_Traffic" float(53),
  "VS_PS_Int_DL_144_Traffic" float(53),
  "VS_PS_Int_DL_16_Traffic" float(53),
  "VS_PS_Int_DL_256_Traffic" float(53),
  "VS_PS_Int_DL_32_Traffic" float(53),
  "VS_PS_Int_DL_384_Traffic" float(53),
  "VS_PS_Int_DL_64_Traffic" float(53),
  "VS_PS_Int_DL_8_Traffic" float(53),
  "VS_PS_Int_UL_128_Traffic" float(53),
  "VS_PS_Int_UL_144_Traffic" float(53),
  "VS_PS_Int_UL_16_Traffic" float(53),
  "VS_PS_Int_UL_256_Traffic" float(53),
  "VS_PS_Int_UL_32_Traffic" float(53),
  "VS_PS_Int_UL_384_Traffic" float(53),
  "VS_PS_Int_UL_64_Traffic" float(53),
  "VS_PS_Int_UL_8_Traffic" float(53),
  "VS_PS_Str_DL_128_Traffic" float(53),
  "VS_PS_Str_DL_144_Traffic" float(53),
  "VS_PSR99_D2P_Succ" float(53),
  "VS_RAB_AbnormRel_AMR" float(53),
  "VS_RAB_AbnormRel_AMR_12_2" float(53),
  "VS_RAB_AbnormRel_CS" float(53),
  "VS_RAB_AbnormRel_CS_IuAAL2" float(53),
  "VS_RAB_AbnormRel_CS_OLC" float(53),
  "VS_RAB_AbnormRel_CS_OM" float(53),
  "VS_RAB_AbnormRel_CS_Preempt" float(53),
  "VS_RAB_AbnormRel_CS_RF_SRBReset" float(53),
  "VS_RAB_AbnormRel_CS_RF_ULSync" float(53),
  "VS_RAB_AbnormRel_CS_RF_UuNoReply" float(53),
  "VS_RAB_AbnormRel_CS_UTRANgen" float(53),
  "VS_RAB_AbnormRel_CS64" float(53),
  "VS_RAB_AbnormRel_PS" float(53),
  "VS_RAB_AbnormRel_PS_D2P" float(53),
  "VS_RAB_AbnormRel_PS_F2P" float(53),
  "VS_RAB_AbnormRel_PS_GTPULoss" float(53),
  "VS_RAB_AbnormRel_PS_OLC" float(53),
  "VS_RAB_AbnormRel_PS_OM" float(53),
  "VS_RAB_AbnormRel_PS_PCH" float(53),
  "VS_RAB_AbnormRel_PS_Preempt" float(53),
  "VS_RAB_AbnormRel_PS_R99D2P" float(53),
  "VS_RAB_AbnormRel_PS_RF_SRBReset" float(53),
  "VS_RAB_AbnormRel_PS_RF_TRBReset" float(53),
  "VS_RAB_AbnormRel_PS_RF_ULSync" float(53),
  "VS_RAB_AbnormRel_PS_RF_UuNoReply" float(53),
  "VS_RAB_AbnormRel_PSR99" float(53),
  "VS_RAB_AttEstab_AMR" float(53),
  "VS_RAB_AttEstabCS_Conv" float(53),
  "VS_RAB_AttEstabCS_Str" float(53),
  "VS_RAB_AttEstabPS_Bkg" float(53),
  "VS_RAB_AttEstabPS_Conv" float(53),
  "VS_RAB_AttEstabPS_Int" float(53),
  "VS_RAB_FailEstabCS_Code_Cong" float(53),
  "VS_RAB_FailEstabCS_Cong" float(53),
  "VS_RAB_FailEstabCS_DLCE_Cong" float(53),
  "VS_RAB_FailEstabCS_DLIUBBand_Cong" float(53),
  "VS_RAB_FailEstabCS_DLPower_Cong" float(53),
  "VS_RAB_FailEstabCS_IubFail" float(53),
  "VS_RAB_FailEstabCS_ULCE_Cong" float(53),
  "VS_RAB_FailEstabCS_ULIUBBand_Cong" float(53),
  "VS_RAB_FailEstabCS_ULPower_Cong" float(53),
  "VS_RAB_FailEstabCS_UuFail" float(53),
  "VS_RAB_FailEstabCS_UuNoReply" float(53),
  "VS_RAB_FailEstabPS_Code_Cong" float(53),
  "VS_RAB_FailEstabPS_DLCE_Cong" float(53),
  "VS_RAB_FailEstabPS_DLIUBBand_Cong" float(53),
  "VS_RAB_FailEstabPS_DLPower_Cong" float(53),
  "VS_RAB_FailEstabPS_RNL" float(53),
  "VS_RAB_FailEstabPS_TNL" float(53),
  "VS_RAB_FailEstabPS_ULCE_Cong" float(53),
  "VS_RAB_FailEstabPS_ULIUBBand_Cong" float(53),
  "VS_RAB_FailEstabPS_ULPower_Cong" float(53),
  "VS_RAB_FailEstabPS_Unsp" float(53),
  "VS_RAB_NormRel_AMR" float(53),
  "VS_RAB_NormRel_CS" float(53),
  "VS_RAB_NormRel_CS64" float(53),
  "VS_RAB_NormRel_PS" float(53),
  "VS_RAB_NormRel_PS_PCH" float(53),
  "VS_RAB_NormRel_PSR99" float(53),
  "VS_RAB_SuccEstabCS_AMR" float(53),
  "VS_RAB_SuccEstabCS_Conv" float(53),
  "VS_RAB_SuccEstabCS_Str" float(53),
  "VS_RAB_SuccEstabPS_Bkg" float(53),
  "VS_RAB_SuccEstabPS_Conv" float(53),
  "VS_RAB_SuccEstabPS_Int" float(53),
  "VS_RAB_SuccEstabPS_Str" float(53),
  "VS_RAC_DCCC_Fail_Code_Cong" float(53),
  "VS_RAC_DCCC_Fail_DLCE_Cong" float(53),
  "VS_RAC_DCCC_Fail_DLPower_Cong" float(53),
  "VS_RAC_DCCC_Fail_ULCE_Cong" float(53),
  "VS_RAC_DCCC_Fail_ULPower_Cong" float(53),
  "VS_RAC_HHO_Fail_Code_Cong" float(53),
  "VS_RAC_HHO_Fail_DLCE_Cong" float(53),
  "VS_RAC_HHO_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_HHO_Fail_DLPower_Cong" float(53),
  "VS_RAC_HHO_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_HHO_Fail_ULCE_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_Code_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_DLCE_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_DLPower_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_ULPower_Cong" float(53),
  "VS_RAC_SHO_Fail_Code_Cong" float(53),
  "VS_RAC_SHO_Fail_DLCE_Cong" float(53),
  "VS_RAC_SHO_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_SHO_Fail_DLPower_Cong" float(53),
  "VS_RAC_SHO_Fail_HSUPANum_Cong" float(53),
  "VS_RAC_SHO_Fail_ULCE_Cong" float(53),
  "VS_RAC_SHO_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_SHO_Fail_ULPower_Cong" float(53),
  "VS_RAC_SHOCallAcc" float(53),
  "VS_RAC_SHOCallReq" float(53),
  "VS_RB_AMR_DL_10_2" float(53),
  "VS_RB_AMR_DL_12_2" float(53),
  "VS_RB_AMR_DL_4_75" float(53),
  "VS_RB_AMR_DL_5_15" float(53),
  "VS_RB_AMR_DL_5_9" float(53),
  "VS_RB_AMR_DL_6_7" float(53),
  "VS_RB_AMR_DL_7_4" float(53),
  "VS_RB_AMR_DL_7_95" float(53),
  "VS_RB_CS_Conv_DL_64" float(53),
  "VS_RRC_AttConnEstab_HSDSCH" float(53),
  "VS_RRC_AttConnEstab_Sum" float(53),
  "VS_RRC_ConnRel_CellUpd" float(53),
  "VS_RRC_FailConnEstab_NoReply" float(53),
  "VS_RRC_Paging1_Loss_PCHCong_Cell" float(53),
  "VS_RRC_Rej_DLCE_Cong" float(53),
  "VS_RRC_Rej_DLIUBBand_Cong" float(53),
  "VS_RRC_Rej_DLPower_Cong" float(53),
  "VS_RRC_Rej_Redir_Service" float(53),
  "VS_RRC_Rej_RL_Fail" float(53),
  "VS_RRC_Rej_Sum" float(53),
  "VS_RRC_Rej_TNL_Fail" float(53),
  "VS_RRC_Rej_ULCE_Cong" float(53),
  "VS_RRC_Rej_ULIUBBand_Cong" float(53),
  "VS_RRC_Rej_ULPower_Cong" float(53),
  "VS_SHO_AMR_Att" float(53),
  "VS_SHO_AMR_Succ" float(53),
  "VS_SHO_AS_1RL" float(53),
  "VS_SHO_AS_2RL" float(53),
  "VS_SHO_AS_3RL" float(53),
  "VS_SHO_AS_4RL" float(53),
  "VS_SHO_AS_5RL" float(53),
  "VS_SHO_AS_6RL" float(53),
  "VS_SHO_AttRLAdd" float(53),
  "VS_SHO_AttRLDel" float(53),
  "VS_SHO_SuccRLAdd" float(53),
  "VS_SHO_SuccRLDel" float(53),
  "VS_SuccURAUpd_Chg" float(53),
  "VS_SuccURAUpd_Prd" float(53),
  "VS_TP_UE_0" float(53),
  "VS_TP_UE_1" float(53),
  "VS_TP_UE_10_15" float(53),
  "VS_TP_UE_16_25" float(53),
  "VS_TP_UE_2" float(53),
  "VS_TP_UE_26_35" float(53),
  "VS_TP_UE_3" float(53),
  "VS_TP_UE_36_55" float(53),
  "VS_TP_UE_4" float(53),
  "VS_TP_UE_5" float(53),
  "VS_TP_UE_6_9" float(53),
  "VS_TP_UE_More55" float(53),
  "VS_UTRAN_AttPaging1" float(53),
  "VS_Cell_HSUPA_UnavailTime" float(53),
  "VS_Cell_UnavailTime" float(53),
  "VS_CPICH_MeanPwr" float(53),
  "VS_DCCC_P2D_DRD_Att" float(53),
  "VS_DCCC_P2D_DRD_Succ" float(53),
  "VS_DCCC_P2URAP" float(53),
  "VS_FACH_CCCH_CONG_TIME" float(53),
  "VS_HSDPA_H2P_Att" float(53),
  "VS_HSUPA_E2P_Att" float(53),
  "VS_LC_DLCreditUsed_Max" float(53),
  "VS_LC_DLCreditUsed_Mean" float(53),
  "VS_LC_DLCreditUsed_Min" float(53),
  "VS_LC_ULCreditUsed_Max" float(53),
  "VS_LC_ULCreditUsed_Mean" float(53),
  "VS_LC_ULCreditUsed_Min" float(53),
  "VS_PSR99_D2P_Att" float(53),
  "VS_RAC_HHO_Fail_HSDPANum_Cong" float(53),
  "VS_RAC_HHO_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_HHO_Fail_ULPower_Cong" float(53),
  "VS_RAC_HHO_Preempt_Cong" float(53),
  "VS_RAC_NewCallAcc" float(53),
  "VS_RAC_NewCallReq" float(53),
  "VS_RAC_NewCallReq_Fail_DLIUBBand_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_HSDPANum_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_ULCE_Cong" float(53),
  "VS_RAC_NewCallReq_Fail_ULIUBBand_Cong" float(53),
  "VS_RAC_NewCallReq_Preempt_Cong" float(53),
  "VS_RAC_ReconfigCallAcc" float(53),
  "VS_RAC_ReconfigCallReq" float(53),
  "VS_RAC_UL_EqvUserNum" float(53),
  "IRATHO_AttRelocPrepOutCS" float(53),
  "IRATHO_FailRelocPrepOutCS_HigherTrafficLod" float(53),
  "IRATHO_FailRelocPrepOutCS_NoResAvail" float(53),
  "IRATHO_FailRelocPrepOutCS_ReloNoSup" float(53),
  "IRATHO_FailRelocPrepOutCS_TAlExp" float(53),
  "IRATHO_FailRelocPrepOutCS_TgtFail" float(53),
  "IRATHO_FailRelocPrepOutCS_UKnowRNC" float(53),
  "VS_IRATHO_AttOutPSUTRAN_Load" float(53),
  "VS_IRATHO_AttOutPSUTRAN_RF" float(53),
  "VS_IRATHO_AttOutPSUTRAN_Service" float(53),
  "VS_IRATHO_AttOutPSUTRAN_Sig" float(53),
  "VS_IRATHO_AttOutPSUE" float(53),
  "VS_IRATHO_AttRelocPrepInCS" float(53),
  "VS_IRATHO_AttRelocPrepInPS" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_DR" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_Load" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_RF" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_Service" float(53),
  "VS_IRATHO_AttRelocPrepOutCS_Sig" float(53),
  "VS_IRATHO_AttRelocPrepOutPS" float(53),
  "VS_IRATHO_FailInCS_NoReply" float(53),
  "VS_IRATHO_FailOutCS_CNUnspecFail" float(53),
  "VS_IRATHO_FailOutCS_InterRatRF" float(53),
  "VS_IRATHO_FailOutCS_SCRI" float(53),
  "VS_IRATHO_FailOutPS" float(53),
  "VS_IRATHO_FailOutPSUTRAN_CNUnspecFail" float(53),
  "VS_IRATHO_FailOutPSUTRAN_InterRatRF" float(53),
  "VS_IRATHO_FailOutPSUTRAN_NoSRNSDataForwardCmd" float(53),
  "VS_IRATHO_FailOutPSUTRAN_SCRI" float(53),
  "VS_IRATHO_FailRelocInPS_NoReply" float(53),
  "VS_IRATHO_FailRelocOutPS_CfgUnSupp" float(53),
  "VS_IRATHO_FailRelocOutPS_NoReply" float(53),
  "VS_IRATHO_FailRelocOutPS_PhyChFail" float(53),
  "VS_IRATHO_FailRelocPrepInCS_Abort" float(53),
  "VS_IRATHO_FailRelocPrepInCS_ResUnavail" float(53),
  "VS_IRATHO_FailRelocPrepInCS_TgtHighLoad" float(53),
  "VS_IRATHO_FailRelocPrepInCS_TRNCSysFailReloc" float(53),
  "VS_IRATHO_FailRelocPrepInCS_TRNCSysRelocUnsupp" float(53),
  "VS_IRATHO_FailRelocPrepInPS_ReloUnSupp" float(53),
  "VS_IRATHO_FailRelocPrepInPS_ResUnavail" float(53),
  "VS_IRATHO_FailRelocPrepInPS_TgtFail" float(53),
  "VS_IRATHO_FailRelocPrepInPS_TgtHighLoad" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_Abort" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_Cancel" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_OM" float(53),
  "VS_IRATHO_FailRelocPrepOutCS_ReqInfoNotAvail" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_NoResAvail" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_ReloUnSupp" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_TAlExp" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_TgtFail" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_TgtHighLoad" float(53),
  "VS_IRATHO_FailRelocPrepOutPS_UnKnowRNC" float(53),
  "VS_IRATHO_HSDPA_AttOutPSUTRAN" float(53),
  "VS_IRATHO_HSDPA_SuccOutPSUTRAN" float(53),
  "VS_IRATHO_HSUPA_AttOutPSUTRAN" float(53),
  "VS_IRATHO_HSUPA_SuccOutPSUTRAN" float(53),
  "VS_IRATHO_OutCS_MeasTimeOut" float(53),
  "VS_IRATHO_OutPS_MeasTimeOut" float(53),
  "VS_IRATHO_SuccENACC" float(53),
  "VS_IRATHO_SuccInCS" float(53),
  "VS_IRATHO_SuccNACC" float(53),
  "VS_IRATHO_SuccOutCS_DR" float(53),
  "VS_IRATHO_SuccOutCS_Load" float(53),
  "VS_IRATHO_SuccOutCS_MBDR" float(53),
  "VS_IRATHO_SuccOutCS_RF" float(53),
  "VS_IRATHO_SuccOutCS_Service" float(53),
  "VS_IRATHO_SuccOutCS_Sig" float(53),
  "VS_IRATHO_SuccOutCS_TrigDLTxp" float(53),
  "VS_IRATHO_SuccOutCS_TrigEcNo" float(53),
  "VS_IRATHO_SuccOutCS_TrigRscp" float(53),
  "VS_IRATHO_SuccOutCS_TrigULTxp" float(53),
  "VS_IRATHO_SuccOutMultiRABCSPS" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_Load" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_RF" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_Service" float(53),
  "VS_IRATHO_SuccOutPSUTRAN_Sig" float(53),
  "VS_IRATHO_SuccOutPS_TrigDLTxp" float(53),
  "VS_IRATHO_SuccOutPS_TrigEcNo" float(53),
  "VS_IRATHO_SuccOutPS_TrigRscp" float(53),
  "VS_IRATHO_SuccOutPS_TrigULTxp" float(53),
  "VS_IRATHO_SuccRelocInPS" float(53),
  "VS_IRATHO_SuccRelocOutPS" float(53),
  "VS_IRATHO_SuccRelocPrepInCS" float(53),
  "VS_IRATHO_SuccRelocPrepInPS" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_DR" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_Load" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_RF" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_Service" float(53),
  "VS_IRATHO_SuccRelocPrepOutCS_Sig" float(53),
  "VS_IRATHO_SuccRelocPrepOutPS" float(53),
  "VS_L2U_AttRelocPrepInPS" float(53),
  "RRC_AttConnEstab_IRATCCO" float(53),
  "RRC_AttConnEstab_IRATCelRes" float(53),
  "RRC_AttConnEstab_Detach" float(53),
  "RRC_SuccConnEstab_Detach" float(53),
  "RRC_SuccConnEstab_IRATCCO" float(53),
  "RRC_SuccConnEstab_IRATCelRes" float(53),
  "VS_CU_FC_Num_CPU_OverLoad" float(53),
  "VS_RRC_AttConnEstab_CellDCH" float(53),
  "VS_RRC_AttConnEstab_CellFACH" float(53),
  "VS_RRC_AttConnEstab_CSFB" float(53),
  "VS_RRC_AttConnEstab_EDCH" float(53),
  "VS_RRC_CONV_FC_Num_CallShock" float(53),
  "VS_RRC_CONV_FC_Num_CAPS" float(53),
  "VS_RRC_CONV_FC_Num_CPU_OverLoad" float(53),
  "VS_RRC_CONV_FC_Num_INT_OverLoad" float(53),
  "VS_RRC_CONV_FC_Num_MPU_OverLoad" float(53),
  "VS_RRC_CONV_FC_Num_RanFC_Ph1" float(53),
  "VS_RRC_CONV_FC_Num_RanFC_Ph2" float(53),
  "VS_RRC_CONV_FC_Num_RRCQueue" float(53),
  "VS_RRC_FC_Num_CallShock" float(53),
  "VS_RRC_FC_Num_CAPS" float(53),
  "VS_RRC_SuccConnEstab_CellDCH" float(53),
  "VS_RRC_SuccConnEstab_CellFACH" float(53),
  "VS_RRC_SuccConnEstab_CSFB" float(53),
  "VS_RRC_SuccConnEstab_EDCH" float(53),
  "VS_RRC_SuccConnEstab_HSDSCH" float(53),
  "VS_RRC_SuccConnEstab_First" float(53),
  "VS_RRC_SuccConnEstab_Second" float(53),
  "VS_RRC_SuccConnEstab_Third" float(53),
  "VS_RAB_AMR_Erlang_cell" float(53),
  "VS_VP_DL_Traffic_BestCell" float(53),
  "VS_VP_Erlang_BestCell" float(53),
  "VS_VP_UL_Traffic_BestCell" float(53),
  "VS_CellFACHUEs_MAX" float(53),
  "VS_CellPCHUEs" float(53),
  "VS_CRNCIubBytesRACH_Rx" float(53),
  "VS_CRNCIubBytesFACH_Tx" float(53),
  "VS_CRNCIubBytesPCH_Tx" float(53),
  "VS_CRNCIubBytesPSR99_CCH_Rx" float(53),
  "VS_CRNCIubBytesPSR99_CCH_Tx" float(53),
  "VS_HHO_AttIn" float(53),
  "VS_HHO_SuccIn" float(53),
  "VS_HHO_SuccBlindHO" float(53),
  "VS_HSDPA_RAB_AbnormRel_DC" float(53),
  "VS_HSDPA_RAB_AbnormRel_64QAM" float(53),
  "VS_HSDPA_RAB_AbnormRel_RF" float(53),
  "VS_HSDPA_RAB_DC_AttEstab" float(53),
  "VS_HSDPA_RAB_DC_SuccEstab" float(53),
  "VS_HSDPA_RAB_NormRel_DC" float(53),
  "VS_HSDPA_RAB_NormRel_64QAM" float(53),
  "VS_HSDPA_UE_Max_CAT11_12" float(53),
  "VS_HSDPA_UE_Max_CAT13_14" float(53),
  "VS_HSDPA_UE_Max_CAT15_16" float(53),
  "VS_HSDPA_UE_Max_CAT17_20" float(53),
  "VS_HSDPA_UE_Max_CAT1_6" float(53),
  "VS_HSDPA_UE_Max_CAT21_24" float(53),
  "VS_HSDPA_UE_Max_CAT25_28" float(53),
  "VS_HSDPA_UE_Max_CAT7_10" float(53),
  "VS_HSDPA_UE_Max_Cell_Free" float(53),
  "VS_HSDPA_UE_Mean_CAT11_12" float(53),
  "VS_HSDPA_UE_Mean_CAT13_14" float(53),
  "VS_HSDPA_UE_Mean_CAT15_16" float(53),
  "VS_HSDPA_UE_Mean_CAT17_20" float(53),
  "VS_HSDPA_UE_Mean_CAT21_24" float(53),
  "VS_HSDPA_UE_Mean_CAT25_28" float(53),
  "VS_HSDPA_UE_Mean_CAT7_10" float(53),
  "VS_RAB_AbnormRel_AMR_RF" float(53),
  "VS_RAB_AbnormRel_CS_CSFB" float(53),
  "VS_RAB_AbnormRel_CS_CSFB_RF" float(53),
  "VS_RAB_AbnormRel_CS_IuTNL" float(53),
  "VS_RAB_AbnormRel_CS_IuupFail" float(53),
  "VS_RAB_AbnormRel_CS_Disconnect" float(53),
  "VS_RAB_AbnormRel_CS_HSPA_Conv" float(53),
  "VS_RAB_AbnormRel_CS_RF" float(53),
  "VS_RAB_AttEstabCS_AMR_12_2" float(53),
  "VS_RAB_FailEstabCS_NodeBDLCE_Cong" float(53),
  "VS_RAB_FailEstabCS_NodeBULCE_Cong" float(53),
  "VS_RAB_FailEstabCS_PhyChFail" float(53),
  "VS_RAB_FailEstabCS_RBCfgUnsup" float(53),
  "VS_RAB_FailEstabCS_RBIncCfg" float(53),
  "VS_RAB_FailEstabCS_RNL" float(53),
  "VS_RAB_FailEstabCS_SRBReset" float(53),
  "VS_RAB_FailEstabCS_SRBReset_CSFB" float(53),
  "VS_RAB_FailEstabCS_UuFail_CSFB" float(53),
  "VS_RAB_FailEstabPS_IubFail" float(53),
  "VS_RAB_FailEstabPS_NodeBDLCE_Cong" float(53),
  "VS_RAB_FailEstabPS_NodeBULCE_Cong" float(53),
  "VS_RAB_FailEstabPS_PhyChFail" float(53),
  "VS_RAB_FailEstabPS_DLPower_Cong_Free" float(53),
  "VS_RAB_FailEstabPS_HSDPAUser_Cong" float(53),
  "VS_RAB_FailEstabPS_DLIUPSBand_Cong" float(53),
  "VS_RAB_FailEstabPS_HSUPAUser_Cong" float(53),
  "VS_RAB_FailEstabPS_IubAAL2Fail" float(53),
  "VS_RAB_FailEstabPS_RBCfgUnsupp" float(53),
  "VS_RAB_FailEstabPS_RBIncCfg" float(53),
  "VS_RAB_FailEstabPS_SRBReset" float(53),
  "VS_RAB_FailEstabPS_ULCE_FinalCong" float(53),
  "VS_RAB_FailEstabPS_UuFail" float(53),
  "VS_RAB_FailEstabPS_UuNoReply" float(53),
  "VS_RRC_Rej_NodeBDLCE_Cong" float(53),
  "VS_RRC_Rej_NodeBULCE_Cong" float(53),
  "VS_SHO_PS_Att" float(53),
  "VS_SHO_PS_Succ" float(53),
  "VS_HSUPA_D2E_Att" float(53),
  "VS_HSUPA_D2E_Succ" float(53),
  "VS_HSUPA_E2D_Att" float(53),
  "VS_HSUPA_E2D_Succ" float(53),
  "VS_HSUPA_E2F_Att" float(53),
  "VS_HSUPA_E2F_Succ" float(53),
  "VS_HSUPA_F2E_Att" float(53),
  "VS_HSUPA_F2E_Succ" float(53),
  "VS_HSUPA_RAB_AbnormRel" float(53),
  "VS_HSUPA_RAB_NormRel" float(53),
  "VS_HSUPA_RAB_SuccEstab" float(53),
  "VS_HSUPA_RAB_AttEstab" float(53),
  "VS_HSUPA_MeanChThroughput" float(53),
  "VS_HSUPA_MeanChThroughput_TotalBytes" float(53),
  "VS_HSUPA_UE_Mean_Cell" float(53),
  "VS_SuccCellUpdt_PageRsp" float(53),
  "VS_SuccCellUpdt_ULDataTrans" float(53),
  "VS_SuccCellUpdt_Reg_PCH" float(53),
  "VS_SuccCellUpdt_Detach_PCH" float(53),
  "VS_SuccCellUpdt_Other_PCH" float(53),
  "VS_AttCellUpdt_PageRsp" float(53),
  "VS_AttCellUpdt_ULDataTrans" float(53),
  "VS_AttCellUpdt_Reg_PCH" float(53),
  "VS_AttCellUpdt_Detach_PCH" float(53),
  "VS_AttCellUpdt_Other_PCH" float(53),
  "VS_AttCellUpdt_OrgConvCall_PCH" float(53),
  "VS_AttCellUpdt_TmConvCall_PCH" float(53),
  "VS_AttCellUpdt_EmgCall_PCH" float(53),
  "VS_SuccCellUpdt_OrgConvCall_PCH" float(53),
  "VS_SuccCellUpdt_TmConvCall_PCH" float(53),
  "VS_SuccCellUpdt_EmgCall_PCH" float(53),
  "VS_RAB_AttEstabPS_Str" float(53),
  "VS_RAB_SuccEstabCS_AMRWB" float(53),
  "VS_RAB_AttEstabCS_AMRWB" float(53),
  "VS_RAB_SuccEstCS_Conv_64" float(53),
  "VS_RAB_AttEstCS_Conv_64" float(53),
  "VS_MultiRAB_SuccEstab_CSPS" float(53),
  "VS_MultiRAB_AttEstab_CSPS" float(53),
  "VS_MultiRAB_SuccEstab_PSPS" float(53),
  "VS_MultiRAB_AttEstab_PSPS" float(53),
  "VS_SuccRecfg_F2H_DataTransTrig" float(53),
  "VS_SuccRecfg_P2H_DataTransTrig" float(53),
  "VS_AttRecfg_F2H_DataTransTrig" float(53),
  "VS_AttRecfg_P2H_DataTransTrig" float(53),
  "VS_SuccRecfg_F2E_DataTransTrig" float(53),
  "VS_SuccRecfg_P2E_DataTransTrig" float(53),
  "VS_AttRecfg_F2E_DataTransTrig" float(53),
  "VS_AttRecfg_P2E_DataTransTrig" float(53),
  "VS_HSPA_RAB_SuccEstab_CS_Conv" float(53),
  "VS_HSPA_RAB_AttEstab_CS_Conv" float(53),
  "VS_HSDPA_RAB_MIMO_SuccEstab" float(53),
  "VS_HSDPA_RAB_MIMO_AttEstab" float(53),
  "VS_HSDPA_RAB_MIMO64QAM_SuccEstab" float(53),
  "VS_HSDPA_RAB_MIMO64QAM_AttEstab" float(53),
  "VS_RRC_Rej_Code_Cong" float(53),
  "VS_RAB_SuccEstab_PSR99" float(53),
  "VS_RAB_AttEstab_PSR99" float(53),
  "VS_SuccRecfg_F2D_DataTransTrig" float(53),
  "VS_SuccRecfg_P2D_DataTransTrig" float(53),
  "VS_AttRecfg_F2D_DataTransTrig" float(53),
  "VS_AttRecfg_P2D_DataTransTrig" float(53),
  "VS_SuccCellUpdt_OrgInterCall_PCH" float(53),
  "VS_SuccCellUpdt_OrgBkgCall_PCH" float(53),
  "VS_SuccCellUpdt_TmInterCall_PCH" float(53),
  "VS_SuccCellUpdt_TmBkgCall_PCH" float(53),
  "VS_AttCellUpdt_OrgInterCall_PCH" float(53),
  "VS_AttCellUpdt_OrgBkgCall_PCH" float(53),
  "VS_AttCellUpdt_TmInterCall_PCH" float(53),
  "VS_AttCellUpdt_TmBkgCall_PCH" float(53),
  "VS_SuccEstabCS_AfterP2F" float(53),
  "VS_SuccEstabCS_AfterP2D" float(53),
  "VS_AttEstabCS_AfterP2F" float(53),
  "VS_AttEstabCS_AfterP2D" float(53),
  "VS_SuccEstabPS_AfterP2F" float(53),
  "VS_SuccEstabPS_AfterP2D" float(53),
  "VS_AttEstabPS_AfterP2F" float(53),
  "VS_AttEstabPS_AfterP2D" float(53),
  "VS_SoHO_SuccRLAdd" float(53),
  "VS_SoHO_SuccRLDel" float(53),
  "VS_SoHO_AttRLAdd" float(53),
  "VS_SoHO_AttRLDel" float(53),
  "VS_SHO_CS64_Succ" float(53),
  "VS_SHO_CS64_Att" float(53),
  "VS_HSDPA_SHO_ServCellChg_SuccOut" float(53),
  "VS_HSDPA_SHO_ServCellChg_AttOut" float(53),
  "VS_HSDPA_HHO_H2H_SuccOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2H_AttOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2H_SuccOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2H_AttOutInterFreq" float(53),
  "VS_HSDPA_HHO_H2D_AttOutIntraFreq" float(53),
  "VS_HSDPA_HHO_H2D_AttOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2D_SuccOutIntraFreq" float(53),
  "VS_HSUPA_HHO_E2D_AttOutIntraFreq" float(53),
  "VS_HSUPA_SHO_SuccOut" float(53),
  "VS_HSUPA_SHO_AttOut" float(53),
  "VS_HSUPA_SHO_ServCellChg_SuccOut" float(53),
  "VS_HSUPA_SHO_ServCellChg_AttOut" float(53),
  "VS_HSUPA_HHO_E2E_SuccOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2E_AttOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2D_SuccOutInterFreq" float(53),
  "VS_HSUPA_HHO_E2D_AttOutInterFreq" float(53),
  "VS_HHO_SuccInterFreqOut_CS" float(53),
  "VS_HHO_AttInterFreqOut_CS" float(53),
  "VS_HHO_SuccInterFreqOut_PS" float(53),
  "VS_HHO_AttInterFreqOut_PS" float(53),
  "VS_MultiRAB_CSAbnormRel_CSPS" float(53),
  "VS_MultiRAB_CSNormRel_CSPS" float(53),
  "VS_MultiRAB_PSNormRel_CSPS" float(53),
  "VS_MultiRAB_PSAbnormRel_CSPS" float(53),
  "VS_MultiRAB_CSPSNormRel_CSPS" float(53),
  "VS_MultiRAB_CSPSAbnormRel_CSPS" float(53),
  "VS_RAB_AbnormRel_AMRWB" float(53),
  "VS_RAB_NormRel_AMRWB" float(53),
  "VS_RB_AMRWB_DL_23_85" float(53),
  "VS_RB_AMRWB_DL_23_05" float(53),
  "VS_RB_AMRWB_DL_19_85" float(53),
  "VS_RB_AMRWB_DL_18_25" float(53),
  "VS_RB_AMRWB_DL_15_85" float(53),
  "VS_RB_AMRWB_DL_14_25" float(53),
  "VS_RB_AMRWB_DL_12_65" float(53),
  "VS_RB_AMRWB_DL_8_85" float(53),
  "VS_RB_AMRWB_DL_6_60" float(53),
  "VS_DCCC_Succ_F2U" float(53),
  "VS_DCCC_Succ_D2U" float(53),
  "VS_MultiRAB_PSAbnormRel_ResumeExp" float(53),
  "VS_RAB_AbnormRel_PS_BE" float(53),
  "VS_RAB_NormRel_PS_BE" float(53),
  "VS_HSUPA_RAB_AbnormRel_E2P" float(53),
  "VS_HSDPA_RAB_AbnormRel_DC2P" float(53),
  "VS_HSDPA_RAB_NormRel_DC_All" float(53),
  "VS_HSDPA_RAB_AbnormRel_64QAM2P" float(53),
  "VS_HSDPA_RAB_NormRel_64QAM_All" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO2P" float(53),
  "VS_HSDPA_RAB_NormRel_MIMO_All" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO64QAM" float(53),
  "VS_HSDPA_RAB_AbnormRel_MIMO64QAM2P" float(53),
  "VS_HSDPA_RAB_NormRel_MIMO64QAM_All" float(53),
  "VS_PS_Bkg_Kbps_UL8" float(53),
  "VS_PS_Bkg_Kbps_UL16" float(53),
  "VS_PS_Bkg_Kbps_UL32" float(53),
  "VS_PS_Bkg_Kbps_UL64" float(53),
  "VS_PS_Bkg_Kbps_UL128" float(53),
  "VS_PS_Bkg_Kbps_UL144" float(53),
  "VS_PS_Bkg_Kbps_UL256" float(53),
  "VS_PS_Bkg_Kbps_UL384" float(53),
  "VS_PS_Int_Kbps_UL8" float(53),
  "VS_PS_Int_Kbps_UL16" float(53),
  "VS_PS_Int_Kbps_UL32" float(53),
  "VS_PS_Int_Kbps_UL64" float(53),
  "VS_PS_Int_Kbps_UL128" float(53),
  "VS_PS_Int_Kbps_UL144" float(53),
  "VS_PS_Int_Kbps_UL256" float(53),
  "VS_PS_Int_Kbps_UL384" float(53),
  "VS_PS_Str_Kbps_UL8" float(53),
  "VS_PS_Str_Kbps_UL16" float(53),
  "VS_PS_Str_Kbps_UL32" float(53),
  "VS_PS_Str_Kbps_UL64" float(53),
  "VS_PS_Str_Kbps_UL128" float(53),
  "VS_PS_Conv_Kbps_UL" float(53),
  "VS_PS_Bkg_Kbps_DL8" float(53),
  "VS_PS_Bkg_Kbps_DL16" float(53),
  "VS_PS_Bkg_Kbps_DL32" float(53),
  "VS_PS_Bkg_Kbps_DL64" float(53),
  "VS_PS_Bkg_Kbps_DL128" float(53),
  "VS_PS_Bkg_Kbps_DL144" float(53),
  "VS_PS_Bkg_Kbps_DL256" float(53),
  "VS_PS_Bkg_Kbps_DL384" float(53),
  "VS_PS_Int_Kbps_DL8" float(53),
  "VS_PS_Int_Kbps_DL16" float(53),
  "VS_PS_Int_Kbps_DL32" float(53),
  "VS_PS_Int_Kbps_DL64" float(53),
  "VS_PS_Int_Kbps_DL128" float(53),
  "VS_PS_Int_Kbps_DL144" float(53),
  "VS_PS_Int_Kbps_DL256" float(53),
  "VS_PS_Int_Kbps_DL384" float(53),
  "VS_PS_Str_Kbps_DL8" float(53),
  "VS_PS_Str_Kbps_DL16" float(53),
  "VS_PS_Str_Kbps_DL32" float(53),
  "VS_PS_Str_Kbps_DL64" float(53),
  "VS_PS_Str_Kbps_DL128" float(53),
  "VS_PS_Str_Kbps_DL144" float(53),
  "VS_PS_Str_Kbps_DL256" float(53),
  "VS_PS_Str_Kbps_DL384" float(53),
  "VS_PS_Conv_Kbps_DL" float(53),
  "VS_ULBler_AMR" float(53),
  "VS_ULBler_CS64" float(53),
  "VS_ULBler_PS_BE_DCH_8" float(53),
  "VS_ULBler_PS_BE_DCH_16" float(53),
  "VS_ULBler_PS_BE_DCH_32" float(53),
  "VS_ULBler_PS_BE_DCH_64" float(53),
  "VS_ULBler_PS_BE_DCH_128" float(53),
  "VS_ULBler_PS_BE_DCH_144" float(53),
  "VS_ULBler_PS_BE_DCH_256" float(53),
  "VS_ULBler_PS_BE_DCH_384" float(53),
  "VS_ULBler_PS_BE_RACH" float(53),
  "VS_ULBler_PS_Conv" float(53),
  "VS_ULBler_PS_Str" float(53),
  "VS_MBMS_PTM_MeanThroughput" float(53),
  "VS_MBMS_PTP_MeanThroughput" float(53),
  "VS_HSPA_UE_Mean_CS_Conv_Cell" float(53),
  "VS_RB_PS_Bkg_UL_8" float(53),
  "VS_RB_PS_Bkg_UL_16" float(53),
  "VS_RB_PS_Bkg_UL_32" float(53),
  "VS_RB_PS_Bkg_UL_64" float(53),
  "VS_RB_PS_Bkg_UL_128" float(53),
  "VS_RB_PS_Bkg_UL_144" float(53),
  "VS_RB_PS_Bkg_UL_256" float(53),
  "VS_RB_PS_Bkg_UL_384" float(53),
  "VS_RB_PS_Int_UL_8" float(53),
  "VS_RB_PS_Int_UL_16" float(53),
  "VS_RB_PS_Int_UL_32" float(53),
  "VS_RB_PS_Int_UL_64" float(53),
  "VS_RB_PS_Int_UL_128" float(53),
  "VS_RB_PS_Int_UL_144" float(53),
  "VS_RB_PS_Int_UL_256" float(53),
  "VS_RB_PS_Int_UL_384" float(53),
  "VS_RB_PS_Conv_UL_42_8" float(53),
  "VS_RB_PS_Conv_UL_40" float(53),
  "VS_RB_PS_Conv_UL_39_2" float(53),
  "VS_RB_PS_Conv_UL_38_8" float(53),
  "VS_RB_PS_Str_UL_8" float(53),
  "VS_RB_PS_Str_UL_16" float(53),
  "VS_RB_PS_Str_UL_32" float(53),
  "VS_RB_PS_Str_UL_64" float(53),
  "VS_RB_PS_Str_UL_128" float(53),
  "VS_RB_PS_Str_UL_144" float(53),
  "VS_RB_PS_Str_UL_256_384" float(53),
  "VS_RB_PS_Conv_UL_64" float(53),
  "VS_RB_PS_Bkg_DL_8" float(53),
  "VS_RB_PS_Bkg_DL_16" float(53),
  "VS_RB_PS_Bkg_DL_32" float(53),
  "VS_RB_PS_Bkg_DL_64" float(53),
  "VS_RB_PS_Bkg_DL_128" float(53),
  "VS_RB_PS_Bkg_DL_144" float(53),
  "VS_RB_PS_Bkg_DL_256" float(53),
  "VS_RB_PS_Bkg_DL_384" float(53),
  "VS_RB_PS_Int_DL_8" float(53),
  "VS_RB_PS_Int_DL_16" float(53),
  "VS_RB_PS_Int_DL_32" float(53),
  "VS_RB_PS_Int_DL_64" float(53),
  "VS_RB_PS_Int_DL_128" float(53),
  "VS_RB_PS_Int_DL_144" float(53),
  "VS_RB_PS_Int_DL_256" float(53),
  "VS_RB_PS_Int_DL_384" float(53),
  "VS_RB_PS_Conv_DL_42_8" float(53),
  "VS_RB_PS_Conv_DL_40" float(53),
  "VS_RB_PS_Conv_DL_39_2" float(53),
  "VS_RB_PS_Conv_DL_38_8" float(53),
  "VS_RB_PS_Str_DL_8" float(53),
  "VS_RB_PS_Str_DL_16" float(53),
  "VS_RB_PS_Str_DL_32" float(53),
  "VS_RB_PS_Str_DL_64" float(53),
  "VS_RB_PS_Str_DL_128" float(53),
  "VS_RB_PS_Str_DL_144" float(53),
  "VS_RB_PS_Str_DL_256_384" float(53),
  "VS_RB_PS_Conv_DL_64" float(53),
  "VS_HSDPA_64QAM_UE_Mean_Cell" float(53),
  "VS_HSDPA_MIMO_UE_Mean_Cell" float(53),
  "VS_HSUPA_16QAM_UE_Mean_Cell" float(53),
  "VS_HSDPA_MIMO64QAM_UE_Mean_Cell" float(53),
  "VS_HSDPA_DC_PRIM_UE_Mean_Cell" float(53),
  "VS_HSDPA_DC_SEC_UE_Mean_Cell" float(53),
  "VS_HSUPA_UE_Max_Cell" float(53),
  "VS_HSUPA_UE_Mean_TTI2ms" float(53),
  "VS_HSUPA_UE_Max_TTI2ms" float(53),
  "VS_RB_AMR_UL_12_2" float(53),
  "VS_RB_AMR_UL_10_2" float(53),
  "VS_RB_AMR_UL_7_95" float(53),
  "VS_RB_AMR_UL_7_4" float(53),
  "VS_RB_AMR_UL_5_9" float(53),
  "VS_RB_AMR_UL_5_15" float(53),
  "VS_RB_AMR_UL_4_75" float(53),
  "VS_PS_Str_UL_8_Traffic" float(53),
  "VS_PS_Str_UL_16_Traffic" float(53),
  "VS_PS_Str_UL_32_Traffic" float(53),
  "VS_PS_Str_UL_64_Traffic" float(53),
  "VS_PS_Str_UL_128_Traffic" float(53),
  "VS_CS_Conv_DL_64_Traffic" float(53),
  "VS_CS_Str_DL_57_6_Traffic" float(53),
  "VS_PS_Str_DL_8_Traffic" float(53),
  "VS_PS_Str_DL_16_Traffic" float(53),
  "VS_PS_Str_DL_32_Traffic" float(53),
  "VS_PS_Str_DL_64_Traffic" float(53),
  "VS_PS_Str_DL_256_Traffic" float(53),
  "VS_PS_Str_DL_384_Traffic" float(53),
  "VS_SRNCIubBytesPSFACH_Tx" float(53),
  "VS_SRNCIubBytesPSRACH_Rx" float(53),
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "VS_MeanRTWP" float(53),
  "VS_MeanTCP" float(53),
  "VS_MeanTCP_NonHS" float(53),
  "VS_HSUPA_MeanRSEPS" float(53),
  "VS_HSDPA_MeanRequiredPwr" float(53),
  "VS_HSDPA_MC_MeanRequiredPwr" float(53),
  "VS_MeanTCP_HSDPA_MC" float(53)
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@CNOperator@RAB_Release_per_PLMN
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@CNOperator@RAB_Release_per_PLMN";
CREATE TABLE "Hourly"."BSC6900UMTS@CNOperator@RAB_Release_per_PLMN" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AbnormRel_AMR_PLMN_RNC" float(53),
  "VS_RAB_AbnormRel_CS64_PLMN_RNC" float(53),
  "VS_RAB_AbnormRel_PS_PLMN_RNC" float(53),
  "VS_RAB_NormRel_AMR_PLMN_RNC" float(53),
  "VS_RAB_NormRel_CS64_PLMN_RNC" float(53),
  "VS_RAB_NormRel_PS_PLMN_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN";
CREATE TABLE "Hourly"."BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttEstab_AMR_PLMN_RNC" float(53),
  "VS_RAB_AttEstab_CS64_PLMN_RNC" float(53),
  "VS_RAB_AttEstab_PS_PLMN_RNC" float(53),
  "VS_RAB_SuccEstab_AMR_PLMN_RNC" float(53),
  "VS_RAB_SuccEstab_CS64_PLMN_RNC" float(53),
  "VS_RAB_SuccEstab_PS_PLMN_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@E1T1 Port Bit Error@E1/T1_Port_Bit_Error
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@E1T1 Port Bit Error@E1/T1_Port_Bit_Error";
CREATE TABLE "Hourly"."BSC6900UMTS@E1T1 Port Bit Error@E1/T1_Port_Bit_Error" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_E1T1_ES_BBE" float(53),
  "VS_E1T1_ES_BBER" float(53),
  "VS_E1T1_ES_ES" float(53),
  "VS_E1T1_ES_ESR" float(53),
  "VS_E1T1_ES_NUV" float(53),
  "VS_E1T1_ES_SES" float(53),
  "VS_E1T1_ES_SESR" float(53),
  "VS_E1T1_ES_TBBE" float(53),
  "VS_E1T1_ES_TBBER" float(53),
  "VS_E1T1_ES_TES" float(53),
  "VS_E1T1_ES_TESR" float(53),
  "VS_E1T1_ES_TSES" float(53),
  "VS_E1T1_ES_TSESR" float(53),
  "VS_E1T1_ES_UAS" float(53),
  "VS_E1T1_ES_UASR" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port";
CREATE TABLE "Hourly"."BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_FEGE_Alloced_Ave_Bwd" float(53),
  "VS_FEGE_Alloced_Ave_Fwd" float(53),
  "VS_FEGE_Alloced_Max_Bwd" float(53),
  "VS_FEGE_Alloced_Max_Fwd" float(53),
  "VS_FEGE_Bwd_Cong" float(53),
  "VS_FEGE_Bwd_Cong_Dur" float(53),
  "VS_FEGE_FAULTTIME" float(53),
  "VS_FEGE_FIVE_MINUTES_RXMAXSPEED" float(53),
  "VS_FEGE_FIVE_MINUTES_TXMAXSPEED" float(53),
  "VS_FEGE_Fwd_Cong" float(53),
  "VS_FEGE_Fwd_Cong_Dur" float(53),
  "VS_FEGE_RXBYTES" float(53),
  "VS_FEGE_RXERRORPKTS" float(53),
  "VS_FEGE_RXMAXSPEED" float(53),
  "VS_FEGE_RXMEANSPEED" float(53),
  "VS_FEGE_RXMINSPEED" float(53),
  "VS_FEGE_RXPACKETS" float(53),
  "VS_FEGE_RXPAUSEFRAMES" float(53),
  "VS_FEGE_RXUNKNOWNPKTS" float(53),
  "VS_FEGE_TXBYTES" float(53),
  "VS_FEGE_TXDROPPEDPKTS" float(53),
  "VS_FEGE_TXMAXSPEED" float(53),
  "VS_FEGE_TXMEANSPEED" float(53),
  "VS_FEGE_TXMINSPEED" float(53),
  "VS_FEGE_TXPACKETS" float(53),
  "VS_FEGE_TXPAUSEFRAMES" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem";
CREATE TABLE "Hourly"."BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_INT_CFG_INTERWORKING_FAIL_NUM" float(53),
  "VS_INT_CFG_INTERWORKING_NUM" float(53),
  "VS_INT_CPULOAD_LESS" float(53),
  "VS_INT_CPULOAD_MAX" float(53),
  "VS_INT_CPULOAD_MEAN" float(53),
  "VS_INT_CPULOAD_OVER" float(53),
  "VS_INT_TRANSLOAD_QUEUE_RXPACKETS_RATIO_MAX" float(53),
  "VS_INT_TRANSLOAD_RATIO_MAX" float(53),
  "VS_INT_TRANSLOAD_RATIO_MEAN" float(53),
  "VS_INT_TRANSLOAD_RX_PACKETS_RATIO_MAX" float(53),
  "VS_INT_TRANSLOAD_RX_PACKETS_RATIO_MEAN" float(53),
  "VS_INT_TRANSLOAD_TX_PACKETS_RATIO_MAX" float(53),
  "VS_INT_TRANSLOAD_TX_PACKETS_RATIO_MEAN" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@IP Path@IPPath
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@IP Path@IPPath";
CREATE TABLE "Hourly"."BSC6900UMTS@IP Path@IPPath" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPATH_Act_Con" float(53),
  "VS_IPPATH_Bwd_Cong" float(53),
  "VS_IPPATH_Bwd_Cong_Dur" float(53),
  "VS_IPPATH_Fwd_Cong" float(53),
  "VS_IPPATH_Fwd_Cong_Dur" float(53),
  "VS_IPPATH_PING_MaxDELAY" float(53),
  "VS_IPPATH_PING_MaxJITTER" float(53),
  "VS_IPPATH_PING_MaxLOST" float(53),
  "VS_IPPATH_PING_MeanDELAY" float(53),
  "VS_IPPATH_PING_MeanJITTER" float(53),
  "VS_IPPATH_PING_MeanLOST" float(53),
  "VS.IPPATH.Service.Dur" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@IPPath IP Layer@IPPath_IP_Layer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@IPPath IP Layer@IPPath_IP_Layer";
CREATE TABLE "Hourly"."BSC6900UMTS@IPPath IP Layer@IPPath_IP_Layer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPATH_IPLAYER_FIVE_MINUTES_PEAK_RXRATE" float(53),
  "VS_IPPATH_IPLAYER_FIVE_MINUTES_PEAK_TXRATE" float(53),
  "VS_IPPATH_IPLAYER_MEAN_RX" float(53),
  "VS_IPPATH_IPLAYER_MEAN_TX" float(53),
  "VS_IPPATH_IPLAYER_PEAK_RXRATE" float(53),
  "VS_IPPATH_IPLAYER_PEAK_TXRATE" float(53),
  "VS_IPPATH_IPLAYER_RXBYTES" float(53),
  "VS_IPPATH_IPLAYER_RXDROPBYTES" float(53),
  "VS_IPPATH_IPLAYER_RXDROPPACKETS" float(53),
  "VS_IPPATH_IPLAYER_RXPACKETS" float(53),
  "VS_IPPATH_IPLAYER_TXBYTES" float(53),
  "VS_IPPATH_IPLAYER_TXDROPBYTES" float(53),
  "VS_IPPATH_IPLAYER_TXDROPPACKETS" float(53),
  "VS_IPPATH_IPLAYER_TXPACKETS" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@IPPath PM@IPPM
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@IPPath PM@IPPM";
CREATE TABLE "Hourly"."BSC6900UMTS@IPPath PM@IPPM" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPM_Back_JitterStandardDeviation" float(53),
  "VS_IPPM_Bits_MeansTx" float(53),
  "VS_IPPM_Forward_JitterStandardDeviation" float(53),
  "VS_IPPM_Forward_Precise_Peak_DropRates" float(53),
  "VS_IPPM_Forword_DropMeans" float(53),
  "VS_IPPM_Forword_Peak_DropRates" float(53),
  "VS_IPPM_Local_TxPkts" float(53),
  "VS_IPPM_MaxRttDelay" float(53),
  "VS_IPPM_Peak_Bits_RateTx" float(53),
  "VS_IPPM_Peak_Pkts_RateTx" float(53),
  "VS_IPPM_Peer_Bits_MeansRx" float(53),
  "VS_IPPM_Peer_Peak_Bits_RateRx" float(53),
  "VS_IPPM_Peer_Peak_Pkts_RateRx" float(53),
  "VS_IPPM_Peer_Pkts_MeansRx" float(53),
  "VS_IPPM_Peer_RxPkts" float(53),
  "VS_IPPM_Pkts_MeansTx" float(53),
  "VS_IPPM_Rtt_Means" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@NodeB@Algorithm_per_NodeB
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@NodeB@Algorithm_per_NodeB";
CREATE TABLE "Hourly"."BSC6900UMTS@NodeB@Algorithm_per_NodeB" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_DSS_NodeB_AbnormalDeAct_Num" float(53),
  "VS_DSS_NodeB_Act_Duration" float(53),
  "VS_DSS_NodeB_Act_Num" float(53),
  "VS_DSS_NodeB_NormalDeAct_Num" float(53),
  "VS_DSS_NodeB_UrgentDeAct_Num" float(53),
  "VS_IUB_DL_Cong_Num" float(53),
  "VS_IUB_DL_Cong_Time" float(53),
  "VS_IUB_UL_Cong_Num" float(53),
  "VS_IUB_UL_Cong_Time" float(53),
  "VS_NodeB_CoordinatingRL_ULCreditUsed_Max" float(53),
  "VS_NodeB_CoordinatingRL_ULCreditUsed_Mean" float(53),
  "VS_NodeB_DLCreditUsed_Max" float(53),
  "VS_NodeB_DLCreditUsed_Mean" float(53),
  "VS_NodeB_DLCreditUsed_Min" float(53),
  "VS_NodeB_ULCreditConsumed_Max" float(53),
  "VS_NodeB_ULCreditConsumed_Mean" float(53),
  "VS.NodeB.ULCreditUsed.Max" float(53),
  "VS.NodeB.ULCreditUsed.Mean" float(53),
  "VS.NodeB.ULCreditUsed.Min" float(53),
  "VS_NodeB_UnavailTime" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@CS_RAB_Modification
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@CS_RAB_Modification";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@CS_RAB_Modification" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttModCS_Conv_RNC" float(53),
  "VS_RAB_AttModCS_Str_RNC" float(53),
  "VS_RAB_ModReqCS_VP_Fallback_RNC" float(53),
  "VS_RAB_SuccModCS_Conv_RNC" float(53),
  "VS_RAB_SuccModCS_Str_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@CS_RAB_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@CS_RAB_Release";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@CS_RAB_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttRelCS_RNC" float(53),
  "VS_RAB_SuccRelCS_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@CS_RAB_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@CS_RAB_Setup";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@CS_RAB_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttEstabCS_Conv_RNC" float(53),
  "VS_RAB_AttEstabCS_Str_RNC" float(53),
  "VS_RAB_AttEstabCS_VPLimit_RNC" float(53),
  "VS_RAB_Num_CS_Mean" float(53),
  "VS_RAB_SuccEstabCS_Conv_RNC" float(53),
  "VS_RAB_SuccEstabCS_Str_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@Multi-RAB_Service
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@Multi-RAB_Service";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@Multi-RAB_Service" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_MultRAB_0CS3PS_RNC" float(53),
  "VS_MultRAB_0CS4PS_RNC" float(53),
  "VS_MultRAB_0CS_2PS_RNC" float(53),
  "VS_MultRAB_1CS1PS_RNC" float(53),
  "VS_MultRAB_1CS2PS_RNC" float(53),
  "VS_MultRAB_1CS3PS_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@PS_RAB_Modification
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@PS_RAB_Modification";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@PS_RAB_Modification" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "RAB_AttModPS_Bgrd_RNC" float(53),
  "RAB_AttModPS_Conv_RNC" float(53),
  "RAB_AttModPS_Int_RNC" float(53),
  "RAB_AttModPS_Str_RNC" float(53),
  "VS_RAB_SuccModPS_Bkg_RNC" float(53),
  "VS_RAB_SuccModPS_Conv_RNC" float(53),
  "VS_RAB_SuccModPS_Int_RNC" float(53),
  "VS_RAB_SuccModPS_Str_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@PS_RAB_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@PS_RAB_Release";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@PS_RAB_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttRelPS_RNC" float(53),
  "VS_RAB_SuccRelPS_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@PS_RAB_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@PS_RAB_Setup";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@PS_RAB_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AttEstabPS_Bkg_144_384_RNC" float(53),
  "VS_RAB_AttEstabPS_Bkg_32_64_RNC" float(53),
  "VS_RAB_AttEstabPS_Bkg_64_144_RNC" float(53),
  "VS_RAB_AttEstabPS_Bkg_Mor384_RNC" float(53),
  "VS_RAB_AttEstabPS_Bkg_RNC" float(53),
  "VS_RAB_AttEstabPS_Conv_0_32_RNC" float(53),
  "VS_RAB_AttEstabPS_Conv_Mor32_RNC" float(53),
  "VS_RAB_AttEstabPS_Conv_RNC" float(53),
  "VS_RAB_AttEstabPS_Int_0_32_RNC" float(53),
  "VS_RAB_AttEstabPS_Int_144_384_RNC" float(53),
  "VS_RAB_AttEstabPS_Int_32_64_RNC" float(53),
  "VS_RAB_AttEstabPS_Int_64_144_RNC" float(53),
  "VS_RAB_AttEstabPS_Int_Mor384_RNC" float(53),
  "VS_RAB_AttEstabPS_Int_RNC" float(53),
  "VS_RAB_AttEstabPS_Str_0_32_RNC" float(53),
  "VS_RAB_AttEstabPS_Str_144_384_RNC" float(53),
  "VS_RAB_AttEstabPS_Str_32_64_RNC" float(53),
  "VS_RAB_AttEstabPS_Str_64_144_RNC" float(53),
  "VS_RAB_AttEstabPS_Str_Mor384" float(53),
  "VS_RAB_AttEstabPS_Str_RNC" float(53),
  "VS_RAB_AttEstPSBkg0_32_RNC" float(53),
  "VS_RAB_EstabPS_CellDCH_MaxTime" float(53),
  "VS_RAB_EstabPS_CellDCH_MeanTime" float(53),
  "VS_RAB_EstabPS_CellFACH_MaxTime" float(53),
  "VS_RAB_EstabPS_CellFACH_MeanTime" float(53),
  "VS_RAB_Num_PS_Mean" float(53),
  "VS_RAB_SuccEstabPS_Bkg_0_32_RNC" float(53),
  "VS_RAB_SuccEstabPS_Bkg_144_384_RNC" float(53),
  "VS_RAB_SuccEstabPS_Bkg_32_64_RNC" float(53),
  "VS_RAB_SuccEstabPS_Bkg_64_144_RNC" float(53),
  "VS_RAB_SuccEstabPS_Bkg_Mor384_RNC" float(53),
  "VS_RAB_SuccEstabPS_Bkg_RNC" float(53),
  "VS_RAB_SuccEstabPS_Conv_0_32_RNC" float(53),
  "VS_RAB_SuccEstabPS_Conv_Mor32_RNC" float(53),
  "VS_RAB_SuccEstabPS_Conv_RNC" float(53),
  "VS_RAB_SuccEstabPS_Int_0_32_RNC" float(53),
  "VS_RAB_SuccEstabPS_Int_144_384_RNC" float(53),
  "VS_RAB_SuccEstabPS_Int_32_64_RNC" float(53),
  "VS_RAB_SuccEstabPS_Int_64_144_RNC" float(53),
  "VS_RAB_SuccEstabPS_Int_Mor384_RNC" float(53),
  "VS_RAB_SuccEstabPS_Int_RNC" float(53),
  "VS_RAB_SuccEstabPS_Str_Mor384_RNC" float(53),
  "VS_RAB_SuccEstabPS_Str_RNC" float(53),
  "VS_RAB_SuccEstab_PS_0kbps_RNC" float(53),
  "VS_RAB_SuccEstab_PS_Str_0_32_RNC" float(53),
  "VS_RAB_SuccEstab_PS_Str_144_384_RNC" float(53),
  "VS_RAB_SuccEstab_PS_Str_32_64_RNC" float(53),
  "VS_RAB_SuccEstab_PS_Str_64_144_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@RNC@RAB_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@RNC@RAB_Release";
CREATE TABLE "Hourly"."BSC6900UMTS@RNC@RAB_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_RAB_AbnormRel_AMR_RNC" float(53),
  "VS_RAB_AbnormRel_CS64_RNC" float(53),
  "VS_RAB_AbnormRel_CS_RF_RNC" float(53),
  "VS_RAB_AbnormRel_CS_RNC" float(53),
  "VS_RAB_AbnormRel_PS_RF_RNC" float(53),
  "VS_RAB_AbnormRel_PS_RNC" float(53),
  "VS_RAB_NormRel_CS_RNC" float(53),
  "VS_RAB_NormRel_CS_UEGen_RNC" float(53),
  "VS_RAB_NormRel_PS_0kbps_Timeout_RNC" float(53),
  "VS_RAB_NormRel_PS_RNC" float(53),
  "VS_RAB_NormRel_PS_UEGen_RNC" float(53),
  "VS_RAB_NormRel_VPLimit_RNC" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual";
CREATE TABLE "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPOOL_ADJNODE_Bwd_Cong" float(53),
  "VS_IPPOOL_ADJNODE_Bwd_Cong_Dur" float(53),
  "VS_IPPOOL_ADJNODE_Fwd_Cong" float(53),
  "VS_IPPOOL_ADJNODE_Fwd_Cong_Dur" float(53),
  "VS_IPPOOL_ADJNODE_PING_MaxDELAY" float(53),
  "VS_IPPOOL_ADJNODE_PING_MaxJITTER" float(53),
  "VS_IPPOOL_ADJNODE_PING_MaxLOST" float(53),
  "VS_IPPOOL_ADJNODE_PING_MeanDELAY" float(53),
  "VS_IPPOOL_ADJNODE_PING_MeanJITTER" float(53),
  "VS_IPPOOL_ADJNODE_PING_MeanLOST" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@";
CREATE TABLE "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPOOL_ANI_IPLAYER_MEAN_RX" float(53),
  "VS_IPPOOL_ANI_IPLAYER_MEAN_TX" float(53),
  "VS_IPPOOL_ANI_IPLAYER_PEAK_RXRATE" float(53),
  "VS_IPPOOL_ANI_IPLAYER_PEAK_TXRATE" float(53),
  "VS_IPPOOL_ANI_IPLAYER_RXBYTES" float(53),
  "VS_IPPOOL_ANI_IPLAYER_RXPACKETS" float(53),
  "VS_IPPOOL_ANI_IPLAYER_TXBYTES" float(53),
  "VS_IPPOOL_ANI_IPLAYER_TXPACKETS" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer";
CREATE TABLE "Hourly"."BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPOOL_SIP_IPLAYER_MEAN_RX" float(53),
  "VS_IPPOOL_SIP_IPLAYER_MEAN_TX" float(53),
  "VS_IPPOOL_SIP_IPLAYER_PEAK_RXRATE" float(53),
  "VS_IPPOOL_SIP_IPLAYER_PEAK_TXRATE" float(53),
  "VS_IPPOOL_SIP_IPLAYER_RXBYTES" float(53),
  "VS_IPPOOL_SIP_IPLAYER_RXPACKETS" float(53),
  "VS_IPPOOL_SIP_IPLAYER_TXBYTES" float(53),
  "VS_IPPOOL_SIP_IPLAYER_TXPACKETS" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@UMTS DSP@DSP
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@UMTS DSP@DSP";
CREATE TABLE "Hourly"."BSC6900UMTS@UMTS DSP@DSP" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_DSP_PSDLTraffic" float(53),
  "VS_DSP_PSULTraffic" float(53),
  "VS_DSP_UsageAvg" float(53),
  "VS_DSP_UsagePeak" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6900UMTS@XPU Subsystem@XPU_Subsystem
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6900UMTS@XPU Subsystem@XPU_Subsystem";
CREATE TABLE "Hourly"."BSC6900UMTS@XPU Subsystem@XPU_Subsystem" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_XPU_CPULOAD_LESS" float(53),
  "VS_XPU_CPULOAD_MAX" float(53),
  "VS_XPU_CPULOAD_MEAN" float(53),
  "VS_XPU_CPULOAD_OVER" float(53),
  "VS_XPU_MSGLOAD_MAX" float(53),
  "VS_XPU_MSGLOAD_MEAN" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BSC6910UMTS@Subsystem@Subsystem
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BSC6910UMTS@Subsystem@Subsystem";
CREATE TABLE "Hourly"."BSC6910UMTS@Subsystem@Subsystem" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_SUBSYS_CPULOAD_LESS" float(53),
  "VS_SUBSYS_CPULOAD_MAX" float(53),
  "VS_SUBSYS_CPULOAD_MEAN" float(53),
  "VS_SUBSYS_CPULOAD_OVER" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell Sector Equip Group@SFN_G_ERAB
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell Sector Equip Group@SFN_G_ERAB";
CREATE TABLE "Hourly"."BTS3900@Cell Sector Equip Group@SFN_G_ERAB" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_CellSectorEQUIPGroup_SFN_E-RAB_AbnormRel" float(53),
  "L_CellSectorEQUIPGroup_SFN_E-RAB_EstFail" float(53),
  "L_CellSectorEQUIPGroup_SFN_E-RAB_NormRel" float(53),
  "L_CellSectorEQUIPGroup_SFN_E-RAB_SuccEst" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB";
CREATE TABLE "Hourly"."BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_CellSectorEQUIP_SFN_E-RAB_AbnormRel" float(53),
  "L_CellSectorEQUIP_SFN_E-RAB_EstFail" float(53),
  "L_CellSectorEQUIP_SFN_E-RAB_NormRel" float(53),
  "L_CellSectorEQUIP_SFN_E-RAB_SuccEst" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Cell_Algorithm
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Cell_Algorithm";
CREATE TABLE "Hourly"."BTS3900@Cell@Cell_Algorithm" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_AISS_IntereNodeB_CeMeas_Att" float(53),
  "L_AISS_IntereNodeB_CeMeas_Succ" float(53),
  "L_AISS_IntereNodeB_HoMeas_Att" float(53),
  "L_AISS_IntereNodeB_HoMeas_Succ" float(53),
  "L_AQM_PacketDropNum_QCI_6" float(53),
  "L_AQM_PacketDropNum_QCI_7" float(53),
  "L_AQM_PacketDropNum_QCI_8" float(53),
  "L_AQM_PacketDropNum_QCI_9" float(53),
  "L_Cdrx_Active_TtiNum" float(53),
  "L_Cdrx_Enter_Num" float(53),
  "L_Cdrx_Exit_Num" float(53),
  "L_Cdrx_Sleep_TtiNum" float(53),
  "L.Cdrx.UeDiffConfig.Num" float(53),
  "L_Cell_Avail_Dur" float(53),
  "L_Cell_DL_PDSCH_Tti_Num" float(53),
  "L_Cell_UL_PUSCH_Tti_Num" float(53),
  "L_Cell_Unavail_Dur_EnergySaving" float(53),
  "L_Cell_Unavail_Dur_Manual" float(53),
  "L_Cell_Unavail_Dur_Sys" float(53),
  "L_Cell_Unavail_Num" float(53),
  "L_Cell_UserLimit_PreEmp_Num" float(53),
  "L_Dyn_ACBar_Adjust_Num" float(53),
  "L_Dyn_ACBar_Cancel_Num" float(53),
  "L_Dyn_ACBar_Control_Dur" float(53),
  "L_Dyn_ACBar_Trigger_Num" float(53),
  "L_InterFreq_HighLoad_Dur_Cell" float(53),
  "L_InterFreq_HighLoad_Num_Cell" float(53),
  "L_InterFreq_Load_MeasSucc_Num_Cell" float(53),
  "L_InterFreq_Load_Meas_Num_Cell" float(53),
  "L_LC_DLCong_Dur_Cell" float(53),
  "L_LC_DLCong_Num_Cell" float(53),
  "L_LC_ULCong_Dur_Cell" float(53),
  "L_LC_ULCong_Num_Cell" float(53),
  "L_LC_User_Rel" float(53),
  "L_RRCRel_DedicatedPri_GERAN_High" float(53),
  "L_RRCRel_DedicatedPri_LTE_High" float(53),
  "L_RRCRel_DedicatedPri_TDSCDMA_High" float(53),
  "L_RRCRel_DedicatedPri_WCDMA_High" float(53),
  "L_RRCRel_load_DedicatedPri_LTE_High" float(53),
  "L_RRCRel_load_DedicatedPri_TDSCDMA_High" float(53),
  "L_RRCRel_load_DedicatedPri_WCDMA_High" float(53),
  "L_Signal_Num_DRX_Reconfig" float(53),
  "L_Signal_Num_S1" float(53),
  "L_Signal_Num_SIB1_ETWS" float(53),
  "L_Signal_Num_TtiBundling_Enter" float(53),
  "L_Signal_Num_TtiBundling_Exit" float(53),
  "L_Signal_Num_Uu" float(53),
  "L_Signal_Num_WRWR_ETWS" float(53),
  "L_Signal_Num_X2" float(53),
  "L_Sps_DL_ErrNum" float(53),
  "L_Sps_DL_SchNum" float(53),
  "L_Sps_UL_ErrNum" float(53),
  "L_Sps_UL_SchNum" float(53),
  "L_Sps_UL_TB_Intvl40ms" float(53),
  "L_Sps_UL_TB_Intvl40ms_Err" float(53),
  "L.Thrp.bits.UL.PDCP.SDU.HCode.AftDecompn" float(53),
  "L.Thrp.bits.UL.PDCP.SDU.HCode.BefDecompn" float(53),
  "L_UE_Req_Default_Drx_Succ_Num" float(53),
  "L_UE_Req_Drx_Reconfig_Succ_Num" float(53),
  "L_User_UL_Unsync_Dur_Index0" float(53),
  "L_User_UL_Unsync_Dur_Index1" float(53),
  "L_User_UL_Unsync_Dur_Index2" float(53),
  "L_User_UL_Unsync_Dur_Index3" float(53),
  "L_User_UL_Unsync_Dur_Index4" float(53),
  "L_User_UL_Unsync_Dur_Index5" float(53),
  "L_User_UL_Unsync_Dur_Index6" float(53),
  "L_User_UL_Unsync_Dur_Index7" float(53),
  "L_User_UL_Unsync_Dur_Index8" float(53),
  "L_Voice_VQI_DL_Accept_Times" float(53),
  "L_Voice_VQI_DL_Bad_Times" float(53),
  "L_Voice_VQI_DL_Excellent_Times" float(53),
  "L_Voice_VQI_DL_Good_Times" float(53),
  "L_Voice_VQI_DL_Poor_Times" float(53),
  "L_Voice_VQI_UL_Accept_Times" float(53),
  "L_Voice_VQI_UL_Bad_Times" float(53),
  "L_Voice_VQI_UL_Excellent_Times" float(53),
  "L_Voice_VQI_UL_Good_Times" float(53),
  "L_Voice_VQI_UL_Poor_Times" float(53),
  "L_Voip_Cdrx_Active_TtiNum" float(53),
  "L_Voip_Cdrx_Sleep_TtiNum" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Cell_Emergency_Call
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Cell_Emergency_Call";
CREATE TABLE "Hourly"."BTS3900@Cell@Cell_Emergency_Call" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_EMC_E-RAB_Abnormrel" float(53),
  "L_EMC_E-RAB_AbnormRel_HoOut" float(53),
  "L_EMC_E-RAB_AttEst" float(53),
  "L_EMC_E-RAB_NormRel" float(53),
  "L_EMC_E-RAB_NormRel_HoOut" float(53),
  "L_EMC_E-RAB_SuccEst" float(53),
  "L_EMC_HHO_ExecAttOut" float(53),
  "L_EMC_HHO_ExecSuccOut" float(53),
  "L_EMC_HHO_InterFddTdd_ExecAttOut" float(53),
  "L_EMC_HHO_InterFddTdd_ExecSuccOut" float(53),
  "L_EMC_HHO_InterFddTdd_PrepAttOut" float(53),
  "L_EMC_HHO_PrepAttOut" float(53),
  "L_EMC_SRVCC_E2G_ExecAttOut" float(53),
  "L_EMC_SRVCC_E2G_ExecSuccOut" float(53),
  "L_EMC_SRVCC_E2G_PrepAttOut" float(53),
  "L_EMC_SRVCC_E2T_ExecAttOut" float(53),
  "L_EMC_SRVCC_E2T_ExecSuccOut" float(53),
  "L_EMC_SRVCC_E2T_PrepAttOut" float(53),
  "L_EMC_SRVCC_E2W_ExecAttOut" float(53),
  "L_EMC_SRVCC_E2W_ExecSuccOut" float(53),
  "L_EMC_SRVCC_E2W_PrepAttOut" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Cell_User_Quantity
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Cell_User_Quantity";
CREATE TABLE "Hourly"."BTS3900@Cell@Cell_User_Quantity" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_SSP10_User" float(53),
  "L_Traffic_ActiveUser_Avg" float(53),
  "L_Traffic_ActiveUser_DL_Avg" float(53),
  "L_Traffic_ActiveUser_DL_Max" float(53),
  "L_Traffic_ActiveUser_DL_QCI_1" float(53),
  "L_Traffic_ActiveUser_DL_QCI_2" float(53),
  "L_Traffic_ActiveUser_DL_QCI_3" float(53),
  "L_Traffic_ActiveUser_DL_QCI_4" float(53),
  "L_Traffic_ActiveUser_DL_QCI_5" float(53),
  "L_Traffic_ActiveUser_DL_QCI_6" float(53),
  "L_Traffic_ActiveUser_DL_QCI_7" float(53),
  "L_Traffic_ActiveUser_DL_QCI_8" float(53),
  "L_Traffic_ActiveUser_DL_QCI_9" float(53),
  "L_Traffic_ActiveUser_DL_QCI_Total" float(53),
  "L_Traffic_ActiveUser_Max" float(53),
  "L_Traffic_ActiveUser_UL_Avg" float(53),
  "L_Traffic_ActiveUser_UL_Max" float(53),
  "L_Traffic_ActiveUser_UL_QCI_1" float(53),
  "L_Traffic_ActiveUser_UL_QCI_2" float(53),
  "L_Traffic_ActiveUser_UL_QCI_3" float(53),
  "L_Traffic_ActiveUser_UL_QCI_4" float(53),
  "L_Traffic_ActiveUser_UL_QCI_5" float(53),
  "L_Traffic_ActiveUser_UL_QCI_6" float(53),
  "L_Traffic_ActiveUser_UL_QCI_7" float(53),
  "L_Traffic_ActiveUser_UL_QCI_8" float(53),
  "L_Traffic_ActiveUser_UL_QCI_9" float(53),
  "L_Traffic_ActiveUser_UL_QCI_Total" float(53),
  "L_Traffic_CEU_Avg" float(53),
  "L_Traffic_CEU_Max" float(53),
  "L_Traffic_HetnetCEU_Avg" float(53),
  "L_Traffic_HetnetCEU_eICIC_Avg" float(53),
  "L_Traffic_IICS_UL_StrongIntfUser_Avg" float(53),
  "L_Traffic_IICS_UL_StrongIntfUser_Max" float(53),
  "L_Traffic_IICS_UL_WeakIntfUsewr_Avg" float(53),
  "L_Traffic_IICS_UL_WeakIntfUsewr_Max" float(53),
  "L_Traffic_SUNPT_DL_Avg" float(53),
  "L_Traffic_SUNPT_DL_Max" float(53),
  "L_Traffic_SUNPT_ULDL_Max" float(53),
  "L_Traffic_SUNPT_UL_Avg" float(53),
  "L_Traffic_SUNPT_UL_Max" float(53),
  "L_Traffic_ULCEU_Avg" float(53),
  "L_Traffic_ULCEU_Max" float(53),
  "L.Traffic.User.10msSRS.Avg" float(53),
  "L.Traffic.User.160msSRS.Avg" float(53),
  "L.Traffic.User.20msSRS.Avg" float(53),
  "L.Traffic.User.2msSRS.Avg" float(53),
  "L.Traffic.User.320msSRS.Avg" float(53),
  "L.Traffic.User.40msSRS.Avg" float(53),
  "L.Traffic.User.5msSRS.Avg" float(53),
  "L.Traffic.User.80msSRS.Avg" float(53),
  "L_Traffic_User_Avg" float(53),
  "L.Traffic.User.Avg.DLHighAMBR" float(53),
  "L_Traffic_User_BorderUE_Avg" float(53),
  "L_Traffic_User_BorderUE_Max" float(53),
  "L_Traffic_User_Cdrx_Avg" float(53),
  "L_Traffic_User_CEU_DL_AICIC_Avg" float(53),
  "L_Traffic_User_Data_Avg" float(53),
  "L_Traffic_User_Data_Max" float(53),
  "L_Traffic_User_DLData_Avg" float(53),
  "L.Traffic.User.DLData.Avg.DLHighAMBR" float(53),
  "L_Traffic_User_DLData_Max" float(53),
  "L.Traffic.User.DualSRS.Avg" float(53),
  "L_Traffic_User_HST_Avg" float(53),
  "L_Traffic_User_HST_Max" float(53),
  "L_Traffic_User_Index0" float(53),
  "L_Traffic_User_Index1" float(53),
  "L_Traffic_User_Index10" float(53),
  "L_Traffic_User_Index2" float(53),
  "L_Traffic_User_Index3" float(53),
  "L_Traffic_User_Index4" float(53),
  "L_Traffic_User_Index5" float(53),
  "L_Traffic_User_Index6" float(53),
  "L_Traffic_User_Index7" float(53),
  "L_Traffic_User_Index8" float(53),
  "L_Traffic_User_Index9" float(53),
  "L.Traffic.User.InSession.Avg.DLHighAMBR" float(53),
  "L_Traffic_User_License_Avg" float(53),
  "L_Traffic_User_Max" float(53),
  "L.Traffic.User.MCPTT.Avg" float(53),
  "L.Traffic.User.MCPTT.Max" float(53),
  "L_Traffic_User_PCell_DL_Avg" float(53),
  "L_Traffic_User_PCell_DL_Max" float(53),
  "L_Traffic_User_PCell_UL_Avg" float(53),
  "L_Traffic_User_PCell_UL_Max" float(53),
  "L_Traffic_User_Sample_Num" float(53),
  "L_Traffic_User_SCell_Active_DL_Avg" float(53),
  "L_Traffic_User_SCell_Active_DL_Max" float(53),
  "L_Traffic_User_SCell_DL_Avg" float(53),
  "L_Traffic_User_SCell_DL_Max" float(53),
  "L_Traffic_User_SCell_UL_Avg" float(53),
  "L_Traffic_User_SCell_UL_Max" float(53),
  "L.Traffic.User.SCell.UL.RelaxedBackhaulCA.Avg" float(53),
  "L.Traffic.User.SRS.Avail.Avg" float(53),
  "L_Traffic_User_SRS_Avg" float(53),
  "L_Traffic_User_SRS_Max" float(53),
  "L_Traffic_User_TAMeas_PUCCH_Avg" float(53),
  "L_Traffic_User_TAMeas_PUCCH_Max" float(53),
  "L_Traffic_User_TM10_Avg" float(53),
  "L.Traffic.User.Total.Max" float(53),
  "L_Traffic_User_UE_Req_Drx_Avg" float(53),
  "L_Traffic_User_Ulsync_Avg" float(53),
  "L_Traffic_User_ULData_Avg" float(53),
  "L_Traffic_User_ULData_Max" float(53),
  "L.Traffic.User.ULSUMIMO.Avg" float(53),
  "L_Traffic_User_Unsyn_Drx_Avg" float(53),
  "L.Traffic.V2XUser.Avg" float(53),
  "L.Traffic.V2XUser.Max" float(53),
  "L_ULCAMC_IntfUser_Avg" float(53),
  "L_ULCoMP_HetnetCoMP_User_Avg" float(53),
  "L_ULCoMP_HetnetCoMP_User_Max" float(53),
  "L_ULCoMP_User_Avg" float(53),
  "L_ULCoMP_User_Max" float(53),
  "L.ULIC.User.Avg" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Channel_Quality
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Channel_Quality";
CREATE TABLE "Hourly"."BTS3900@Cell@Channel_Quality" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_DLPwr_Avg" float(53),
  "L_DLPwr_Max" float(53),
  "L.UL.AllSymbol.Pwr.Avg" float(53),
  "L_UL_FirstUL0_Pwr" float(53),
  "L.UL.FirstUL1.Pwr" float(53),
  "L.UL.FirstUL2.Pwr" float(53),
  "L.UL.FirstUL3.Pwr" float(53),
  "L.UL.FirstUL4.Pwr" float(53),
  "L.UL.FirstUL5.Pwr" float(53),
  "L_UL_FirstUL64_Pwr" float(53),
  "L_UL_Interference_Avg" float(53),
  "L_UL_Interference_Max" float(53),
  "L_UL_Interference_Min" float(53),
  "L_UL_Interference_PRACH_Index0" float(53),
  "L_UL_Interference_PRACH_Index1" float(53),
  "L_UL_Interference_PRACH_Index10" float(53),
  "L_UL_Interference_PRACH_Index11" float(53),
  "L_UL_Interference_PRACH_Index12" float(53),
  "L_UL_Interference_PRACH_Index13" float(53),
  "L_UL_Interference_PRACH_Index14" float(53),
  "L_UL_Interference_PRACH_Index15" float(53),
  "L_UL_Interference_PRACH_Index2" float(53),
  "L_UL_Interference_PRACH_Index3" float(53),
  "L_UL_Interference_PRACH_Index4" float(53),
  "L_UL_Interference_PRACH_Index5" float(53),
  "L_UL_Interference_PRACH_Index6" float(53),
  "L_UL_Interference_PRACH_Index7" float(53),
  "L_UL_Interference_PRACH_Index8" float(53),
  "L_UL_Interference_PRACH_Index9" float(53),
  "L_UL_Interference_PUCCH_Index0" float(53),
  "L_UL_Interference_PUCCH_Index1" float(53),
  "L_UL_Interference_PUCCH_Index10" float(53),
  "L_UL_Interference_PUCCH_Index11" float(53),
  "L_UL_Interference_PUCCH_Index12" float(53),
  "L_UL_Interference_PUCCH_Index13" float(53),
  "L_UL_Interference_PUCCH_Index14" float(53),
  "L_UL_Interference_PUCCH_Index15" float(53),
  "L_UL_Interference_PUCCH_Index2" float(53),
  "L_UL_Interference_PUCCH_Index3" float(53),
  "L_UL_Interference_PUCCH_Index4" float(53),
  "L_UL_Interference_PUCCH_Index5" float(53),
  "L_UL_Interference_PUCCH_Index6" float(53),
  "L_UL_Interference_PUCCH_Index7" float(53),
  "L_UL_Interference_PUCCH_Index8" float(53),
  "L_UL_Interference_PUCCH_Index9" float(53),
  "L_UL_Interference_PUSCH_Index0" float(53),
  "L_UL_Interference_PUSCH_Index1" float(53),
  "L_UL_Interference_PUSCH_Index10" float(53),
  "L_UL_Interference_PUSCH_Index11" float(53),
  "L_UL_Interference_PUSCH_Index12" float(53),
  "L_UL_Interference_PUSCH_Index13" float(53),
  "L_UL_Interference_PUSCH_Index14" float(53),
  "L_UL_Interference_PUSCH_Index15" float(53),
  "L_UL_Interference_PUSCH_Index2" float(53),
  "L_UL_Interference_PUSCH_Index3" float(53),
  "L_UL_Interference_PUSCH_Index4" float(53),
  "L_UL_Interference_PUSCH_Index5" float(53),
  "L_UL_Interference_PUSCH_Index6" float(53),
  "L_UL_Interference_PUSCH_Index7" float(53),
  "L_UL_Interference_PUSCH_Index8" float(53),
  "L_UL_Interference_PUSCH_Index9" float(53),
  "L_UL_LastUL0_Pwr" float(53),
  "L.UL.LastUL10(8).Pwr" float(53),
  "L_UL_LastUL119_Pwr" float(53),
  "L.UL.LastUL12(10).Pwr" float(53),
  "L.UL.LastUL13(11).Pwr" float(53),
  "L.UL.LastUL7(5).Pwr" float(53),
  "L.UL.LastUL8(6).Pwr" float(53),
  "L.UL.LastUL9(7).Pwr" float(53),
  "L_UL_RSRP_PUCCH_Index0" float(53),
  "L_UL_RSRP_PUCCH_Index1" float(53),
  "L_UL_RSRP_PUCCH_Index10" float(53),
  "L_UL_RSRP_PUCCH_Index11" float(53),
  "L_UL_RSRP_PUCCH_Index12" float(53),
  "L_UL_RSRP_PUCCH_Index13" float(53),
  "L_UL_RSRP_PUCCH_Index14" float(53),
  "L_UL_RSRP_PUCCH_Index15" float(53),
  "L_UL_RSRP_PUCCH_Index16" float(53),
  "L_UL_RSRP_PUCCH_Index17" float(53),
  "L_UL_RSRP_PUCCH_Index18" float(53),
  "L_UL_RSRP_PUCCH_Index19" float(53),
  "L_UL_RSRP_PUCCH_Index2" float(53),
  "L_UL_RSRP_PUCCH_Index20" float(53),
  "L_UL_RSRP_PUCCH_Index21" float(53),
  "L_UL_RSRP_PUCCH_Index22" float(53),
  "L_UL_RSRP_PUCCH_Index23" float(53),
  "L_UL_RSRP_PUCCH_Index3" float(53),
  "L_UL_RSRP_PUCCH_Index4" float(53),
  "L_UL_RSRP_PUCCH_Index5" float(53),
  "L_UL_RSRP_PUCCH_Index6" float(53),
  "L_UL_RSRP_PUCCH_Index7" float(53),
  "L_UL_RSRP_PUCCH_Index8" float(53),
  "L_UL_RSRP_PUCCH_Index9" float(53),
  "L_UL_RSRP_PUSCH_Index0" float(53),
  "L_UL_RSRP_PUSCH_Index1" float(53),
  "L_UL_RSRP_PUSCH_Index10" float(53),
  "L_UL_RSRP_PUSCH_Index11" float(53),
  "L_UL_RSRP_PUSCH_Index12" float(53),
  "L_UL_RSRP_PUSCH_Index13" float(53),
  "L_UL_RSRP_PUSCH_Index14" float(53),
  "L_UL_RSRP_PUSCH_Index15" float(53),
  "L_UL_RSRP_PUSCH_Index16" float(53),
  "L_UL_RSRP_PUSCH_Index17" float(53),
  "L_UL_RSRP_PUSCH_Index18" float(53),
  "L_UL_RSRP_PUSCH_Index19" float(53),
  "L_UL_RSRP_PUSCH_Index2" float(53),
  "L_UL_RSRP_PUSCH_Index20" float(53),
  "L_UL_RSRP_PUSCH_Index21" float(53),
  "L_UL_RSRP_PUSCH_Index22" float(53),
  "L_UL_RSRP_PUSCH_Index23" float(53),
  "L_UL_RSRP_PUSCH_Index3" float(53),
  "L_UL_RSRP_PUSCH_Index4" float(53),
  "L_UL_RSRP_PUSCH_Index5" float(53),
  "L_UL_RSRP_PUSCH_Index6" float(53),
  "L_UL_RSRP_PUSCH_Index7" float(53),
  "L_UL_RSRP_PUSCH_Index8" float(53),
  "L_UL_RSRP_PUSCH_Index9" float(53),
  "L_UL_RSSI_PUCCH_Index0" float(53),
  "L_UL_RSSI_PUCCH_Index1" float(53),
  "L_UL_RSSI_PUCCH_Index10" float(53),
  "L_UL_RSSI_PUCCH_Index11" float(53),
  "L_UL_RSSI_PUCCH_Index12" float(53),
  "L_UL_RSSI_PUCCH_Index13" float(53),
  "L_UL_RSSI_PUCCH_Index14" float(53),
  "L_UL_RSSI_PUCCH_Index15" float(53),
  "L_UL_RSSI_PUCCH_Index16" float(53),
  "L_UL_RSSI_PUCCH_Index17" float(53),
  "L_UL_RSSI_PUCCH_Index18" float(53),
  "L_UL_RSSI_PUCCH_Index19" float(53),
  "L_UL_RSSI_PUCCH_Index2" float(53),
  "L_UL_RSSI_PUCCH_Index20" float(53),
  "L_UL_RSSI_PUCCH_Index21" float(53),
  "L_UL_RSSI_PUCCH_Index3" float(53),
  "L_UL_RSSI_PUCCH_Index4" float(53),
  "L_UL_RSSI_PUCCH_Index5" float(53),
  "L_UL_RSSI_PUCCH_Index6" float(53),
  "L_UL_RSSI_PUCCH_Index7" float(53),
  "L_UL_RSSI_PUCCH_Index8" float(53),
  "L_UL_RSSI_PUCCH_Index9" float(53),
  "L_UL_RSSI_PUSCH_Index0" float(53),
  "L_UL_RSSI_PUSCH_Index1" float(53),
  "L_UL_RSSI_PUSCH_Index10" float(53),
  "L_UL_RSSI_PUSCH_Index11" float(53),
  "L_UL_RSSI_PUSCH_Index12" float(53),
  "L_UL_RSSI_PUSCH_Index13" float(53),
  "L_UL_RSSI_PUSCH_Index14" float(53),
  "L_UL_RSSI_PUSCH_Index15" float(53),
  "L_UL_RSSI_PUSCH_Index16" float(53),
  "L_UL_RSSI_PUSCH_Index17" float(53),
  "L_UL_RSSI_PUSCH_Index18" float(53),
  "L_UL_RSSI_PUSCH_Index19" float(53),
  "L_UL_RSSI_PUSCH_Index2" float(53),
  "L_UL_RSSI_PUSCH_Index20" float(53),
  "L_UL_RSSI_PUSCH_Index21" float(53),
  "L_UL_RSSI_PUSCH_Index3" float(53),
  "L_UL_RSSI_PUSCH_Index4" float(53),
  "L_UL_RSSI_PUSCH_Index5" float(53),
  "L_UL_RSSI_PUSCH_Index6" float(53),
  "L_UL_RSSI_PUSCH_Index7" float(53),
  "L_UL_RSSI_PUSCH_Index8" float(53),
  "L_UL_RSSI_PUSCH_Index9" float(53),
  "L_UpPTS_Interference_Avg" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@CQI
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@CQI";
CREATE TABLE "Hourly"."BTS3900@Cell@CQI" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_ChMeas_CQI_DL_0" float(53),
  "L_ChMeas_CQI_DL_1" float(53),
  "L_ChMeas_CQI_DL_10" float(53),
  "L_ChMeas_CQI_DL_11" float(53),
  "L_ChMeas_CQI_DL_12" float(53),
  "L_ChMeas_CQI_DL_13" float(53),
  "L_ChMeas_CQI_DL_14" float(53),
  "L_ChMeas_CQI_DL_15" float(53),
  "L_ChMeas_CQI_DL_2" float(53),
  "L_ChMeas_CQI_DL_3" float(53),
  "L_ChMeas_CQI_DL_4" float(53),
  "L_ChMeas_CQI_DL_5" float(53),
  "L_ChMeas_CQI_DL_6" float(53),
  "L_ChMeas_CQI_DL_7" float(53),
  "L_ChMeas_CQI_DL_8" float(53),
  "L_ChMeas_CQI_DL_9" float(53),
  "L_ChMeas_CQI_DL_BorderUE_Num" float(53),
  "L_ChMeas_CQI_DL_BorderUE_Total" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_0" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_1" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_10" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_11" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_12" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_13" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_14" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_15" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_2" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_3" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_4" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_5" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_6" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_7" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_8" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Aperiodic_9" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_0" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_1" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_10" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_11" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_12" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_13" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_14" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_15" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_2" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_3" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_4" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_5" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_6" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_7" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_8" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code0_Periodic_9" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_0" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_1" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_10" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_11" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_12" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_13" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_14" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_15" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_2" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_3" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_4" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_5" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_6" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_7" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_8" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Aperiodic_9" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_0" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_1" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_10" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_11" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_12" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_13" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_14" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_15" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_2" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_3" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_4" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_5" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_6" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_7" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_8" float(53),
  "L_ChMeas_CQI_DL_DualCW_Code1_Periodic_9" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_0" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_1" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_10" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_11" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_12" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_13" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_14" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_15" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_2" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_3" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_4" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_5" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_6" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_7" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_8" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Aperiodic_9" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_0" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_1" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_10" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_11" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_12" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_13" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_14" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_15" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_2" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_3" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_4" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_5" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_6" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_7" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_8" float(53),
  "L_ChMeas_CQI_DL_SingleCW_Periodic_9" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_0" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_1" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_10" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_11" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_12" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_13" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_14" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_15" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_2" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_3" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_4" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_5" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_6" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_7" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_8" float(53),
  "L_ChMeas_DL_256QAM_CQI_DL_9" float(53),
  "L_ChMeas_RI_Rank1" float(53),
  "L_ChMeas_RI_Rank2" float(53),
  "L_ChMeas_RI_Rank3" float(53),
  "L_ChMeas_RI_Rank4" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@DRB
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@DRB";
CREATE TABLE "Hourly"."BTS3900@Cell@DRB" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Traffic_DRB" float(53),
  "L_Traffic_DRB_Max" float(53),
  "L_Traffic_DRB_Max_QCI_1" float(53),
  "L_Traffic_DRB_Max_QCI_2" float(53),
  "L_Traffic_DRB_Max_QCI_3" float(53),
  "L_Traffic_DRB_Max_QCI_4" float(53),
  "L_Traffic_DRB_Max_QCI_5" float(53),
  "L_Traffic_DRB_Max_QCI_6" float(53),
  "L_Traffic_DRB_Max_QCI_7" float(53),
  "L_Traffic_DRB_Max_QCI_8" float(53),
  "L_Traffic_DRB_Max_QCI_9" float(53),
  "L_Traffic_DRB_QCI_1" float(53),
  "L_Traffic_DRB_QCI_2" float(53),
  "L_Traffic_DRB_QCI_3" float(53),
  "L_Traffic_DRB_QCI_4" float(53),
  "L_Traffic_DRB_QCI_5" float(53),
  "L_Traffic_DRB_QCI_6" float(53),
  "L_Traffic_DRB_QCI_7" float(53),
  "L_Traffic_DRB_QCI_8" float(53),
  "L_Traffic_DRB_QCI_9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@E-RAB_Modification
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@E-RAB_Modification";
CREATE TABLE "Hourly"."BTS3900@Cell@E-RAB_Modification" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_E-RAB_AttModify" float(53),
  "L_E-RAB_AttModify_QCI_1" float(53),
  "L_E-RAB_AttModify_QCI_2" float(53),
  "L_E-RAB_AttModify_QCI_3" float(53),
  "L_E-RAB_AttModify_QCI_4" float(53),
  "L_E-RAB_AttModify_QCI_5" float(53),
  "L_E-RAB_AttModify_QCI_6" float(53),
  "L_E-RAB_AttModify_QCI_7" float(53),
  "L_E-RAB_AttModify_QCI_8" float(53),
  "L_E-RAB_AttModify_QCI_9" float(53),
  "L_E-RAB_FailModify_NoRadioRes" float(53),
  "L_E-RAB_SuccModify" float(53),
  "L_E-RAB_SuccModify_QCI_1" float(53),
  "L_E-RAB_SuccModify_QCI_2" float(53),
  "L_E-RAB_SuccModify_QCI_3" float(53),
  "L_E-RAB_SuccModify_QCI_4" float(53),
  "L_E-RAB_SuccModify_QCI_5" float(53),
  "L_E-RAB_SuccModify_QCI_6" float(53),
  "L_E-RAB_SuccModify_QCI_7" float(53),
  "L_E-RAB_SuccModify_QCI_8" float(53),
  "L_E-RAB_SuccModify_QCI_9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@E-RAB_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@E-RAB_Release";
CREATE TABLE "Hourly"."BTS3900@Cell@E-RAB_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_E-RAB_AbnormRel" float(53),
  "L_E-RAB_AbnormRel_Cong" float(53),
  "L_E-RAB_AbnormRel_Cong_Load" float(53),
  "L_E-RAB_AbnormRel_Cong_Load_VoIP" float(53),
  "L_E-RAB_AbnormRel_Cong_PreEmp" float(53),
  "L_E-RAB_AbnormRel_Cong_PreEmp_VoIP" float(53),
  "L.E-RAB.AbnormRel.Cong.QCI2" float(53),
  "L_E-RAB_AbnormRel_Cong_VoIP" float(53),
  "L_E-RAB_AbnormRel_eNBTot" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_1" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_2" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_3" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_4" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_5" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_6" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_7" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_8" float(53),
  "L_E-RAB_AbnormRel_eNBTot_QCI_9" float(53),
  "L_E-RAB_AbnormRel_eNBTot_UEAbnormal" float(53),
  "L_E-RAB_AbnormRel_HOFailure" float(53),
  "L.E-RAB.AbnormRel.HOFailure.QCI2" float(53),
  "L_E-RAB_AbnormRel_HOFailure_VoIP" float(53),
  "L_E-RAB_AbnormRel_HOOut" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_1" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_2" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_3" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_4" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_5" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_6" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_65" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_66" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_69" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_7" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_70" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_8" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_9" float(53),
  "L_E-RAB_AbnormRel_HOOut_QCI_PTT" float(53),
  "L.E-RAB.AbnormRel.Hst" float(53),
  "L_E-RAB_AbnormRel_MME" float(53),
  "L_E-RAB_AbnormRel_MMETot" float(53),
  "L_E-RAB_AbnormRel_MMETot_VoIP" float(53),
  "L_E-RAB_AbnormRel_MME_EUtranGen" float(53),
  "L_E-RAB_AbnormRel_MME_EUtranGen_VoIP" float(53),
  "L_E-RAB_AbnormRel_MME_HOOut" float(53),
  "L_E-RAB_AbnormRel_MME_HOOut_QCI_1" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_2" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_3" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_4" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_5" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_6" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_7" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_8" float(53),
  "L_E-RAB_AbnormRel_MME_QCI_9" float(53),
  "L_E-RAB_AbnormRel_MME_VoIP" float(53),
  "L.E-RAB.AbnormRel.QCI1.Hst" float(53),
  "L_E-RAB_AbnormRel_QCI_1" float(53),
  "L_E-RAB_AbnormRel_QCI_2" float(53),
  "L_E-RAB_AbnormRel_QCI_3" float(53),
  "L_E-RAB_AbnormRel_QCI_4" float(53),
  "L_E-RAB_AbnormRel_QCI_5" float(53),
  "L_E-RAB_AbnormRel_QCI_6" float(53),
  "L_E-RAB_AbnormRel_QCI_65" float(53),
  "L_E-RAB_AbnormRel_QCI_66" float(53),
  "L_E-RAB_AbnormRel_QCI_69" float(53),
  "L_E-RAB_AbnormRel_QCI_7" float(53),
  "L_E-RAB_AbnormRel_QCI_70" float(53),
  "L_E-RAB_AbnormRel_QCI_8" float(53),
  "L_E-RAB_AbnormRel_QCI_9" float(53),
  "L_E-RAB_AbnormRel_QCI_PTT" float(53),
  "L_E-RAB_AbnormRel_Radio" float(53),
  "L_E-RAB_AbnormRel_Radio_DRBReset" float(53),
  "L.E-RAB.AbnormRel.Radio.NoReply.QCI2" float(53),
  "L_E-RAB_AbnormRel_Radio_NoReply_VoIP" float(53),
  "L.E-RAB.AbnormRel.Radio.QCI2" float(53),
  "L_E-RAB_AbnormRel_Radio_SRBReset" float(53),
  "L.E-RAB.AbnormRel.Radio.SRBReset.QCI2" float(53),
  "L_E-RAB_AbnormRel_Radio_SRBReset_VoIP" float(53),
  "L_E-RAB_AbnormRel_Radio_ULSyncFail" float(53),
  "L.E-RAB.AbnormRel.Radio.ULSyncFail.QCI2" float(53),
  "L_E-RAB_AbnormRel_Radio_ULSyncFail_VoIP" float(53),
  "L_E-RAB_AbnormRel_Radio_UuNoReply" float(53),
  "L_E-RAB_AbnormRel_Radio_VoIP" float(53),
  "L.E-RAB.AbnormRel.SpecialUE" float(53),
  "L_E-RAB_AbnormRel_TNL" float(53),
  "L_E-RAB_AbnormRel_TNL_Load" float(53),
  "L_E-RAB_AbnormRel_TNL_Load_VoIP" float(53),
  "L_E-RAB_AbnormRel_TNL_PreEmp" float(53),
  "L_E-RAB_AbnormRel_TNL_PreEmp_VoIP" float(53),
  "L.E-RAB.AbnormRel.TNL.QCI2" float(53),
  "L_E-RAB_AbnormRel_TNL_VoIP" float(53),
  "L_E-RAB_AbnormRel_UlWeak_VoIP" float(53),
  "L_E-RAB_Left" float(53),
  "L_E-RAB_Left_QCI_1" float(53),
  "L_E-RAB_Left_QCI_2" float(53),
  "L_E-RAB_Left_QCI_3" float(53),
  "L_E-RAB_Left_QCI_4" float(53),
  "L_E-RAB_Left_QCI_5" float(53),
  "L_E-RAB_Left_QCI_6" float(53),
  "L_E-RAB_Left_QCI_7" float(53),
  "L_E-RAB_Left_QCI_8" float(53),
  "L_E-RAB_Left_QCI_9" float(53),
  "L_E-RAB_NormRel" float(53),
  "L_E-RAB_NormRel_HOOut" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_1" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_2" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_3" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_4" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_5" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_6" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_65" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_66" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_69" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_7" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_70" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_8" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_9" float(53),
  "L_E-RAB_NormRel_HOOut_QCI_PTT" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.1" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.2" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.3" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.4" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.5" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.6" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.7" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.8" float(53),
  "L.E-RAB.NormRel.InterFddTddHOOut.QCI.9" float(53),
  "L_E-RAB_NormRel_IRatHOOut" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_1" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_2" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_3" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_4" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_5" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_6" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_7" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_8" float(53),
  "L_E-RAB_NormRel_IRatHOOut_QCI_9" float(53),
  "L_E-RAB_NormRel_QCI_1" float(53),
  "L_E-RAB_NormRel_QCI_2" float(53),
  "L_E-RAB_NormRel_QCI_3" float(53),
  "L_E-RAB_NormRel_QCI_4" float(53),
  "L_E-RAB_NormRel_QCI_5" float(53),
  "L_E-RAB_NormRel_QCI_6" float(53),
  "L_E-RAB_NormRel_QCI_65" float(53),
  "L_E-RAB_NormRel_QCI_66" float(53),
  "L_E-RAB_NormRel_QCI_69" float(53),
  "L_E-RAB_NormRel_QCI_7" float(53),
  "L_E-RAB_NormRel_QCI_70" float(53),
  "L_E-RAB_NormRel_QCI_8" float(53),
  "L_E-RAB_NormRel_QCI_9" float(53),
  "L_E-RAB_NormRel_QCI_PTT" float(53),
  "L_E-RAB_Num_Syn2Unsyn" float(53),
  "L_E-RAB_Release_Unsyn" float(53),
  "L_E-RAB_Rel_eNodeB" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_1" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_2" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_3" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_4" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_5" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_6" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_7" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_8" float(53),
  "L_E-RAB_Rel_eNodeB_QCI_9" float(53),
  "L_E-RAB_Rel_eNodeB_Userinact" float(53),
  "L_E-RAB_Rel_MME" float(53),
  "L_E-RAB_Rel_MME_QCI_1" float(53),
  "L_E-RAB_Rel_MME_QCI_2" float(53),
  "L_E-RAB_Rel_MME_QCI_3" float(53),
  "L_E-RAB_Rel_MME_QCI_4" float(53),
  "L_E-RAB_Rel_MME_QCI_5" float(53),
  "L_E-RAB_Rel_MME_QCI_6" float(53),
  "L_E-RAB_Rel_MME_QCI_7" float(53),
  "L_E-RAB_Rel_MME_QCI_8" float(53),
  "L_E-RAB_Rel_MME_QCI_9" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_1" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_2" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_3" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_4" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_5" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_6" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_7" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_8" float(53),
  "L_E-RAB_Rel_S1Reset_eNodeB_QCI_9" float(53),
  "L_E-RAB_Rel_S1Reset_MME" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_1" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_2" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_3" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_4" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_5" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_6" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_7" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_8" float(53),
  "L_E-RAB_Rel_S1Reset_MME_QCI_9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@E-RAB_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@E-RAB_Setup";
CREATE TABLE "Hourly"."BTS3900@Cell@E-RAB_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_E-RAB_AttEst" float(53),
  "L_E-RAB_AttEst_HOIn" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_1" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_2" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_3" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_4" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_5" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_6" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_7" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_8" float(53),
  "L_E-RAB_AttEst_HOIn_QCI_9" float(53),
  "L_E-RAB_AttEst_QCI_1" float(53),
  "L_E-RAB_AttEst_QCI_2" float(53),
  "L_E-RAB_AttEst_QCI_3" float(53),
  "L_E-RAB_AttEst_QCI_4" float(53),
  "L_E-RAB_AttEst_QCI_5" float(53),
  "L_E-RAB_AttEst_QCI_6" float(53),
  "L_E-RAB_AttEst_QCI_65" float(53),
  "L_E-RAB_AttEst_QCI_66" float(53),
  "L_E-RAB_AttEst_QCI_69" float(53),
  "L_E-RAB_AttEst_QCI_7" float(53),
  "L_E-RAB_AttEst_QCI_70" float(53),
  "L_E-RAB_AttEst_QCI_8" float(53),
  "L_E-RAB_AttEst_QCI_9" float(53),
  "L_E-RAB_AttEst_QCI_PTT" float(53),
  "L_E-RAB_Est_TimeAvg" float(53),
  "L_E-RAB_Est_TimeAvg_QCI_65" float(53),
  "L_E-RAB_Est_TimeAvg_QCI_66" float(53),
  "L_E-RAB_Est_TimeAvg_QCI_69" float(53),
  "L_E-RAB_Est_TimeAvg_QCI_70" float(53),
  "L_E-RAB_Est_TimeMax" float(53),
  "L_E-RAB_Est_TimeMax_QCI_65" float(53),
  "L_E-RAB_Est_TimeMax_QCI_66" float(53),
  "L_E-RAB_Est_TimeMax_QCI_69" float(53),
  "L_E-RAB_Est_TimeMax_QCI_70" float(53),
  "L_E-RAB_InitAttEst" float(53),
  "L_E-RAB_InitAttEst_QCI_1" float(53),
  "L_E-RAB_InitAttEst_QCI_2" float(53),
  "L_E-RAB_InitAttEst_QCI_3" float(53),
  "L_E-RAB_InitAttEst_QCI_4" float(53),
  "L_E-RAB_InitAttEst_QCI_5" float(53),
  "L_E-RAB_InitAttEst_QCI_6" float(53),
  "L_E-RAB_InitAttEst_QCI_7" float(53),
  "L_E-RAB_InitAttEst_QCI_8" float(53),
  "L_E-RAB_InitAttEst_QCI_9" float(53),
  "L_E-RAB_InitEst_TimeAvg" float(53),
  "L_E-RAB_InitEst_TimeMax" float(53),
  "L_E-RAB_InitSuccEst" float(53),
  "L_E-RAB_InitSuccEst_QCI_1" float(53),
  "L_E-RAB_InitSuccEst_QCI_2" float(53),
  "L_E-RAB_InitSuccEst_QCI_3" float(53),
  "L_E-RAB_InitSuccEst_QCI_4" float(53),
  "L_E-RAB_InitSuccEst_QCI_5" float(53),
  "L_E-RAB_InitSuccEst_QCI_6" float(53),
  "L_E-RAB_InitSuccEst_QCI_7" float(53),
  "L_E-RAB_InitSuccEst_QCI_8" float(53),
  "L_E-RAB_InitSuccEst_QCI_9" float(53),
  "L_E-RAB_StateTrans_Unsyn2Syn_Att" float(53),
  "L_E-RAB_StateTrans_Unsyn2Syn_Succ" float(53),
  "L_E-RAB_SuccEst" float(53),
  "L_E-RAB_SuccEst_HOIn" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_1" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_2" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_3" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_4" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_5" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_6" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_65" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_66" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_69" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_7" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_70" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_8" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_9" float(53),
  "L_E-RAB_SuccEst_HOIn_QCI_PTT" float(53),
  "L_E-RAB_SuccEst_QCI_1" float(53),
  "L_E-RAB_SuccEst_QCI_2" float(53),
  "L_E-RAB_SuccEst_QCI_3" float(53),
  "L_E-RAB_SuccEst_QCI_4" float(53),
  "L_E-RAB_SuccEst_QCI_5" float(53),
  "L_E-RAB_SuccEst_QCI_6" float(53),
  "L_E-RAB_SuccEst_QCI_65" float(53),
  "L_E-RAB_SuccEst_QCI_66" float(53),
  "L_E-RAB_SuccEst_QCI_69" float(53),
  "L_E-RAB_SuccEst_QCI_7" float(53),
  "L_E-RAB_SuccEst_QCI_70" float(53),
  "L_E-RAB_SuccEst_QCI_8" float(53),
  "L_E-RAB_SuccEst_QCI_9" float(53),
  "L_E-RAB_SuccEst_QCI_PTT" float(53),
  "L_S1Sig_ConnEst_Att" float(53),
  "L_S1Sig_ConnEst_Succ" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@E-RAB_Setup_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@E-RAB_Setup_Failure";
CREATE TABLE "Hourly"."BTS3900@Cell@E-RAB_Setup_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_E-RAB_FailEst_Conflict_Hofail" float(53),
  "L_E-RAB_FailEst_MME" float(53),
  "L.E-RAB.FailEst.MME.QCI2" float(53),
  "L.E-RAB.FailEst.MME.S1AP" float(53),
  "L_E-RAB_FailEst_MME_VoIP" float(53),
  "L_E-RAB_FailEst_NoRadioRes" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_PTT" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_QCI2" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_QCI3" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_QCI4" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_QCI65" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_QCI66" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLSatis_VoIP" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLThrpLic" float(53),
  "L_E-RAB_FailEst_NoRadioRes_DLThrpLic_VoIP" float(53),
  "L_E-RAB_FailEst_NoRadioRes_Other" float(53),
  "L_E-RAB_FailEst_NoRadioRes_PUCCH" float(53),
  "L_E-RAB_FailEst_NoRadioRes_PUCCH_VoIP" float(53),
  "L.E-RAB.FailEst.NoRadioRes.QCI2" float(53),
  "L_E-RAB_FailEst_NoRadioRes_RrcUserLic" float(53),
  "L_E-RAB_FailEst_NoRadioRes_SRS" float(53),
  "L_E-RAB_FailEst_NoRadioRes_SRS_VoIP" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_PTT" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_QCI2" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_QCI3" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_QCI4" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_QCI65" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_QCI66" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULSatis_VoIP" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULThrpLic" float(53),
  "L_E-RAB_FailEst_NoRadioRes_ULThrpLic_VoIP" float(53),
  "L_E-RAB_FailEst_NoRadioRes_UserSpec" float(53),
  "L_E-RAB_FailEst_NoRadioRes_VoIP" float(53),
  "L_E-RAB_FailEst_NoReply" float(53),
  "L.E-RAB.FailEst.NoReply.QCI2" float(53),
  "L_E-RAB_FailEst_NoReply_VoIP" float(53),
  "L_E-RAB_FailEst_Other" float(53),
  "L_E-RAB_FailEst_RNL" float(53),
  "L_E-RAB_FailEst_RNL_eNodeB_AbnormRel" float(53),
  "L_E-RAB_FailEst_RNL_eNodeB_NormRel" float(53),
  "L_E-RAB_FailEst_RNL_Other" float(53),
  "L.E-RAB.FailEst.RNL.QCI2" float(53),
  "L_E-RAB_FailEst_RNL_VoIP" float(53),
  "L_E-RAB_FailEst_SecurModeFail" float(53),
  "L.E-RAB.FailEst.SecurModeFail.QCI2" float(53),
  "L_E-RAB_FailEst_SecurModeFail_VoIP" float(53),
  "L.E-RAB.FailEst.SpecialUE" float(53),
  "L_E-RAB_FailEst_SRBReset" float(53),
  "L.E-RAB.FailEst.SRBReset.QCI2" float(53),
  "L_E-RAB_FailEst_SRBReset_VoIP" float(53),
  "L_E-RAB_FailEst_TNL" float(53),
  "L_E-RAB_FailEst_TNL_DLRes" float(53),
  "L_E-RAB_FailEst_TNL_DLRes_VoIP" float(53),
  "L.E-RAB.FailEst.TNL.QCI2" float(53),
  "L_E-RAB_FailEst_TNL_ULRes" float(53),
  "L_E-RAB_FailEst_TNL_ULRes_VoIP" float(53),
  "L_E-RAB_FailEst_TNL_VoIP" float(53),
  "L_E-RAB_FailEst_X2AP" float(53),
  "L.E-RAB.FailEst.X2AP.QCI2" float(53),
  "L_E-RAB_FailEst_X2AP_VoIP" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Incoming_Inter-RAT_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Incoming_Inter-RAT_Handover";
CREATE TABLE "Hourly"."BTS3900@Cell@Incoming_Inter-RAT_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_IRATHO_G2E_ExecSuccIn" float(53),
  "L_IRATHO_G2E_PrepAttIn" float(53),
  "L_IRATHO_G2E_PrepInFail_TgtNotAllow" float(53),
  "L_IRATHO_G2E_PrepInSucc" float(53),
  "L_IRATHO_T2E_ExecSuccIn" float(53),
  "L_IRATHO_T2E_PrepAttIn" float(53),
  "L_IRATHO_T2E_PrepInFail_TgtNotAllow" float(53),
  "L_IRATHO_T2E_PrepInSucc" float(53),
  "L_IRATHO_W2E_ExecSuccIn" float(53),
  "L_IRATHO_W2E_PrepAttIn" float(53),
  "L_IRATHO_W2E_PrepInFail_TgtNotAllow" float(53),
  "L_IRATHO_W2E_PrepInSucc" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Incoming_Intra-RAT_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover";
CREATE TABLE "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_HHO_IntereNB_ExecAttIn" float(53),
  "L_HHO_IntereNB_ExecSuccIn" float(53),
  "L_HHO_IntereNB_ExecSuccIn_ReEst2Tgt" float(53),
  "L_HHO_IntereNB_PathSwAtt" float(53),
  "L_HHO_IntereNB_PathSwSucc" float(53),
  "L_HHO_IntereNB_PrepAttIn" float(53),
  "L_HHO_InterFddTdd_IntereNB_ExecAttIn" float(53),
  "L_HHO_InterFddTdd_IntereNB_ExecSuccIn" float(53),
  "L_HHO_InterFddTdd_IntereNB_ExecSuccIn_ReEst2Tgt" float(53),
  "L_HHO_InterFddTdd_IntereNB_PathSwAtt" float(53),
  "L_HHO_InterFddTdd_IntereNB_PathSwSucc" float(53),
  "L_HHO_InterFddTdd_IntereNB_PrepAttIn" float(53),
  "L_HHO_InterFddTdd_IntraeNB_ExecAttIn" float(53),
  "L_HHO_InterFddTdd_IntraeNB_ExecSuccIn" float(53),
  "L_HHO_InterFddTdd_IntraeNB_ExecSuccIn_ReEst2Tgt" float(53),
  "L_HHO_InterFddTdd_IntraeNB_PrepAttIn" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_DLThrpLic" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_Load" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_PUCCH" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_SRS" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_TNL_DLRes" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_TNL_ULRes" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_ULThrpLic" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_UserLic" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_AdmitFail_UserSpec" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_FlowCtrl" float(53),
  "L_HHO_InterFddTdd_Prep_FailIn_HOCancel" float(53),
  "L_HHO_InterFddTdd_S1_Cancel_ExecIn" float(53),
  "L_HHO_InterFddTdd_X2_Cancel_ExecIn" float(53),
  "L_HHO_IntraeNB_ExecAttIn" float(53),
  "L_HHO_IntraeNB_ExecSuccIn" float(53),
  "L_HHO_IntraeNB_ExecSuccIn_ReEst2Tgt" float(53),
  "L_HHO_IntraeNB_PrepAttIn" float(53),
  "L_HHO_PrepAttIn_disc_FlowCtrl" float(53),
  "L_HHO_Prep_FailIn" float(53),
  "L_HHO_Prep_FailIn_AdmitFail" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_DLThrpLic" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_Load" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_PUCCH" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_SRS" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_TNL_DLRes" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_TNL_ULRes" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_ULThrpLic" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_UserLic" float(53),
  "L_HHO_Prep_FailIn_AdmitFail_UserSpec" float(53),
  "L_HHO_Prep_FailIn_FlowCtrl" float(53),
  "L_HHO_Prep_FailIn_HOCancel" float(53),
  "L_HHO_S1_Cancel_ExecIn" float(53),
  "L.HHO.SpePciCell.ExecAttIn" float(53),
  "L.HHO.SpePciCell.ExecSuccIn" float(53),
  "L.HHO.SpePciCell.PrepAttIn" float(53),
  "L_HHO_X2_Cancel_ExecIn" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2";
CREATE TABLE "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_HHO_InterFddTdd_X2_ExecAttIn" float(53),
  "L_HHO_InterFddTdd_X2_ExecSuccIn" float(53),
  "L_HHO_InterFddTdd_X2_ExecSuccIn_ReEst2Tgt" float(53),
  "L_HHO_InterFddTdd_X2_PrepAttIn" float(53),
  "L_HHO_X2_ExecAttIn" float(53),
  "L_HHO_X2_ExecSuccIn" float(53),
  "L_HHO_X2_ExecSuccIn_ReEst2Tgt" float(53),
  "L_HHO_X2_InterFddTdd_Prep_FailIn_UnknownMmeCode" float(53),
  "L_HHO_X2_PrepAttIn" float(53),
  "L_HHO_X2_Prep_FailIn_UnknownMmeCode" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@MAC
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@MAC";
CREATE TABLE "Hourly"."BTS3900@Cell@MAC" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_ChMeas_PRB_Shared_DL_Used_Avg" float(53),
  "L_ChMeas_PRB_Shared_UL_Used_Avg" float(53),
  "L_Thrp_Time_DL_Dedicated" float(53),
  "L_Thrp_Time_DL_Shared" float(53),
  "L_Thrp_Time_UL_Dedicated" float(53),
  "L_Thrp_Time_UL_Shared" float(53),
  "L_Traffic_BCH_TB_bits" float(53),
  "L_Traffic_DL_SCH_16QAM_DRB_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_16QAM_DRB_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_16QAM_DRB_TB" float(53),
  "L_Traffic_DL_SCH_16QAM_DRB_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_16QAM_ErrTB_bits_Rbler" float(53),
  "L_Traffic_DL_SCH_16QAM_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_16QAM_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_16QAM_TB" float(53),
  "L_Traffic_DL_SCH_16QAM_TB_bits" float(53),
  "L_Traffic_DL_SCH_16QAM_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_16QAM_TB_Retrans_bits" float(53),
  "L_Traffic_DL_SCH_16QAM_TB_Retrans_QCI_1" float(53),
  "L_Traffic_DL_SCH_16QAM_TB_Retrans_QCI_2" float(53),
  "L_Traffic_DL_SCH_256QAM_DRB_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_256QAM_DRB_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_256QAM_DRB_TB" float(53),
  "L_Traffic_DL_SCH_256QAM_DRB_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_256QAM_ErrTB_bits_Rbler" float(53),
  "L_Traffic_DL_SCH_256QAM_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_256QAM_ErrTB_Ibler_QCI_1" float(53),
  "L_Traffic_DL_SCH_256QAM_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_256QAM_TB" float(53),
  "L_Traffic_DL_SCH_256QAM_TB_bits" float(53),
  "L_Traffic_DL_SCH_256QAM_TB_NACK" float(53),
  "L_Traffic_DL_SCH_256QAM_TB_QCI_1" float(53),
  "L_Traffic_DL_SCH_256QAM_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_256QAM_TB_Retrans_bits" float(53),
  "L_Traffic_DL_SCH_256QAM_TB_Retrans_QCI_1" float(53),
  "L_Traffic_DL_SCH_64QAM_DRB_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_64QAM_DRB_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_64QAM_DRB_TB" float(53),
  "L_Traffic_DL_SCH_64QAM_DRB_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_64QAM_ErrTB_bits_Rbler" float(53),
  "L_Traffic_DL_SCH_64QAM_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_64QAM_ErrTB_Ibler_QCI_1" float(53),
  "L_Traffic_DL_SCH_64QAM_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_64QAM_TB" float(53),
  "L_Traffic_DL_SCH_64QAM_TB_bits" float(53),
  "L_Traffic_DL_SCH_64QAM_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_64QAM_TB_Retrans_bits" float(53),
  "L_Traffic_DL_SCH_bits_Max" float(53),
  "L_Traffic_DL_SCH_ErrTB_Ibler_BorderUE" float(53),
  "L_Traffic_DL_SCH_ErrTB_Rbler_BorderUE" float(53),
  "L_Traffic_DL_SCH_HOCmd_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_HOCmd_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_HOCmd_TB" float(53),
  "L_Traffic_DL_SCH_PoorChannelQuality_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_PoorChannelQuality_TB" float(53),
  "L_Traffic_DL_SCH_QPSK_DRB_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_QPSK_DRB_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_QPSK_DRB_TB" float(53),
  "L_Traffic_DL_SCH_QPSK_DRB_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_QPSK_ErrTB_bits_Rbler" float(53),
  "L_Traffic_DL_SCH_QPSK_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_QPSK_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_QPSK_TB" float(53),
  "L_Traffic_DL_SCH_QPSK_TB_bits" float(53),
  "L_Traffic_DL_SCH_QPSK_TB_Retrans" float(53),
  "L_Traffic_DL_SCH_QPSK_TB_Retrans_bits" float(53),
  "L_Traffic_DL_SCH_RRCRel_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_RRCRel_ErrTB_Rbler" float(53),
  "L_Traffic_DL_SCH_RRCRel_TB" float(53),
  "L_Traffic_DL_SCH_Shared_ErrTB_Ibler" float(53),
  "L_Traffic_DL_SCH_Shared_ErrTB_Ibler_bits" float(53),
  "L_Traffic_DL_SCH_Shared_TB" float(53),
  "L_Traffic_DL_SCH_Shared_TB_bits" float(53),
  "L_Traffic_DL_SCH_TB_BorderUE" float(53),
  "L_Traffic_PCH_TB_bits" float(53),
  "L_Traffic_PktInterval_Num_Index0" float(53),
  "L_Traffic_PktInterval_Num_Index1" float(53),
  "L_Traffic_PktInterval_Num_Index2" float(53),
  "L_Traffic_PktInterval_Num_Index3" float(53),
  "L_Traffic_PktInterval_Num_Index4" float(53),
  "L_Traffic_PktInterval_Num_Index5" float(53),
  "L_Traffic_PktInterval_Num_Index6" float(53),
  "L_Traffic_PktInterval_Num_Index7" float(53),
  "L.Traffic.PktInterval.Num.Index8" float(53),
  "L.Traffic.PktInterval.Num.Index9" float(53),
  "L_Traffic_Schedule_Dedicated_Avg" float(53),
  "L_Traffic_Schedule_Shared_Avg" float(53),
  "L_Traffic_Sch_DL_Num" float(53),
  "L_Traffic_Sch_UL_Num" float(53),
  "L_Traffic_UL_SCH_16QAM_ErrTB_Ibler" float(53),
  "L_Traffic_UL_SCH_16QAM_ErrTB_Rbler" float(53),
  "L_Traffic_UL_SCH_16QAM_TB" float(53),
  "L_Traffic_UL_SCH_16QAM_TB_bits" float(53),
  "L_Traffic_UL_SCH_16QAM_TB_Retrans" float(53),
  "L_Traffic_UL_SCH_16QAM_TB_Retrans_bits" float(53),
  "L_Traffic_UL_SCH_64QAM_ErrTB_Ibler" float(53),
  "L_Traffic_UL_SCH_64QAM_ErrTB_Ibler_QCI_1" float(53),
  "L_Traffic_UL_SCH_64QAM_ErrTB_Rbler" float(53),
  "L_Traffic_UL_SCH_64QAM_TB" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_bits" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_NACK" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_QCI_1" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_Retrans" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_Retrans_bits" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_Retrans_QCI_1" float(53),
  "L_Traffic_UL_SCH_64QAM_TB_Retrans_QCI_2" float(53),
  "L_Traffic_UL_SCH_bits_Max" float(53),
  "L_Traffic_UL_SCH_ErrTB_Ibler_BorderUE" float(53),
  "L_Traffic_UL_SCH_ErrTB_Rbler_BorderUE" float(53),
  "L_Traffic_UL_SCH_PoorChannelQuality_ErrTB_Rbler" float(53),
  "L_Traffic_UL_SCH_PoorChannelQuality_TB" float(53),
  "L_Traffic_UL_SCH_QPSK_ErrTB_Ibler" float(53),
  "L_Traffic_UL_SCH_QPSK_ErrTB_Rbler" float(53),
  "L_Traffic_UL_SCH_QPSK_TB" float(53),
  "L_Traffic_UL_SCH_QPSK_TB_bits" float(53),
  "L_Traffic_UL_SCH_QPSK_TB_Retrans" float(53),
  "L_Traffic_UL_SCH_QPSK_TB_Retrans_bits" float(53),
  "L_Traffic_UL_SCH_Shared_ErrTB_Ibler" float(53),
  "L_Traffic_UL_SCH_Shared_ErrTB_Ibler_bits" float(53),
  "L_Traffic_UL_SCH_Shared_TB" float(53),
  "L_Traffic_UL_SCH_Shared_TB_bits" float(53),
  "L_Traffic_UL_SCH_TB_BorderUE" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@MCS
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@MCS";
CREATE TABLE "Hourly"."BTS3900@Cell@MCS" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_ChMeas_PDSCH_MCS_0" float(53),
  "L_ChMeas_PDSCH_MCS_1" float(53),
  "L_ChMeas_PDSCH_MCS_10" float(53),
  "L_ChMeas_PDSCH_MCS_11" float(53),
  "L_ChMeas_PDSCH_MCS_12" float(53),
  "L_ChMeas_PDSCH_MCS_13" float(53),
  "L_ChMeas_PDSCH_MCS_14" float(53),
  "L_ChMeas_PDSCH_MCS_15" float(53),
  "L_ChMeas_PDSCH_MCS_16" float(53),
  "L_ChMeas_PDSCH_MCS_17" float(53),
  "L_ChMeas_PDSCH_MCS_18" float(53),
  "L_ChMeas_PDSCH_MCS_19" float(53),
  "L_ChMeas_PDSCH_MCS_2" float(53),
  "L_ChMeas_PDSCH_MCS_20" float(53),
  "L_ChMeas_PDSCH_MCS_21" float(53),
  "L_ChMeas_PDSCH_MCS_22" float(53),
  "L_ChMeas_PDSCH_MCS_23" float(53),
  "L_ChMeas_PDSCH_MCS_24" float(53),
  "L_ChMeas_PDSCH_MCS_25" float(53),
  "L_ChMeas_PDSCH_MCS_26" float(53),
  "L_ChMeas_PDSCH_MCS_27" float(53),
  "L_ChMeas_PDSCH_MCS_28" float(53),
  "L_ChMeas_PDSCH_MCS_29" float(53),
  "L_ChMeas_PDSCH_MCS_3" float(53),
  "L_ChMeas_PDSCH_MCS_30" float(53),
  "L_ChMeas_PDSCH_MCS_31" float(53),
  "L_ChMeas_PDSCH_MCS_4" float(53),
  "L_ChMeas_PDSCH_MCS_5" float(53),
  "L_ChMeas_PDSCH_MCS_6" float(53),
  "L_ChMeas_PDSCH_MCS_7" float(53),
  "L_ChMeas_PDSCH_MCS_8" float(53),
  "L_ChMeas_PDSCH_MCS_9" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_0" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_1" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_10" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_11" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_12" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_13" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_14" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_15" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_16" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_17" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_18" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_19" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_2" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_20" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_21" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_22" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_23" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_24" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_25" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_26" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_27" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_28" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_29" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_3" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_30" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_31" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_4" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_5" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_6" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_7" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_8" float(53),
  "L_ChMeas_PRB_DL_RANK1_MCS_9" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_0" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_1" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_10" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_11" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_12" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_13" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_14" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_15" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_16" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_17" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_18" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_19" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_2" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_20" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_21" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_22" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_23" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_24" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_25" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_26" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_27" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_28" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_29" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_3" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_30" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_31" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_4" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_5" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_6" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_7" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_8" float(53),
  "L_ChMeas_PRB_DL_RANK2_MCS_9" float(53),
  "L_ChMeas_PRB_UL_MCS_0" float(53),
  "L_ChMeas_PRB_UL_MCS_1" float(53),
  "L_ChMeas_PRB_UL_MCS_10" float(53),
  "L_ChMeas_PRB_UL_MCS_11" float(53),
  "L_ChMeas_PRB_UL_MCS_12" float(53),
  "L_ChMeas_PRB_UL_MCS_13" float(53),
  "L_ChMeas_PRB_UL_MCS_14" float(53),
  "L_ChMeas_PRB_UL_MCS_15" float(53),
  "L_ChMeas_PRB_UL_MCS_16" float(53),
  "L_ChMeas_PRB_UL_MCS_17" float(53),
  "L_ChMeas_PRB_UL_MCS_18" float(53),
  "L_ChMeas_PRB_UL_MCS_19" float(53),
  "L_ChMeas_PRB_UL_MCS_2" float(53),
  "L_ChMeas_PRB_UL_MCS_20" float(53),
  "L_ChMeas_PRB_UL_MCS_21" float(53),
  "L_ChMeas_PRB_UL_MCS_22" float(53),
  "L_ChMeas_PRB_UL_MCS_23" float(53),
  "L_ChMeas_PRB_UL_MCS_24" float(53),
  "L_ChMeas_PRB_UL_MCS_25" float(53),
  "L_ChMeas_PRB_UL_MCS_26" float(53),
  "L_ChMeas_PRB_UL_MCS_27" float(53),
  "L_ChMeas_PRB_UL_MCS_28" float(53),
  "L_ChMeas_PRB_UL_MCS_29" float(53),
  "L_ChMeas_PRB_UL_MCS_3" float(53),
  "L_ChMeas_PRB_UL_MCS_30" float(53),
  "L_ChMeas_PRB_UL_MCS_31" float(53),
  "L_ChMeas_PRB_UL_MCS_4" float(53),
  "L_ChMeas_PRB_UL_MCS_5" float(53),
  "L_ChMeas_PRB_UL_MCS_6" float(53),
  "L_ChMeas_PRB_UL_MCS_7" float(53),
  "L_ChMeas_PRB_UL_MCS_8" float(53),
  "L_ChMeas_PRB_UL_MCS_9" float(53),
  "L_ChMeas_PUSCH_MCS_0" float(53),
  "L_ChMeas_PUSCH_MCS_1" float(53),
  "L_ChMeas_PUSCH_MCS_10" float(53),
  "L_ChMeas_PUSCH_MCS_11" float(53),
  "L_ChMeas_PUSCH_MCS_12" float(53),
  "L_ChMeas_PUSCH_MCS_13" float(53),
  "L_ChMeas_PUSCH_MCS_14" float(53),
  "L_ChMeas_PUSCH_MCS_15" float(53),
  "L_ChMeas_PUSCH_MCS_16" float(53),
  "L_ChMeas_PUSCH_MCS_17" float(53),
  "L_ChMeas_PUSCH_MCS_18" float(53),
  "L_ChMeas_PUSCH_MCS_19" float(53),
  "L_ChMeas_PUSCH_MCS_2" float(53),
  "L_ChMeas_PUSCH_MCS_20" float(53),
  "L_ChMeas_PUSCH_MCS_21" float(53),
  "L_ChMeas_PUSCH_MCS_22" float(53),
  "L_ChMeas_PUSCH_MCS_23" float(53),
  "L_ChMeas_PUSCH_MCS_24" float(53),
  "L_ChMeas_PUSCH_MCS_25" float(53),
  "L_ChMeas_PUSCH_MCS_26" float(53),
  "L_ChMeas_PUSCH_MCS_27" float(53),
  "L_ChMeas_PUSCH_MCS_28" float(53),
  "L_ChMeas_PUSCH_MCS_29" float(53),
  "L_ChMeas_PUSCH_MCS_3" float(53),
  "L_ChMeas_PUSCH_MCS_30" float(53),
  "L_ChMeas_PUSCH_MCS_31" float(53),
  "L_ChMeas_PUSCH_MCS_4" float(53),
  "L_ChMeas_PUSCH_MCS_5" float(53),
  "L_ChMeas_PUSCH_MCS_6" float(53),
  "L_ChMeas_PUSCH_MCS_7" float(53),
  "L_ChMeas_PUSCH_MCS_8" float(53),
  "L_ChMeas_PUSCH_MCS_9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@MIMO
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@MIMO";
CREATE TABLE "Hourly"."BTS3900@Cell@MIMO" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_ChMeas_BF_PRB_OL_Rank1" float(53),
  "L_ChMeas_BF_PRB_OL_Rank2" float(53),
  "L_ChMeas_DMIMO_1Layer_PRB" float(53),
  "L_ChMeas_DMIMO_2Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_3Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_4Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_5Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_6Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_7Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_8Layer_PairPRB" float(53),
  "L_ChMeas_DMIMO_JTUser_RRU_Avg" float(53),
  "L_ChMeas_DMIMO_JT_User_Avg" float(53),
  "L_ChMeas_MIMO_PRB_CL_Rank1" float(53),
  "L_ChMeas_MIMO_PRB_CL_Rank2" float(53),
  "L_ChMeas_MIMO_PRB_CL_Rank3" float(53),
  "L_ChMeas_MIMO_PRB_CL_Rank4" float(53),
  "L.ChMeas.MIMO.PRB.CL.Rank5" float(53),
  "L.ChMeas.MIMO.PRB.CL.Rank6" float(53),
  "L.ChMeas.MIMO.PRB.CL.Rank7" float(53),
  "L.ChMeas.MIMO.PRB.CL.Rank8" float(53),
  "L_ChMeas_MIMO_PRB_OL_Rank1" float(53),
  "L_ChMeas_MIMO_PRB_OL_Rank2" float(53),
  "L_ChMeas_MIMO_PRB_OL_Rank3" float(53),
  "L_ChMeas_MIMO_PRB_OL_Rank4" float(53),
  "L_ChMeas_MUBF_1stLayer_PairPRB_Tot" float(53),
  "L_ChMeas_MUBF_2ndLayer_PairPRB_Succ" float(53),
  "L_ChMeas_MUBF_3rdLayer_PairPRB_Succ" float(53),
  "L_ChMeas_MUBF_4thLayer_PairPRB_Succ" float(53),
  "L.ChMeas.MUBF.PairPRB.Succ" float(53),
  "L.ChMeas.MUBF.PairPRB.Tot" float(53),
  "L_ChMeas_PRB_TM1" float(53),
  "L_ChMeas_PRB_TM2" float(53),
  "L_ChMeas_PRB_TM3" float(53),
  "L_ChMeas_PRB_TM4" float(53),
  "L_ChMeas_VMIMO_PairPRB2Layer_Succ" float(53),
  "L_ChMeas_VMIMO_PairPRB3Layer_Succ" float(53),
  "L_ChMeas_VMIMO_PairPRB4Layer_Succ" float(53),
  "L_ChMeas_VMIMO_PairPRB_Succ" float(53),
  "L_ChMeas_VMIMO_PairPRB_Succ_VoLTE" float(53),
  "L_ChMeas_VMIMO_PairPRB_Tot" float(53),
  "L_ChMeas_VMIMO_Succ_SubFrameNum" float(53),
  "L_Traffic_DL_SCH_TB_BF_Rank1" float(53),
  "L_Traffic_DL_SCH_TB_BF_Rank2" float(53),
  "L_Traffic_DL_SCH_TB_CL_Rank1" float(53),
  "L_Traffic_DL_SCH_TB_CL_Rank2" float(53),
  "L_Traffic_DL_SCH_TB_CL_Rank3" float(53),
  "L_Traffic_DL_SCH_TB_CL_Rank4" float(53),
  "L_Traffic_DL_SCH_TB_OL_Rank1" float(53),
  "L_Traffic_DL_SCH_TB_OL_Rank2" float(53),
  "L_Traffic_DL_SCH_TB_OL_Rank3" float(53),
  "L_Traffic_DL_SCH_TB_OL_Rank4" float(53),
  "L_Traffic_DL_SCH_TB_TM1" float(53),
  "L_Traffic_DL_SCH_TB_TM1_bits" float(53),
  "L_Traffic_DL_SCH_TB_TM2" float(53),
  "L_Traffic_DL_SCH_TB_TM2_bits" float(53),
  "L_Traffic_DL_SCH_TB_TM3" float(53),
  "L_Traffic_DL_SCH_TB_TM3_bits" float(53),
  "L_Traffic_DL_SCH_TB_TM4" float(53),
  "L_Traffic_DL_SCH_TB_TM4_bits" float(53),
  "L.UL.SINR.SRS.Index0" float(53),
  "L.UL.SINR.SRS.Index1" float(53),
  "L.UL.SINR.SRS.Index2" float(53),
  "L.UL.SINR.SRS.Index3" float(53),
  "L.UL.SINR.SRS.Index4" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@MR
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@MR";
CREATE TABLE "Hourly"."BTS3900@Cell@MR" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_MeasCtrl_GERAN_Add" float(53),
  "L_MeasCtrl_WCDMA_Add" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Outgoing_Inter-RAT_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover";
CREATE TABLE "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_CCOwithNACC_E2G_CSFB_ExecAttOut" float(53),
  "L.CCOwithNACC.E2G.CSFB.ExecSuccOut" float(53),
  "L_CCOwithoutNACC_E2G_CSFB_ExecAttOut" float(53),
  "L.CCOwithoutNACC.E2G.CSFB.ExecSuccOut" float(53),
  "L_CCO_E2G_ExecAttOut" float(53),
  "L.CCO.E2G.ExecSuccOut" float(53),
  "L.CCO.E2G.MMEAbnormRsp" float(53),
  "L_CSFB_E2C" float(53),
  "L_CSFB_E2C_DualRx" float(53),
  "L_CSFB_E2C_Emergency" float(53),
  "L_CSFB_E2G" float(53),
  "L_CSFB_E2G_Emergency" float(53),
  "L_CSFB_E2G_Idle" float(53),
  "L_CSFB_E2T" float(53),
  "L_CSFB_E2T_Idle" float(53),
  "L_CSFB_E2W" float(53),
  "L_CSFB_E2W_Emergency" float(53),
  "L_CSFB_E2W_Idle" float(53),
  "L_CSFB_LCS_PrepAtt" float(53),
  "L_CSFB_LCS_PrepSucc" float(53),
  "L_CSFB_PrepAtt" float(53),
  "L_CSFB_PrepAtt_Emergency" float(53),
  "L_CSFB_PrepAtt_Idle" float(53),
  "L_CSFB_PrepFail_Conflict" float(53),
  "L_CSFB_PrepSucc" float(53),
  "L_CSFB_PrepSucc_Emergency" float(53),
  "L_CSFB_PrepSucc_Idle" float(53),
  "L_FlashCSFB_E2G" float(53),
  "L_FlashCSFB_E2W" float(53),
  "L_IRATHO_BlindHO_E2G_ExecAttOut" float(53),
  "L_IRATHO_BlindHO_E2G_ExecSuccOut" float(53),
  "L_IRATHO_BlindHO_E2G_MMEAbnormRsp" float(53),
  "L_IRATHO_BlindHO_E2G_PrepAttOut" float(53),
  "L_IRATHO_BlindHO_E2T_ExecAttOut" float(53),
  "L_IRATHO_BlindHO_E2T_ExecSuccOut" float(53),
  "L_IRATHO_BlindHO_E2T_PrepAttOut" float(53),
  "L_IRATHO_BlindHO_E2W_ExecAttOut" float(53),
  "L_IRATHO_BlindHO_E2W_ExecSuccOut" float(53),
  "L_IRATHO_BlindHO_E2W_MMEAbnormRsp" float(53),
  "L_IRATHO_BlindHO_E2W_PrepAttOut" float(53),
  "L_IRATHO_CSFB_SRVCC_E2G_ExecAttOut" float(53),
  "L_IRATHO_CSFB_SRVCC_E2G_ExecSuccOut" float(53),
  "L_IRATHO_CSFB_SRVCC_E2G_MMEAbnormRsp" float(53),
  "L_IRATHO_CSFB_SRVCC_E2G_PrepAttOut" float(53),
  "L_IRATHO_CSFB_SRVCC_E2W_ExecAttOut" float(53),
  "L_IRATHO_CSFB_SRVCC_E2W_ExecSuccOut" float(53),
  "L_IRATHO_CSFB_SRVCC_E2W_PrepAttOut" float(53),
  "L_IRATHO_E21xRTT_MMEAbnormRsp" float(53),
  "L_IRATHO_E21xRTT_NoNRT" float(53),
  "L_IRATHO_E2C_CSFB_ExecAttOut" float(53),
  "L_IRATHO_E2C_CSFB_ExecSuccOut" float(53),
  "L_IRATHO_E2C_CSFB_MMEAbnormRsp" float(53),
  "L_IRATHO_E2C_CSFB_PrepAttOut" float(53),
  "L_IRATHO_E2C_ExecAttOut" float(53),
  "L_IRATHO_E2C_ExecSuccOut" float(53),
  "L_IRATHO_E2C_PrepAttOut" float(53),
  "L_IRATHO_E2G_Coverage_ExecAttOut" float(53),
  "L_IRATHO_E2G_Coverage_ExecSuccOut" float(53),
  "L_IRATHO_E2G_Coverage_PrepAttOut" float(53),
  "L_IRATHO_E2G_CSFB_ExecAttOut" float(53),
  "L_IRATHO_E2G_CSFB_ExecAttOut_Emergency" float(53),
  "L_IRATHO_E2G_CSFB_ExecSuccOut" float(53),
  "L_IRATHO_E2G_CSFB_ExecSuccOut_Emergency" float(53),
  "L_IRATHO_E2G_CSFB_MMEAbnormRsp" float(53),
  "L_IRATHO_E2G_CSFB_PrepAttOut" float(53),
  "L_IRATHO_E2G_CSFB_PrepAttOut_Emergency" float(53),
  "L_IRATHO_E2G_Distance_ExecAttOut" float(53),
  "L_IRATHO_E2G_Distance_ExecSuccOut" float(53),
  "L_IRATHO_E2G_Distance_PrepAttOut" float(53),
  "L_IRATHO_E2G_ExecAttOut" float(53),
  "L_IRATHO_E2G_ExecSuccOut" float(53),
  "L_IRATHO_E2G_Load_ExecAttOut" float(53),
  "L_IRATHO_E2G_Load_ExecSuccOut" float(53),
  "L_IRATHO_E2G_Load_PrepAttOut" float(53),
  "L_IRATHO_E2G_MMEAbnormRsp" float(53),
  "L_IRATHO_E2G_NoNRT" float(53),
  "L_IRATHO_E2G_PrepAttOut" float(53),
  "L_IRATHO_E2G_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2G_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2G_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2G_Service_ExecAttOut" float(53),
  "L_IRATHO_E2G_Service_ExecSuccOut" float(53),
  "L_IRATHO_E2G_Service_PrepAttOut" float(53),
  "L_IRATHO_E2G_SRVCC_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2G_SRVCC_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2G_SRVCC_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2G_TimeAvg" float(53),
  "L_IRATHO_E2G_ULquality_ExecAttOut" float(53),
  "L_IRATHO_E2G_ULquality_ExecSuccOut" float(53),
  "L_IRATHO_E2G_ULquality_PrepAttOut" float(53),
  "L_IRATHO_E2HRPD_ExecAttOut" float(53),
  "L_IRATHO_E2HRPD_ExecSuccOut" float(53),
  "L_IRATHO_E2HRPD_MMEAbnormRsp" float(53),
  "L_IRATHO_E2HRPD_NoNRT" float(53),
  "L_IRATHO_E2HRPD_PrepAttOut" float(53),
  "L_IRATHO_E2T_CSFB_ExecAttOut" float(53),
  "L_IRATHO_E2T_CSFB_ExecSuccOut" float(53),
  "L_IRATHO_E2T_CSFB_MMEAbnormRsp" float(53),
  "L_IRATHO_E2T_CSFB_PrepAttOut" float(53),
  "L_IRATHO_E2T_CSFB_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2T_CSFB_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2T_CSFB_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2T_ExecAttOut" float(53),
  "L_IRATHO_E2T_ExecSuccOut" float(53),
  "L_IRATHO_E2T_MMEAbnormRsp" float(53),
  "L_IRATHO_E2T_NoNRT" float(53),
  "L_IRATHO_E2T_PrepAttOut" float(53),
  "L_IRATHO_E2T_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2T_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2T_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2T_SRVCC_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2T_SRVCC_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2T_SRVCC_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2T_TimeAvg" float(53),
  "L_IRATHO_E2W_Coverage_ExecAttOut" float(53),
  "L_IRATHO_E2W_Coverage_ExecSuccOut" float(53),
  "L_IRATHO_E2W_Coverage_PrepAttOut" float(53),
  "L_IRATHO_E2W_CSFB_ExecAttOut" float(53),
  "L_IRATHO_E2W_CSFB_ExecAttOut_Emergency" float(53),
  "L_IRATHO_E2W_CSFB_ExecSuccOut" float(53),
  "L_IRATHO_E2W_CSFB_ExecSuccOut_Emergency" float(53),
  "L_IRATHO_E2W_CSFB_MMEAbnormRsp" float(53),
  "L_IRATHO_E2W_CSFB_PrepAttOut" float(53),
  "L_IRATHO_E2W_CSFB_PrepAttOut_Emergency" float(53),
  "L_IRATHO_E2W_CSFB_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2W_CSFB_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2W_CSFB_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2W_Distance_ExecAttOut" float(53),
  "L_IRATHO_E2W_Distance_ExecSuccOut" float(53),
  "L_IRATHO_E2W_Distance_PrepAttOut" float(53),
  "L_IRATHO_E2W_ExecAttOut" float(53),
  "L_IRATHO_E2W_ExecSuccOut" float(53),
  "L_IRATHO_E2W_Load_ExecAttOut" float(53),
  "L_IRATHO_E2W_Load_ExecSuccOut" float(53),
  "L_IRATHO_E2W_Load_PrepAttOut" float(53),
  "L_IRATHO_E2W_MMEAbnormRsp" float(53),
  "L_IRATHO_E2W_NoData_ExecAttOut" float(53),
  "L_IRATHO_E2W_NoData_ExecSuccOut" float(53),
  "L_IRATHO_E2W_NoNRT" float(53),
  "L_IRATHO_E2W_PrepAttOut" float(53),
  "L_IRATHO_E2W_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2W_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2W_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2W_RegainHPLMN_ExecAttOut" float(53),
  "L_IRATHO_E2W_RegainHPLMN_ExecSuccOut" float(53),
  "L_IRATHO_E2W_RegainHPLMN_PrepAttOut" float(53),
  "L_IRATHO_E2W_Service_ExecAttOut" float(53),
  "L_IRATHO_E2W_Service_ExecSuccOut" float(53),
  "L_IRATHO_E2W_Service_PrepAttOut" float(53),
  "L_IRATHO_E2W_SRVCC_Prep_FailOut_MME" float(53),
  "L_IRATHO_E2W_SRVCC_Prep_FailOut_NoReply" float(53),
  "L_IRATHO_E2W_SRVCC_Prep_FailOut_PrepFailure" float(53),
  "L_IRATHO_E2W_TimeAvg" float(53),
  "L_IRATHO_E2W_ULquality_ExecAttOut" float(53),
  "L_IRATHO_E2W_ULquality_ExecSuccOut" float(53),
  "L_IRATHO_E2W_ULquality_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2G_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2G_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2G_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2T_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2T_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2T_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2W_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2W_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_CSonly_E2W_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_E2G_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_E2G_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_E2G_MMEAbnormRsp" float(53),
  "L_IRATHO_SRVCC_E2G_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_E2T_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_E2T_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_E2T_MMEAbnormRsp" float(53),
  "L_IRATHO_SRVCC_E2T_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_E2W_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_E2W_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_E2W_MMEAbnormRsp" float(53),
  "L_IRATHO_SRVCC_E2W_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2G_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2G_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2G_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2T_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2T_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2T_PrepAttOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2W_ExecAttOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2W_ExecSuccOut" float(53),
  "L_IRATHO_SRVCC_LCS_E2W_PrepAttOut" float(53),
  "L_RRCRedirection_E21xRTT" float(53),
  "L.RRCRedirection.E21xRTT.PrepAtt" float(53),
  "L_RRCRedirection_E2C_CSFB" float(53),
  "L_RRCRedirection_E2G" float(53),
  "L_RRCRedirection_E2G_Coverage" float(53),
  "L_RRCRedirection_E2G_CSFB" float(53),
  "L_RRCRedirection_E2G_CSFB_TimeOut" float(53),
  "L_RRCRedirection_E2G_Distance" float(53),
  "L_RRCRedirection_E2G_Load" float(53),
  "L.RRCRedirection.E2G.PrepAtt" float(53),
  "L_RRCRedirection_E2G_Service" float(53),
  "L_RRCRedirection_E2G_Ulquality" float(53),
  "L_RRCRedirection_E2HRPD" float(53),
  "L.RRCRedirection.E2HRPD.PrepAtt" float(53),
  "L_RRCRedirection_E2HRPD_PrepAtt_PreRegNotCompleted" float(53),
  "L_RRCRedirection_E2T" float(53),
  "L_RRCRedirection_E2T_CSFB" float(53),
  "L_RRCRedirection_E2T_Load" float(53),
  "L.RRCRedirection.E2T.PrepAtt" float(53),
  "L_RRCRedirection_E2W" float(53),
  "L_RRCRedirection_E2W_Coverage" float(53),
  "L_RRCRedirection_E2W_CSFB" float(53),
  "L_RRCRedirection_E2W_CSFB_TimeOut" float(53),
  "L_RRCRedirection_E2W_Distance" float(53),
  "L_RRCRedirection_E2W_Load" float(53),
  "L.RRCRedirection.E2W.PrepAtt" float(53),
  "L_RRCRedirection_E2W_RegainHPLMN" float(53),
  "L_RRCRedirection_E2W_Service" float(53),
  "L_RRCRedirection_E2W_Ulquality" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Outgoing_Inter-RAT_Handover_1
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover_1";
CREATE TABLE "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover_1" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_IRATHO_E2G_HOCancel_FlowConflict" float(53),
  "L_IRATHO_E2T_HOCancel_FlowConflict" float(53),
  "L.IRATHO.E2W.HighLoad.CSFB.PrepAttOut" float(53),
  "L_IRATHO_E2W_HOCancel_FlowConflict" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Outgoing_Intra-RAT_Handover
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover";
CREATE TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_HHO_BlindHO_ExecAttOut" float(53),
  "L_HHO_BlindHO_ExecSuccOut" float(53),
  "L_HHO_BlindHO_PrepAttOut" float(53),
  "L_HHO_BlindHO_Succ_ReEst2Src" float(53),
  "L_HHO_FailOut_HOCancel" float(53),
  "L_HHO_FailOut_HOCancel_FlowConflict" float(53),
  "L_HHO_HST_IntraFreq_ExecAttOut" float(53),
  "L_HHO_HST_IntraFreq_ExecSuccOut" float(53),
  "L_HHO_HST_IntraFreq_PrepAttOut" float(53),
  "L_HHO_IntereNB_InterFddTdd_ExecAttOut" float(53),
  "L_HHO_IntereNB_InterFddTdd_ExecAttOut_VoIP" float(53),
  "L_HHO_IntereNB_InterFddTdd_ExecSuccOut" float(53),
  "L_HHO_IntereNB_InterFddTdd_ExecSuccOut_VoIP" float(53),
  "L_HHO_IntereNB_InterFddTdd_PrepAttOut" float(53),
  "L_HHO_IntereNB_InterFddTdd_PrepAttOut_VoIP" float(53),
  "L_HHO_IntereNB_InterFddTdd_Succ_ReEst2Src" float(53),
  "L_HHO_IntereNB_InterFreq_ExecAttOut" float(53),
  "L_HHO_IntereNB_InterFreq_ExecAttOut_VoIP" float(53),
  "L_HHO_IntereNB_InterFreq_ExecSuccOut" float(53),
  "L_HHO_IntereNB_InterFreq_ExecSuccOut_VoIP" float(53),
  "L_HHO_IntereNB_InterFreq_PrepAttOut" float(53),
  "L_HHO_IntereNB_InterFreq_PrepAttOut_VoIP" float(53),
  "L_HHO_IntereNB_InterFreq_Succ_ReEst2Src" float(53),
  "L_HHO_IntereNB_IntraFreq_ExecAttOut" float(53),
  "L_HHO_IntereNB_IntraFreq_ExecAttOut_VoIP" float(53),
  "L_HHO_IntereNB_IntraFreq_ExecSuccOut" float(53),
  "L_HHO_IntereNB_IntraFreq_ExecSuccOut_VoIP" float(53),
  "L_HHO_IntereNB_IntraFreq_PrepAttOut" float(53),
  "L_HHO_IntereNB_IntraFreq_PrepAttOut_VoIP" float(53),
  "L_HHO_IntereNB_IntraFreq_Succ_ReEst2Src" float(53),
  "L_HHO_IntereNB_S1_TimeAvg" float(53),
  "L_HHO_IntereNB_X2_TimeAvg" float(53),
  "L_HHO_InterFddTdd_BlindHO_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_BlindHO_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_BlindHO_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_BlindHO_Succ_ReEst2Src" float(53),
  "L_HHO_InterFddTdd_Coverage_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_Coverage_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_Coverage_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_Distance_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_Distance_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_Distance_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_FailOut_HOCancel" float(53),
  "L_HHO_InterFddTdd_FailOut_HOCancel_FlowConflict" float(53),
  "L_HHO_InterFddTdd_FreqPri_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_FreqPri_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_FreqPri_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_IntereNB_S1_TimeAvg" float(53),
  "L_HHO_InterFddTdd_IntereNB_X2_TimeAvg" float(53),
  "L_HHO_InterFddTdd_Load_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_Load_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_Load_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_NoData_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_NoData_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_Prep_FailOut_HOCancel" float(53),
  "L_HHO_InterFddTdd_Prep_FailOut_MME" float(53),
  "L_HHO_InterFddTdd_Prep_FailOut_NoReply" float(53),
  "L_HHO_InterFddTdd_Prep_FailOut_PrepFailure" float(53),
  "L_HHO_InterFddTdd_RegainHPLMN_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_RegainHPLMN_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_RegainHPLMN_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_Service_AttFail_NoNRT" float(53),
  "L_HHO_InterFddTdd_Service_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_Service_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_Service_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_UeNumLoad_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_UeNumLoad_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_UeNumLoad_PrepAttOut" float(53),
  "L_HHO_InterFddTdd_ULquality_ExecAttOut" float(53),
  "L_HHO_InterFddTdd_ULquality_ExecSuccOut" float(53),
  "L_HHO_InterFddTdd_ULquality_PrepAttOut" float(53),
  "L_HHO_InterFreq_Coverage_ExecAttOut" float(53),
  "L_HHO_InterFreq_Coverage_ExecSuccOut" float(53),
  "L_HHO_InterFreq_Coverage_PrepAttOut" float(53),
  "L_HHO_InterFreq_Distance_ExecAttOut" float(53),
  "L_HHO_InterFreq_Distance_ExecSuccOut" float(53),
  "L_HHO_InterFreq_Distance_PrepAttOut" float(53),
  "L_HHO_InterFreq_FreqPri_ExecAttOut" float(53),
  "L_HHO_InterFreq_FreqPri_ExecSuccOut" float(53),
  "L_HHO_InterFreq_FreqPri_PrepAttOut" float(53),
  "L_HHO_InterFreq_Load_Dldata_ExecAttOut" float(53),
  "L_HHO_InterFreq_Load_Dldata_ExecSuccOut" float(53),
  "L_HHO_InterFreq_Load_Dldata_PrepAttOut" float(53),
  "L_HHO_InterFreq_Load_ExecAttOut" float(53),
  "L_HHO_InterFreq_Load_ExecSuccOut" float(53),
  "L_HHO_InterFreq_Load_PrepAttOut" float(53),
  "L_HHO_InterFreq_NoData_ExecAttOut" float(53),
  "L_HHO_InterFreq_NoData_ExecSuccOut" float(53),
  "L_HHO_InterFreq_RegainHPLMN_ExecAttOut" float(53),
  "L_HHO_InterFreq_RegainHPLMN_ExecSuccOut" float(53),
  "L_HHO_InterFreq_RegainHPLMN_PrepAttOut" float(53),
  "L_HHO_InterFreq_Service_ExecAttOut" float(53),
  "L_HHO_InterFreq_Service_ExecSuccOut" float(53),
  "L_HHO_InterFreq_Service_PrepAttOut" float(53),
  "L_HHO_InterFreq_UeNumLoad_ExecAttOut" float(53),
  "L_HHO_InterFreq_UeNumLoad_ExecSuccOut" float(53),
  "L_HHO_InterFreq_UeNumLoad_PrepAttOut" float(53),
  "L_HHO_InterFreq_ULquality_ExecAttOut" float(53),
  "L_HHO_InterFreq_ULquality_ExecSuccOut" float(53),
  "L_HHO_InterFreq_ULquality_PrepAttOut" float(53),
  "L_HHO_IntraeNB_InterFddTdd_ExecAttOut" float(53),
  "L_HHO_IntraeNB_InterFddTdd_ExecAttOut_VoIP" float(53),
  "L_HHO_IntraeNB_InterFddTdd_ExecSuccOut" float(53),
  "L_HHO_IntraeNB_InterFddTdd_ExecSuccOut_VoIP" float(53),
  "L_HHO_IntraeNB_InterFddTdd_PrepAttOut" float(53),
  "L_HHO_IntraeNB_InterFddTdd_PrepAttOut_VoIP" float(53),
  "L_HHO_IntraeNB_InterFddTdd_Succ_ReEst2Src" float(53),
  "L_HHO_IntraeNB_InterFreq_ExecAttOut" float(53),
  "L_HHO_IntraeNB_InterFreq_ExecAttOut_VoIP" float(53),
  "L_HHO_IntraeNB_InterFreq_ExecSuccOut" float(53),
  "L_HHO_IntraeNB_InterFreq_ExecSuccOut_VoIP" float(53),
  "L_HHO_IntraeNB_InterFreq_PrepAttOut" float(53),
  "L_HHO_IntraeNB_InterFreq_PrepAttOut_VoIP" float(53),
  "L_HHO_IntraeNB_InterFreq_Succ_ReEst2Src" float(53),
  "L_HHO_IntraeNB_IntraFreq_ExecAttOut" float(53),
  "L_HHO_IntraeNB_IntraFreq_ExecAttOut_VoIP" float(53),
  "L_HHO_IntraeNB_IntraFreq_ExecSuccOut" float(53),
  "L_HHO_IntraeNB_IntraFreq_ExecSuccOut_VoIP" float(53),
  "L_HHO_IntraeNB_IntraFreq_PrepAttOut" float(53),
  "L_HHO_IntraeNB_IntraFreq_PrepAttOut_VoIP" float(53),
  "L_HHO_IntraeNB_IntraFreq_Succ_ReEst2Src" float(53),
  "L_HHO_IntraFreq_NoData_ExecAttOut" float(53),
  "L_HHO_IntraFreq_NoData_ExecSuccOut" float(53),
  "L_HHO_IntraFreq_Prep_FailOut_HOCancel" float(53),
  "L_HHO_IntraFreq_Prep_FailOut_MME" float(53),
  "L_HHO_IntraFreq_Prep_FailOut_NoReply" float(53),
  "L_HHO_IntraFreq_Prep_FailOut_PrepFailure" float(53),
  "L_HHO_IntraFreq_Prep_FailOut_TargetIllegal" float(53),
  "L_HHO_Prep_FailOut_HOCancel" float(53),
  "L_HHO_Prep_FailOut_MME" float(53),
  "L_HHO_Prep_FailOut_NoReply" float(53),
  "L_HHO_Prep_FailOut_PrepFailure" float(53),
  "L_HHO_Prep_FailOut_TargetIllegal" float(53),
  "L_HHO_S1_BlindHO_MMEAbnormRsp" float(53),
  "L_HHO_S1_InterFddTdd_MMEAbnormRsp" float(53),
  "L.HHO.S1.InterFddTdd.MMEAbnormRsp.VoIP" float(53),
  "L_HHO_S1_InterFreq_MMEAbnormRsp" float(53),
  "L.HHO.S1.InterFreq.MMEAbnormRsp.VoIP" float(53),
  "L_HHO_S1_IntraFreq_MMEAbnormRsp" float(53),
  "L.HHO.S1.IntraFreq.MMEAbnormRsp.VoIP" float(53),
  "L.HHO.SpePciCell.ExecAttOut" float(53),
  "L.HHO.SpePciCell.ExecSuccOut" float(53),
  "L.HHO.SpePciCell.PrepAttOut" float(53),
  "L_HHO_SuperCombCell_IntereNB_ExecAttOut" float(53),
  "L_HHO_SuperCombCell_IntereNB_ExecSuccOut" float(53),
  "L_HHO_SuperCombCell_IntereNB_PrepAttOut" float(53),
  "L_HHO_SuperCombCell_IntraeNB_ExecSuccOut" float(53),
  "L_HHO_SuperCombCell_IntraeNB_PrepAttOut" float(53),
  "L_HHO_X2_InterFddTdd_Succ_ReEst2Src" float(53),
  "L_InterFddTddHO_NoNRT" float(53),
  "L_InterFreqHO_NoNRT" float(53),
  "L_IntraFreqHO_NoNRT" float(53),
  "L_RRCRedirection_InterFddTdd" float(53),
  "L_RRCRedirection_InterFddTdd_Coverage" float(53),
  "L_RRCRedirection_InterFddTdd_FreqPri" float(53),
  "L_RRCRedirection_InterFddTdd_Load" float(53),
  "L_RRCRedirection_InterFddTdd_RegainHPLMN" float(53),
  "L_RRCRedirection_InterFddTdd_Service" float(53),
  "L_RRCRedirection_InterFddTdd_Ulquality" float(53),
  "L_RRCRedirection_IntraLTE" float(53),
  "L_RRCRedirection_IntraLTE_Coverage" float(53),
  "L_RRCRedirection_IntraLTE_Load" float(53),
  "L_RRCRedirection_IntraLTE_Ulquality" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Outgoing_Intra-RAT_Handover_1
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_1";
CREATE TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_1" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_HHO_IntereNB_InterFddTdd_Succ_ReEst2SrcOther" float(53),
  "L_HHO_IntereNB_InterFreq_Succ_ReEst2SrcOther" float(53),
  "L_HHO_IntereNB_IntraFreq_Succ_ReEst2SrcOther" float(53),
  "L.HHO.InterFreq.ExecAttOut.MCPTT" float(53),
  "L.HHO.InterFreq.ExecSuccOut.MCPTT" float(53),
  "L.HHO.InterFreq.PrepAttOut.MCPTT" float(53),
  "L_HHO_IntraCell_ExecAttOut" float(53),
  "L_HHO_IntraCell_ExecSuccOut" float(53),
  "L.HHO.IntraCell.NormCov2CovEnh.ExecAttOut" float(53),
  "L.HHO.IntraCell.NormCov2CovEnh.ExecSuccOut" float(53),
  "L_HHO_IntraeNB_InterFddTdd_Succ_ReEst2SrcOther" float(53),
  "L_HHO_IntraeNB_InterFreq_Succ_ReEst2SrcOther" float(53),
  "L_HHO_IntraeNB_IntraFreq_Succ_ReEst2SrcOther" float(53),
  "L.HHO.IntraFreq.ExecAttOut.MCPTT" float(53),
  "L.HHO.IntraFreq.ExecSuccOut.MCPTT" float(53),
  "L.HHO.IntraFreq.PrepAttOut.MCPTT" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX";
CREATE TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_HHO_DRX_IntereNB_InterFddTdd_ExecAttOut" float(53),
  "L_HHO_DRX_IntereNB_InterFddTdd_ExecSuccOut" float(53),
  "L_HHO_DRX_IntereNB_InterFreq_ExecAttOut" float(53),
  "L_HHO_DRX_IntereNB_InterFreq_ExecSuccOut" float(53),
  "L_HHO_DRX_IntereNB_IntraFreq_ExecAttOut" float(53),
  "L_HHO_DRX_IntereNB_IntraFreq_ExecSuccOut" float(53),
  "L_HHO_DRX_IntraeNB_InterFddTdd_ExecAttOut" float(53),
  "L_HHO_DRX_IntraeNB_InterFddTdd_ExecSuccOut" float(53),
  "L_HHO_DRX_IntraeNB_InterFreq_ExecAttOut" float(53),
  "L_HHO_DRX_IntraeNB_InterFreq_ExecSuccOut" float(53),
  "L_HHO_DRX_IntraeNB_IntraFreq_ExecAttOut" float(53),
  "L_HHO_DRX_IntraeNB_IntraFreq_ExecSuccOut" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2";
CREATE TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_HHO_InterFddTdd_X2_FailOut_HOCancel" float(53),
  "L_HHO_X2_Exec_FailOut_MMERel" float(53),
  "L_HHO_X2_FailOut_HOCancel" float(53),
  "L_HHO_X2_InterFddTdd_ExecAttOut" float(53),
  "L_HHO_X2_InterFddTdd_ExecSuccOut" float(53),
  "L_HHO_X2_InterFddTdd_PrepAttOut" float(53),
  "L_HHO_X2_InterFddTdd_Prep_FailOut_PrepFailure_UnknownMmeCode" float(53),
  "L_HHO_X2_InterFreq_ExecAttOut" float(53),
  "L_HHO_X2_InterFreq_ExecSuccOut" float(53),
  "L_HHO_X2_InterFreq_PrepAttOut" float(53),
  "L_HHO_X2_InterFreq_Succ_ReEst2Src" float(53),
  "L_HHO_X2_IntraFreq_ExecAttOut" float(53),
  "L_HHO_X2_IntraFreq_ExecSuccOut" float(53),
  "L_HHO_X2_IntraFreq_Exec_FailOut_MMERel" float(53),
  "L_HHO_X2_IntraFreq_PrepAttOut" float(53),
  "L_HHO_X2_IntraFreq_Prep_FailOut_HOCancel" float(53),
  "L_HHO_X2_IntraFreq_Prep_FailOut_MME" float(53),
  "L_HHO_X2_IntraFreq_Prep_FailOut_NoReply" float(53),
  "L_HHO_X2_IntraFreq_Prep_FailOut_PrepFailure" float(53),
  "L_HHO_X2_IntraFreq_Prep_FailOut_TargetIllegal" float(53),
  "L_HHO_X2_IntraFreq_Succ_ReEst2Src" float(53),
  "L_HHO_X2_Prep_FailOut_HOCancel" float(53),
  "L_HHO_X2_Prep_FailOut_MME" float(53),
  "L_HHO_X2_Prep_FailOut_NoReply" float(53),
  "L_HHO_X2_Prep_FailOut_PrepFailure" float(53),
  "L_HHO_X2_Prep_FailOut_PrepFailure_UnknownMmeCode" float(53),
  "L_HHO_X2_Prep_FailOut_TargetIllegal" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Packet
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Packet";
CREATE TABLE "Hourly"."BTS3900@Cell@Packet" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_1" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_2" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_3" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_4" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_5" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_6" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_7" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_8" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Num_QCI_9" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_1" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_2" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_3" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_4" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_5" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_6" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_7" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_8" float(53),
  "L_Traffic_DL_EmptyBuf_PDCPLat_Time_QCI_9" float(53),
  "L_Traffic_DL_PktDelay_Num" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_1" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_2" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_3" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_4" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_5" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_6" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_7" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_8" float(53),
  "L_Traffic_DL_PktDelay_Num_QCI_9" float(53),
  "L_Traffic_DL_PktDelay_Time" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_1" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_2" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_3" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_4" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_5" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_6" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_7" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_8" float(53),
  "L_Traffic_DL_PktDelay_Time_QCI_9" float(53),
  "L_Traffic_DL_PktUuLoss_Loss" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_1" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_2" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_3" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_4" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_5" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_6" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_65" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_66" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_69" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_7" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_70" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_8" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_9" float(53),
  "L_Traffic_DL_PktUuLoss_Loss_QCI_PTT" float(53),
  "L_Traffic_DL_PktUuLoss_Tot" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_1" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_2" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_3" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_4" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_5" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_6" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_65" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_66" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_69" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_7" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_70" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_8" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_9" float(53),
  "L_Traffic_DL_PktUuLoss_Tot_QCI_PTT" float(53),
  "L_Traffic_UL_PktLoss_Loss" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_1" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_2" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_3" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_4" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_5" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_6" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_65" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_66" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_69" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_7" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_70" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_8" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_9" float(53),
  "L_Traffic_UL_PktLoss_Loss_QCI_PTT" float(53),
  "L_Traffic_UL_PktLoss_Tot" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_1" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_2" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_3" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_4" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_5" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_6" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_65" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_66" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_69" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_7" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_70" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_8" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_9" float(53),
  "L_Traffic_UL_PktLoss_Tot_QCI_PTT" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Packet_Size_Distribution
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Packet_Size_Distribution";
CREATE TABLE "Hourly"."BTS3900@Cell@Packet_Size_Distribution" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Traffic_DL_PktSize_QCI1_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI1_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI2_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI3_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI4_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI5_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI6_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI7_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI8_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_QCI9_Samp_Index9" float(53),
  "L_Traffic_DL_PktSize_Samp_Index0" float(53),
  "L_Traffic_DL_PktSize_Samp_Index1" float(53),
  "L_Traffic_DL_PktSize_Samp_Index2" float(53),
  "L_Traffic_DL_PktSize_Samp_Index3" float(53),
  "L_Traffic_DL_PktSize_Samp_Index4" float(53),
  "L_Traffic_DL_PktSize_Samp_Index5" float(53),
  "L_Traffic_DL_PktSize_Samp_Index6" float(53),
  "L_Traffic_DL_PktSize_Samp_Index7" float(53),
  "L_Traffic_DL_PktSize_Samp_Index8" float(53),
  "L_Traffic_DL_PktSize_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI1_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI2_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI3_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI4_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI5_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI6_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI7_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI8_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_QCI9_Samp_Index9" float(53),
  "L_Traffic_UL_PktSize_Samp_Index0" float(53),
  "L_Traffic_UL_PktSize_Samp_Index1" float(53),
  "L_Traffic_UL_PktSize_Samp_Index2" float(53),
  "L_Traffic_UL_PktSize_Samp_Index3" float(53),
  "L_Traffic_UL_PktSize_Samp_Index4" float(53),
  "L_Traffic_UL_PktSize_Samp_Index5" float(53),
  "L_Traffic_UL_PktSize_Samp_Index6" float(53),
  "L_Traffic_UL_PktSize_Samp_Index7" float(53),
  "L_Traffic_UL_PktSize_Samp_Index8" float(53),
  "L_Traffic_UL_PktSize_Samp_Index9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Paging
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Paging";
CREATE TABLE "Hourly"."BTS3900@Cell@Paging" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Paging_Dis_Num" float(53),
  "L_Paging_Dis_PchCong" float(53),
  "L_Paging_S1_Rx" float(53),
  "L_Paging_S1_Rx_CS" float(53),
  "L.Paging.S1.Rx.eDRX" float(53),
  "L_Paging_UU_Att" float(53),
  "L_Paging_UU_Num" float(53),
  "L_Paging_UU_SIUpdate" float(53),
  "L_Paging_UU_Succ" float(53),
  "L_Paging_UU_Succ_CSFB" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@PDCP
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@PDCP";
CREATE TABLE "Hourly"."BTS3900@Cell@PDCP" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_PDCP_Tx_Disc_Trf_SDU" float(53),
  "L_PDCP_Tx_Disc_Trf_SDU_QCI_9" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_1" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_2" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_3" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_4" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_5" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_6" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_65" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_66" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_69" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_7" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_70" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_8" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_9" float(53),
  "L_PDCP_Tx_TotRev_Trf_SDU_QCI_PTT" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@PRB
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@PRB";
CREATE TABLE "Hourly"."BTS3900@Cell@PRB" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Beam0ISch_PRB_Avg" float(53),
  "L_Beam1ISch_PRB_Avg" float(53),
  "L_ChMeas_CCE_Avail" float(53),
  "L.ChMeas.CCE.Avail.Max" float(53),
  "L_ChMeas_CCE_CommUsed" float(53),
  "L_ChMeas_CCE_DLUsed" float(53),
  "L_ChMeas_CCE_DL_AllocFail" float(53),
  "L.ChMeas.CCE.MTT.ULAvailPower.Equivalent" float(53),
  "L.ChMeas.CCE.MTT.ULUsed.Equivalent" float(53),
  "L.ChMeas.CCE.ULAvailPower.Equivalent" float(53),
  "L_ChMeas_CCE_ULUsed" float(53),
  "L_ChMeas_CCE_ULUsed_TA" float(53),
  "L_ChMeas_CCE_UL_AllocFail" float(53),
  "L.ChMeas.CCE.UL.Avail.Max" float(53),
  "L.ChMeas.HighOrderULCoMP.PRB.Avg" float(53),
  "L_ChMeas_PDCCH_AggLvl1Num" float(53),
  "L_ChMeas_PDCCH_AggLvl2Num" float(53),
  "L_ChMeas_PDCCH_AggLvl4Num" float(53),
  "L_ChMeas_PDCCH_AggLvl8Num" float(53),
  "L_ChMeas_PDCCH_SymNum_1" float(53),
  "L_ChMeas_PDCCH_SymNum_2" float(53),
  "L_ChMeas_PDCCH_SymNum_3" float(53),
  "L_ChMeas_PDCCH_SymNum_4" float(53),
  "L_ChMeas_PRB_DL_AICIC_CEB_Avg" float(53),
  "L_ChMeas_PRB_DL_Avail" float(53),
  "L.ChMeas.PRB.DL.CEU.Used.Avg" float(53),
  "L_ChMeas_PRB_DL_DrbUsed_Avg" float(53),
  "L_ChMeas_PRB_DL_FSS_Avg" float(53),
  "L.ChMeas.PRB.DL.FullRb.Tti.Num" float(53),
  "L_ChMeas_PRB_DL_PagingUsed_Avg" float(53),
  "L_ChMeas_PRB_DL_PCell_Used_Avg" float(53),
  "L_ChMeas_PRB_DL_SCell_Used_Avg" float(53),
  "L_ChMeas_PRB_DL_SrbUsed_Avg" float(53),
  "L_ChMeas_PRB_DL_Used_Avg" float(53),
  "L.ChMeas.PRB.MTTDL.Used.Avg" float(53),
  "L.ChMeas.PRB.MTTUL.PUSCH.Avail" float(53),
  "L.ChMeas.PRB.MTTUL.Used.Avg" float(53),
  "L.ChMeas.PRB.MTT.PUSCH.Avg" float(53),
  "L_ChMeas_PRB_PDSCH_Avg_BorderUE" float(53),
  "L.ChMeas.PRB.PDSCH.Avg.BorderUE.JointTransmit" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index0" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index1" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index2" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index3" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index4" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index5" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index6" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index7" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index8" float(53),
  "L_ChMeas_PRB_PDSCH_Util_Samp_Index9" float(53),
  "L_ChMeas_PRB_PUCCH_Avg" float(53),
  "L_ChMeas_PRB_PUSCH_Avg" float(53),
  "L_ChMeas_PRB_PUSCH_Avg_BorderUE" float(53),
  "L.ChMeas.PRB.PUSCH.Avg.BorderUE.JointReception" float(53),
  "L.ChMeas.PRB.PUSCH.UpPTS" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index0" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index1" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index2" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index3" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index4" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index5" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index6" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index7" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index8" float(53),
  "L_ChMeas_PRB_PUSCH_Util_Samp_Index9" float(53),
  "L_ChMeas_PRB_UL_Avail" float(53),
  "L.ChMeas.PRB.UL.CEU.Used.Avg" float(53),
  "L_ChMeas_PRB_UL_DrbUsed_Avg" float(53),
  "L_ChMeas_PRB_UL_FSS_Avg" float(53),
  "L.ChMeas.PRB.UL.FullRb.Tti.Num" float(53),
  "L_ChMeas_PRB_UL_PCell_Used_Avg" float(53),
  "L_ChMeas_PRB_UL_PreSch_Used_Avg" float(53),
  "L_ChMeas_PRB_UL_SCell_Used_Avg" float(53),
  "L_ChMeas_PRB_UL_TaSch_Used_Avg" float(53),
  "L_ChMeas_PRB_UL_Used_Avg" float(53),
  "L.ChMeas.ULMIMO.PRB.CL.Rank1" float(53),
  "L.ChMeas.ULMIMO.PRB.CL.Rank2" float(53),
  "L_ULCoMP_HetnetCoMP_RB" float(53),
  "L_ULCoMP_RB" float(53),
  "L.ULIC.RB" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@RA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@RA";
CREATE TABLE "Hourly"."BTS3900@Cell@RA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_RA_Dedicate_Att" float(53),
  "L_RA_Dedicate_HO_Att" float(53),
  "L_RA_Dedicate_HO_Initial" float(53),
  "L_RA_Dedicate_HO_Initial_Resp" float(53),
  "L_RA_Dedicate_HO_Msg3Rcv" float(53),
  "L_RA_Dedicate_HO_Resp" float(53),
  "L_RA_Dedicate_Initial" float(53),
  "L_RA_Dedicate_Initial_Resp" float(53),
  "L_RA_Dedicate_Msg3Rcv" float(53),
  "L_RA_Dedicate_PreambleAssign_Num" float(53),
  "L_RA_Dedicate_PreambleReq_Num" float(53),
  "L_RA_Dedicate_PreambleReq_Num_Max" float(53),
  "L_RA_Dedicate_Resp" float(53),
  "L_RA_GrpAandB_Att_Max" float(53),
  "L_RA_GrpA_Att" float(53),
  "L_RA_GrpA_ContResolution" float(53),
  "L_RA_GrpA_ContResolution_PDCCH" float(53),
  "L_RA_GrpA_Initial" float(53),
  "L_RA_GrpA_Initial_Resp" float(53),
  "L_RA_GrpA_Resp" float(53),
  "L_RA_GrpB_Att" float(53),
  "L_RA_GrpB_ContResolution" float(53),
  "L_RA_GrpB_ContResolution_PDCCH" float(53),
  "L_RA_GrpB_Disc_ByTA_Num" float(53),
  "L_RA_GrpB_Initial" float(53),
  "L_RA_GrpB_Initial_Resp" float(53),
  "L_RA_GrpB_Resp" float(53),
  "L_RA_TA_UE_Index0" float(53),
  "L_RA_TA_UE_Index1" float(53),
  "L_RA_TA_UE_Index10" float(53),
  "L_RA_TA_UE_Index11" float(53),
  "L_RA_TA_UE_Index2" float(53),
  "L_RA_TA_UE_Index3" float(53),
  "L_RA_TA_UE_Index4" float(53),
  "L_RA_TA_UE_Index5" float(53),
  "L_RA_TA_UE_Index6" float(53),
  "L_RA_TA_UE_Index7" float(53),
  "L_RA_TA_UE_Index8" float(53),
  "L_RA_TA_UE_Index9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Resource_Optimization
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Resource_Optimization";
CREATE TABLE "Hourly"."BTS3900@Cell@Resource_Optimization" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_ResOpt_CCELimit_PRB_DL" float(53),
  "L_ResOpt_CCELimit_PRB_UL" float(53),
  "L_ResOpt_SUNPTLimit_CCE" float(53),
  "L_ResOpt_SUNPTLimit_PRB_DL" float(53),
  "L_ResOpt_SUNPTLimit_PRB_UL" float(53),
  "L_ResOpt_SUNPTLimit_Ratio_DL" float(53),
  "L_ResOpt_SUNPTLimit_Ratio_UL" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@RLC
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@RLC";
CREATE TABLE "Hourly"."BTS3900@Cell@RLC" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Traffic_DL_AM_Retrans_bits" float(53),
  "L_Traffic_DL_AM_Retrans_SpecificSRB_TxPackets" float(53),
  "L_Traffic_DL_AM_Retrans_TxPackets" float(53),
  "L_Traffic_DL_AM_TxDropPackets" float(53),
  "L_Traffic_DL_AM_TxPackets" float(53),
  "L_Traffic_UL_AM_Retrans_bits" float(53),
  "L_Traffic_UL_AM_Retrans_RxPackets" float(53),
  "L_Traffic_UL_AM_RxPackets" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@RRC_Reestablishment
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@RRC_Reestablishment";
CREATE TABLE "Hourly"."BTS3900@Cell@RRC_Reestablishment" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_RRC_NoCntxReEst_Att" float(53),
  "L_RRC_NoCntxReEst_HoFail_Att" float(53),
  "L_RRC_NoCntxReEst_HoFail_Succ" float(53),
  "L_RRC_NoCntxReEst_ReconfFail_Att" float(53),
  "L_RRC_NoCntxReEst_ReconfFail_Succ" float(53),
  "L_RRC_NoCntxReEst_Succ" float(53),
  "L_RRC_ReEst_Att" float(53),
  "L.RRC.ReEst.Att.Act" float(53),
  "L.RRC.ReEst.Att.SpecialUE" float(53),
  "L_RRC_ReEst_HoFail_Att" float(53),
  "L_RRC_ReEst_HoFail_Succ" float(53),
  "L_RRC_ReEst_NonSrccell_Att" float(53),
  "L_RRC_ReEst_NonSrccell_Succ" float(53),
  "L_RRC_ReEst_ReconfFail_Att" float(53),
  "L_RRC_ReEst_ReconfFail_Succ" float(53),
  "L_RRC_ReEst_Succ" float(53),
  "L.RRC.ReEst.Succ.Act" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@RRC_Reestablishment_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@RRC_Reestablishment_Failure";
CREATE TABLE "Hourly"."BTS3900@Cell@RRC_Reestablishment_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_RRC_NoCntxReEstFail_NoReply" float(53),
  "L_RRC_NoCntxReEstFail_Rej" float(53),
  "L_RRC_NoCntxReEstFail_ResFail" float(53),
  "L_RRC_ReEstFail_NoCntx" float(53),
  "L_RRC_ReEstFail_NoCntx_PreProcFail" float(53),
  "L_RRC_ReEstFail_NoReply" float(53),
  "L_RRC_ReEstFail_Rej" float(53),
  "L_RRC_ReEstFail_ResFail" float(53),
  "L_RRC_ReEst_HoFail_Rej" float(53),
  "L_RRC_ReEst_ReconfFail_Rej" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@RRC_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@RRC_Setup";
CREATE TABLE "Hourly"."BTS3900@Cell@RRC_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_RRC_ConnReq_Att" float(53),
  "L_RRC_ConnReq_Att_DelayTol" float(53),
  "L_RRC_ConnReq_Att_Emc" float(53),
  "L_RRC_ConnReq_Att_HighPri" float(53),
  "L_RRC_ConnReq_Att_MoData" float(53),
  "L_RRC_ConnReq_Att_MoSig" float(53),
  "L.RRC.ConnReq.Att.MoVoiceCall" float(53),
  "L_RRC_ConnReq_Att_Mt" float(53),
  "L_RRC_ConnReq_Max" float(53),
  "L_RRC_ConnReq_Msg" float(53),
  "L_RRC_ConnReq_Msg_DelayTol" float(53),
  "L_RRC_ConnReq_Msg_Emc" float(53),
  "L_RRC_ConnReq_Msg_HighPri" float(53),
  "L_RRC_ConnReq_Msg_MoData" float(53),
  "L_RRC_ConnReq_Msg_MoSig" float(53),
  "L_RRC_ConnReq_Msg_Mt" float(53),
  "L_RRC_ConnReq_Succ" float(53),
  "L_RRC_ConnReq_Succ_DelayTol" float(53),
  "L_RRC_ConnReq_Succ_Emc" float(53),
  "L_RRC_ConnReq_Succ_HighPri" float(53),
  "L_RRC_ConnReq_Succ_MoData" float(53),
  "L_RRC_ConnReq_Succ_MoSig" float(53),
  "L.RRC.ConnReq.Succ.MoVoiceCall" float(53),
  "L_RRC_ConnReq_Succ_Mt" float(53),
  "L_RRC_ConnSetup" float(53),
  "L_RRC_ConnSetup_TimeAvg" float(53),
  "L_RRC_ConnSetup_TimeMax" float(53),
  "L_RRC_StateTrans_Syn2Unsyn" float(53),
  "L_RRC_StateTrans_Unsyn2Syn" float(53),
  "L_RRC_StateTrans_Unsyn2Syn_Succ" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@RRC_Setup_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@RRC_Setup_Failure";
CREATE TABLE "Hourly"."BTS3900@Cell@RRC_Setup_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_RRC_ConnReq_Msg_disc_FlowCtrl" float(53),
  "L_RRC_SetupFail_NoReply" float(53),
  "L_RRC_SetupFail_Rej" float(53),
  "L_RRC_SetupFail_Rej_FlowCtrl" float(53),
  "L_RRC_SetupFail_Rej_ForbidAc" float(53),
  "L_RRC_SetupFail_Rej_MMEOverload" float(53),
  "L_RRC_SetupFail_Rej_Other" float(53),
  "L_RRC_SetupFail_ResFail" float(53),
  "L_RRC_SetupFail_ResFail_PUCCH" float(53),
  "L_RRC_SetupFail_ResFail_SRS" float(53),
  "L_RRC_SetupFail_ResFail_UserSpec" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Security_Mode
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Security_Mode";
CREATE TABLE "Hourly"."BTS3900@Cell@Security_Mode" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_SecurMode_Cmd" float(53),
  "L_SecurMode_Cmp" float(53),
  "L_SecurMode_Fail" float(53),
  "L_SecurMode_S1_Rx" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Throughput_and_Data_Volume
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume";
CREATE TABLE "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_E-RAB_SessionTime_HighPrecision" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI1" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI2" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI3" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI4" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI5" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI6" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI7" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI8" float(53),
  "L_E-RAB_SessionTime_HighPrecision_QCI9" float(53),
  "L.E-RAB.SessionTime.QCI1" float(53),
  "L.E-RAB.SessionTime.QCI2" float(53),
  "L.E-RAB.SessionTime.QCI3" float(53),
  "L.E-RAB.SessionTime.QCI4" float(53),
  "L.E-RAB.SessionTime.QCI5" float(53),
  "L.E-RAB.SessionTime.QCI6" float(53),
  "L.E-RAB.SessionTime.QCI7" float(53),
  "L.E-RAB.SessionTime.QCI8" float(53),
  "L.E-RAB.SessionTime.QCI9" float(53),
  "L.E-RAB.SessionTime.UE" float(53),
  "L_E-RAB_SessionTime_UE_HighPrecision" float(53),
  "L_Thrp_bits_DL" float(53),
  "L_Thrp_bits_DL_CAUser" float(53),
  "L.Thrp.bits.DL.CEU" float(53),
  "L.Thrp.bits.DL.DLHighAMBR" float(53),
  "L_Thrp_bits_DL_DLISch" float(53),
  "L.Thrp.bits.DL.Hst" float(53),
  "L_Thrp_bits_DL_LastTTI" float(53),
  "L.Thrp.bits.DL.LastTTI.DLHighAMBR" float(53),
  "L.Thrp.bits.DL.LastTTI.Hst" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_1" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_2" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_3" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_4" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_5" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_6" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_7" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_8" float(53),
  "L_Thrp_bits_DL_LastTTI_QCI_9" float(53),
  "L_Thrp_bits_DL_Max" float(53),
  "L_Thrp_bits_DL_QCI_1" float(53),
  "L_Thrp_bits_DL_QCI_1_Max" float(53),
  "L_Thrp_bits_DL_QCI_2" float(53),
  "L_Thrp_bits_DL_QCI_2_Max" float(53),
  "L_Thrp_bits_DL_QCI_3" float(53),
  "L_Thrp_bits_DL_QCI_3_Max" float(53),
  "L_Thrp_bits_DL_QCI_4" float(53),
  "L_Thrp_bits_DL_QCI_4_Max" float(53),
  "L_Thrp_bits_DL_QCI_5" float(53),
  "L_Thrp_bits_DL_QCI_5_Max" float(53),
  "L_Thrp_bits_DL_QCI_6" float(53),
  "L_Thrp_bits_DL_QCI_65" float(53),
  "L_Thrp_bits_DL_QCI_66" float(53),
  "L_Thrp_bits_DL_QCI_69" float(53),
  "L_Thrp_bits_DL_QCI_6_Max" float(53),
  "L_Thrp_bits_DL_QCI_7" float(53),
  "L_Thrp_bits_DL_QCI_70" float(53),
  "L_Thrp_bits_DL_QCI_7_Max" float(53),
  "L_Thrp_bits_DL_QCI_8" float(53),
  "L_Thrp_bits_DL_QCI_8_Max" float(53),
  "L_Thrp_bits_DL_QCI_9" float(53),
  "L_Thrp_bits_DL_QCI_9_Max" float(53),
  "L_Thrp_bits_DL_SRB" float(53),
  "L_Thrp_bits_UE_UL_LastTTI" float(53),
  "L.Thrp.bits.UE.UL.LastTTI.Hst" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt" float(53),
  "L_Thrp_bits_UE_UL_SpecificTTI" float(53),
  "L_Thrp_bits_UL" float(53),
  "L.Thrp.bits.UL.CEU" float(53),
  "L.Thrp.bits.UL.Hst" float(53),
  "L_Thrp_bits_UL_Max" float(53),
  "L_Thrp_bits_UL_QCI_1" float(53),
  "L_Thrp_bits_UL_QCI_1_Max" float(53),
  "L_Thrp_bits_UL_QCI_2" float(53),
  "L_Thrp_bits_UL_QCI_2_Max" float(53),
  "L_Thrp_bits_UL_QCI_3" float(53),
  "L_Thrp_bits_UL_QCI_3_Max" float(53),
  "L_Thrp_bits_UL_QCI_4" float(53),
  "L_Thrp_bits_UL_QCI_4_Max" float(53),
  "L_Thrp_bits_UL_QCI_5" float(53),
  "L_Thrp_bits_UL_QCI_5_Max" float(53),
  "L_Thrp_bits_UL_QCI_6" float(53),
  "L_Thrp_bits_UL_QCI_65" float(53),
  "L_Thrp_bits_UL_QCI_66" float(53),
  "L_Thrp_bits_UL_QCI_69" float(53),
  "L_Thrp_bits_UL_QCI_6_Max" float(53),
  "L_Thrp_bits_UL_QCI_7" float(53),
  "L_Thrp_bits_UL_QCI_70" float(53),
  "L_Thrp_bits_UL_QCI_7_Max" float(53),
  "L_Thrp_bits_UL_QCI_8" float(53),
  "L_Thrp_bits_UL_QCI_8_Max" float(53),
  "L_Thrp_bits_UL_QCI_9" float(53),
  "L_Thrp_bits_UL_QCI_9_Max" float(53),
  "L_Thrp_bits_UL_SRB" float(53),
  "L_Thrp_bits_UL_ULISch" float(53),
  "L_Thrp_BitRate_DL_SRB" float(53),
  "L_Thrp_BitRate_UL_SRB" float(53),
  "L.Thrp.Time.Cell.DL" float(53),
  "L_Thrp_Time_Cell_DL_HighPrecision" float(53),
  "L.Thrp.Time.Cell.MTT.DL" float(53),
  "L.Thrp.Time.Cell.MTT.UL" float(53),
  "L.Thrp.Time.Cell.UL" float(53),
  "L_Thrp_Time_Cell_UL_HighPrecision" float(53),
  "L_Thrp_Time_DL" float(53),
  "L_Thrp_Time_DL_BorderUE" float(53),
  "L.Thrp.Time.DL.BorderUE.JointTransmit" float(53),
  "L_Thrp_Time_DL_CAUser" float(53),
  "L.Thrp.Time.DL.CEU" float(53),
  "L_Thrp_Time_DL_QCI_1" float(53),
  "L_Thrp_Time_DL_QCI_2" float(53),
  "L_Thrp_Time_DL_QCI_3" float(53),
  "L_Thrp_Time_DL_QCI_4" float(53),
  "L_Thrp_Time_DL_QCI_5" float(53),
  "L_Thrp_Time_DL_QCI_6" float(53),
  "L_Thrp_Time_DL_QCI_65" float(53),
  "L_Thrp_Time_DL_QCI_66" float(53),
  "L_Thrp_Time_DL_QCI_69" float(53),
  "L_Thrp_Time_DL_QCI_7" float(53),
  "L_Thrp_Time_DL_QCI_70" float(53),
  "L_Thrp_Time_DL_QCI_8" float(53),
  "L_Thrp_Time_DL_QCI_9" float(53),
  "L_Thrp_Time_DL_RmvLastTTI" float(53),
  "L.Thrp.Time.DL.RmvLastTTI.DLHighAMBR" float(53),
  "L.Thrp.Time.DL.RmvLastTTI.Hst" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_1" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_2" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_3" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_4" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_5" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_6" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_7" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_8" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_QCI_9" float(53),
  "L_Thrp_Time_UE_UL_RmvLastTTI" float(53),
  "L.Thrp.Time.UE.UL.RmvLastTTI.Hst" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt" float(53),
  "L_Thrp_Time_UE_UL_RmvSpecificTTI" float(53),
  "L_Thrp_Time_UL" float(53),
  "L_Thrp_Time_UL_BorderUE" float(53),
  "L.Thrp.Time.UL.BorderUE.JointReception" float(53),
  "L.Thrp.Time.UL.CEU" float(53),
  "L_Thrp_Time_UL_QCI_1" float(53),
  "L_Thrp_Time_UL_QCI_2" float(53),
  "L_Thrp_Time_UL_QCI_3" float(53),
  "L_Thrp_Time_UL_QCI_4" float(53),
  "L_Thrp_Time_UL_QCI_5" float(53),
  "L_Thrp_Time_UL_QCI_6" float(53),
  "L_Thrp_Time_UL_QCI_65" float(53),
  "L_Thrp_Time_UL_QCI_66" float(53),
  "L_Thrp_Time_UL_QCI_69" float(53),
  "L_Thrp_Time_UL_QCI_7" float(53),
  "L_Thrp_Time_UL_QCI_70" float(53),
  "L_Thrp_Time_UL_QCI_8" float(53),
  "L_Thrp_Time_UL_QCI_9" float(53),
  "L.Thrp.TransferTime.DL.RmvLastTTI" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Throughput_and_Data_Volume_1
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_1";
CREATE TABLE "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_1" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Thrp_bits_DL_BorderUE" float(53),
  "L_Thrp_bits_DL_LastTTI_BorderUE" float(53),
  "L_Thrp_bits_DL_PDCP_Discard" float(53),
  "L_Thrp_bits_DL_PDCP_PDU" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_1" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_2" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_3" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_4" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_5" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_6" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_7" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_8" float(53),
  "L_Thrp_bits_DL_PDCP_PDU_QCI_9" float(53),
  "L_Thrp_bits_DL_PDCP_Send" float(53),
  "L_Thrp_bits_DL_Phy" float(53),
  "L_Thrp_bits_DL_Phy_Max" float(53),
  "L_Thrp_bits_DL_RLC_Send" float(53),
  "L.Thrp.bits.DL.TrafficSizeBased" float(53),
  "L_Thrp_bits_UE_UL_Experienced" float(53),
  "L_Thrp_bits_UL_BorderUE" float(53),
  "L_Thrp_bits_UL_PDCP_Discard" float(53),
  "L_Thrp_bits_UL_PDCP_SDU" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_1" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_2" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_3" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_4" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_5" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_6" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_7" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_8" float(53),
  "L_Thrp_bits_UL_PDCP_SDU_QCI_9" float(53),
  "L_Thrp_bits_UL_PDCP_Send" float(53),
  "L_Thrp_bits_UL_Phy" float(53),
  "L_Thrp_bits_UL_Phy_Max" float(53),
  "L_Thrp_bits_UL_RLC_Send" float(53),
  "L_Thrp_bits_UL_SmallPkt_BorderUE" float(53),
  "L_Thrp_Time_Active_Cell_DL" float(53),
  "L_Thrp_Time_Active_Cell_UL" float(53),
  "L_Thrp_Time_DL_RmvLastTTI_BorderUE" float(53),
  "L.Thrp.Time.DL.TrafficSizeBased" float(53),
  "L_Thrp_Time_UE_UL_Experienced" float(53),
  "L_Thrp_Time_UL_RmvSmallPkt_BorderUE" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range";
CREATE TABLE "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Thrp_bits_UE_UL_PL0" float(53),
  "L_Thrp_bits_UE_UL_PL1" float(53),
  "L_Thrp_bits_UE_UL_PL10" float(53),
  "L_Thrp_bits_UE_UL_PL2" float(53),
  "L_Thrp_bits_UE_UL_PL3" float(53),
  "L_Thrp_bits_UE_UL_PL4" float(53),
  "L_Thrp_bits_UE_UL_PL5" float(53),
  "L_Thrp_bits_UE_UL_PL6" float(53),
  "L_Thrp_bits_UE_UL_PL7" float(53),
  "L_Thrp_bits_UE_UL_PL8" float(53),
  "L_Thrp_bits_UE_UL_PL9" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL0" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL1" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL10" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL2" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL3" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL4" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL5" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL6" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL7" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL8" float(53),
  "L_Thrp_bits_UE_UL_SmallPkt_PL9" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL0" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL1" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL10" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL2" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL3" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL4" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL5" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL6" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL7" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL8" float(53),
  "L_Thrp_Time_UE_UL_RmvSmallPkt_PL9" float(53),
  "L_Traffic_User_PL0" float(53),
  "L_Traffic_User_PL1" float(53),
  "L_Traffic_User_PL10" float(53),
  "L_Traffic_User_PL2" float(53),
  "L_Traffic_User_PL3" float(53),
  "L_Traffic_User_PL4" float(53),
  "L_Traffic_User_PL5" float(53),
  "L_Traffic_User_PL6" float(53),
  "L_Traffic_User_PL7" float(53),
  "L_Traffic_User_PL8" float(53),
  "L_Traffic_User_PL9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@Throughput_Distribution
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@Throughput_Distribution";
CREATE TABLE "Hourly"."BTS3900@Cell@Throughput_Distribution" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Thrp_BitRate_DL_UserExp_Bad_Num" float(53),
  "L.Thrp.BitRate.DL.UserExp.Good.Num" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI1_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI2_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI3_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI4_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI5_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI6_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI7_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI8_Samp_Index9" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_QCI9_Samp_Index9" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index0" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index1" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index2" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index3" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index4" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index5" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index6" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index7" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index8" float(53),
  "L.Thrp.DL.BitRate.Samp.CaUe.Index9" float(53),
  "L_Thrp_DL_BitRate_Samp_Index0" float(53),
  "L_Thrp_DL_BitRate_Samp_Index1" float(53),
  "L_Thrp_DL_BitRate_Samp_Index2" float(53),
  "L_Thrp_DL_BitRate_Samp_Index3" float(53),
  "L_Thrp_DL_BitRate_Samp_Index4" float(53),
  "L_Thrp_DL_BitRate_Samp_Index5" float(53),
  "L_Thrp_DL_BitRate_Samp_Index6" float(53),
  "L_Thrp_DL_BitRate_Samp_Index7" float(53),
  "L_Thrp_DL_BitRate_Samp_Index8" float(53),
  "L_Thrp_DL_BitRate_Samp_Index9" float(53),
  "L_Thrp_UL_BitRate_Samp_Index0" float(53),
  "L_Thrp_UL_BitRate_Samp_Index1" float(53),
  "L_Thrp_UL_BitRate_Samp_Index2" float(53),
  "L_Thrp_UL_BitRate_Samp_Index3" float(53),
  "L_Thrp_UL_BitRate_Samp_Index4" float(53),
  "L_Thrp_UL_BitRate_Samp_Index5" float(53),
  "L_Thrp_UL_BitRate_Samp_Index6" float(53),
  "L_Thrp_UL_BitRate_Samp_Index7" float(53),
  "L_Thrp_UL_BitRate_Samp_Index8" float(53),
  "L_Thrp_UL_BitRate_Samp_Index9" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@UE_Context_Modification
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@UE_Context_Modification";
CREATE TABLE "Hourly"."BTS3900@Cell@UE_Context_Modification" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_UECNTX_Modify_Att" float(53),
  "L_UECNTX_Modify_Succ" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@UE_Context_Release
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@UE_Context_Release";
CREATE TABLE "Hourly"."BTS3900@Cell@UE_Context_Release" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_UECNTX_AbnormRel" float(53),
  "L_UECNTX_AbnormRel_Act" float(53),
  "L.UECNTX.AbnormRel.SpecialUE" float(53),
  "L_UECNTX_AbnormRel_UlWeak" float(53),
  "L_UECNTX_NormRel" float(53),
  "L_UECNTX_Release_HighSpeed" float(53),
  "L_UECNTX_Rel_eNodeB" float(53),
  "L_UECNTX_Rel_eNodeB_HOFailure" float(53),
  "L_UECNTX_Rel_eNodeB_Rnl" float(53),
  "L_UECNTX_Rel_eNodeB_UeLost" float(53),
  "L_UECNTX_Rel_eNodeB_Userinact" float(53),
  "L_UECNTX_Rel_MME" float(53),
  "L_UECNTX_Rel_MME_AbnormRel" float(53),
  "L_UECNTX_Rel_MME_AbnormRel_Act" float(53),
  "L_UECNTX_Rel_MME_Normalrel" float(53),
  "L_UECNTX_Rel_S1Reset_eNodeB" float(53),
  "L_UECNTX_Rel_S1Reset_MME" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@UE_Context_Setup
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@UE_Context_Setup";
CREATE TABLE "Hourly"."BTS3900@Cell@UE_Context_Setup" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_UECNTX_AttEst" float(53),
  "L_UECNTX_SuccEst" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Cell@UE_Context_Setup_Failure
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Cell@UE_Context_Setup_Failure";
CREATE TABLE "Hourly"."BTS3900@Cell@UE_Context_Setup_Failure" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_UECNTX_FailEst_NoRadioRes" float(53),
  "L_UECNTX_FailEst_RNL" float(53),
  "L_UECNTX_FailEst_SecurModeFail" float(53),
  "L_UECNTX_FailEst_UeNoReply" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Cell_Name" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@eNodeB@eNodeB_RIM
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@eNodeB@eNodeB_RIM";
CREATE TABLE "Hourly"."BTS3900@eNodeB@eNodeB_RIM" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_RIM_Load_E2G_Req" float(53),
  "L_RIM_Load_E2G_Resp" float(53),
  "L_RIM_Load_E2W_Req" float(53),
  "L_RIM_Load_E2W_Resp" float(53),
  "L_RIM_Load_E2W_Update" float(53),
  "L_RIM_Load_W2E_Req" float(53),
  "L_RIM_Load_W2E_Resp" float(53),
  "L_RIM_Load_W2E_Update" float(53),
  "L_RIM_Load_W2E_Update_ACK" float(53),
  "L_RIM_SI_E2G_Req" float(53),
  "L_RIM_SI_E2G_Resp" float(53),
  "L_RIM_SI_E2G_Update" float(53),
  "L_RIM_SI_E2W_Req" float(53),
  "L_RIM_SI_E2W_Resp" float(53),
  "L_RIM_SI_E2W_Update" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@eNodeB@eNodeB_SCTP
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@eNodeB@eNodeB_SCTP";
CREATE TABLE "Hourly"."BTS3900@eNodeB@eNodeB_SCTP" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_DLSctpCong_Num" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@eNodeB@eNodeB_Throughput
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@eNodeB@eNodeB_Throughput";
CREATE TABLE "Hourly"."BTS3900@eNodeB@eNodeB_Throughput" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Thrp_eNodeB_bits_DL_Max" float(53),
  "L_Thrp_eNodeB_bits_Max" float(53),
  "L_Thrp_eNodeB_bits_UL_Max" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@eNodeB@eNodeB_User_Quantity
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@eNodeB@eNodeB_User_Quantity";
CREATE TABLE "Hourly"."BTS3900@eNodeB@eNodeB_User_Quantity" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_Traffic_eNodeB_FDD_User_Max" float(53),
  "L_Traffic_eNodeB_TDD_User_Max" float(53),
  "L.Traffic.eNodeB.User.Max" float(53),
  "L.Traffic.eNodeB.V2XUser.Max" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@IPPath@IPPath
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@IPPath@IPPath";
CREATE TABLE "Hourly"."BTS3900@IPPath@IPPath" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPath_RxBytes" float(53),
  "VS_IPPath_RxDropPkts" float(53),
  "VS_IPPath_RxMaxSpeed" float(53),
  "VS_IPPath_RxMeanSpeed" float(53),
  "VS_IPPath_RxNrtBytes" float(53),
  "VS_IPPath_RxNrtPkts" float(53),
  "VS_IPPath_RxPkts" float(53),
  "VS_IPPath_RxRtBytes" float(53),
  "VS_IPPath_RxRtPkts" float(53),
  "VS_IPPath_TxBytes" float(53),
  "VS_IPPath_TxDropPkts" float(53),
  "VS_IPPath_TxMaxSpeed" float(53),
  "VS_IPPath_TxMeanSpeed" float(53),
  "VS_IPPath_TxNrtBytes" float(53),
  "VS_IPPath_TxNrtPkts" float(53),
  "VS_IPPath_TxPkts" float(53),
  "VS_IPPath_TxRtBytes" float(53),
  "VS_IPPath_TxRtPkts" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@IPPM@IPPM
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@IPPM@IPPM";
CREATE TABLE "Hourly"."BTS3900@IPPM@IPPM" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_IPPM_Back_JitterStandardDeviation" float(53),
  "VS_IPPM_Bits_MeansTx" float(53),
  "VS_IPPM_Forward_JitterStandardDeviation" float(53),
  "VS_IPPM_Forword_DropMeans" float(53),
  "VS_IPPM_Forword_Peak_DropRates" float(53),
  "VS.IPPM.HighLevel.MaxRttDelay" float(53),
  "VS.IPPM.HighLevel.MinRttDelay" float(53),
  "VS.IPPM.HighLevel.Rtt.Means" float(53),
  "VS_IPPM_Local_TxPkts" float(53),
  "VS.IPPM.MaxOwdDelay" float(53),
  "VS_IPPM_MaxRttDelay" float(53),
  "VS.IPPM.MinOwdDelay" float(53),
  "VS_IPPM_MinRttDelay" float(53),
  "VS.IPPM.Owd.Means" float(53),
  "VS_IPPM_Peak_Bits_RateTx" float(53),
  "VS_IPPM_Peak_Pkts_RateTx" float(53),
  "VS_IPPM_Peer_Bits_MeansRx" float(53),
  "VS_IPPM_Peer_Peak_Bits_RateRx" float(53),
  "VS_IPPM_Peer_Peak_Pkts_RateRx" float(53),
  "VS_IPPM_Peer_Pkts_MeansRx" float(53),
  "VS_IPPM_Peer_RxPkts" float(53),
  "VS_IPPM_Pkts_MeansTx" float(53),
  "VS_IPPM_Rtt_Means" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Local Cell@Cell_Traffic
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Local Cell@Cell_Traffic";
CREATE TABLE "Hourly"."BTS3900@Local Cell@Cell_Traffic" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_DLCE_Max_Dedicated" float(53),
  "VS_DLCE_Max_Shared" float(53),
  "VS_DLCE_Mean_Dedicated" float(53),
  "VS_DLCE_Mean_Shared" float(53),
  "VS_ULCE_Max_Dedicated" float(53),
  "VS_ULCE_Max_Shared" float(53),
  "VS_ULCE_Mean_Dedicated" float(53),
  "VS_ULCE_Mean_Shared" float(53),
  "VS_ULCoMP_ULCE_Max_Dedicated" float(53),
  "VS_ULCoMP_ULCE_Max_Shared" float(53),
  "VS_ULCoMP_ULCE_Mean_Dedicated" float(53),
  "VS_ULCoMP_ULCE_Mean_Shared" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Local_Cell_ID" text COLLATE "pg_catalog"."default",
  "NE_Name1" text COLLATE "pg_catalog"."default",
  "Local_Cell_ID1" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Local Cell@HSDPA
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Local Cell@HSDPA";
CREATE TABLE "Hourly"."BTS3900@Local Cell@HSDPA" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_3CHSDPA_DataTtiNum_User" float(53),
  "VS_4CHSDPA_DataTtiNum_User" float(53),
  "VS_AckFirst" float(53),
  "VS_AckRemain" float(53),
  "VS_AckRetrans_1" float(53),
  "VS_AckRetrans_10" float(53),
  "VS_AckRetrans_2" float(53),
  "VS_AckRetrans_3" float(53),
  "VS_AckRetrans_4" float(53),
  "VS_AckRetrans_5" float(53),
  "VS_AckRetrans_6" float(53),
  "VS_AckRetrans_7" float(53),
  "VS_AckRetrans_8" float(53),
  "VS_AckRetrans_9" float(53),
  "VS_AckTotal" float(53),
  "VS.APCCQI.MEAN" float(53),
  "VS.APCPhase0CQI.MEAN" float(53),
  "VS_AvaiHSDPAPwrRatio_Max" float(53),
  "VS_AvaiHSDPAPwrRatio_Mean" float(53),
  "VS_AvaiHSDPAPwrRatio_Min" float(53),
  "VS_CQI_0" float(53),
  "VS_CQI_1" float(53),
  "VS_CQI_10" float(53),
  "VS_CQI_11" float(53),
  "VS_CQI_12" float(53),
  "VS_CQI_13" float(53),
  "VS_CQI_14" float(53),
  "VS_CQI_15" float(53),
  "VS_CQI_16" float(53),
  "VS_CQI_17" float(53),
  "VS_CQI_18" float(53),
  "VS_CQI_19" float(53),
  "VS_CQI_2" float(53),
  "VS_CQI_20" float(53),
  "VS_CQI_21" float(53),
  "VS_CQI_22" float(53),
  "VS_CQI_23" float(53),
  "VS_CQI_24" float(53),
  "VS_CQI_25" float(53),
  "VS_CQI_26" float(53),
  "VS_CQI_27" float(53),
  "VS_CQI_28" float(53),
  "VS_CQI_29" float(53),
  "VS_CQI_3" float(53),
  "VS_CQI_30" float(53),
  "VS.CQI.31" float(53),
  "VS.CQI.32" float(53),
  "VS.CQI.33" float(53),
  "VS.CQI.34" float(53),
  "VS.CQI.35" float(53),
  "VS_CQI_4" float(53),
  "VS_CQI_5" float(53),
  "VS_CQI_6" float(53),
  "VS_CQI_7" float(53),
  "VS_CQI_8" float(53),
  "VS_CQI_9" float(53),
  "VS_DataCQI_MEAN" float(53),
  "VS_DataDiscardRatio_Max" float(53),
  "VS_DataDiscardRatio_Mean" float(53),
  "VS_DataDiscardRatio_Min" float(53),
  "VS_DataOutput_3CHSDPA_Traffic" float(53),
  "VS_DataOutput_4CHSDPA_Traffic" float(53),
  "VS_DataOutput_DBHSDPA_Traffic" float(53),
  "VS_DataOutput_DCHSDPA_Traffic" float(53),
  "VS_DataOutput_Max" float(53),
  "VS_DataOutput_Max_FreeUser" float(53),
  "VS_DataOutput_Mean" float(53),
  "VS_DataOutput_Mean_FreeUser" float(53),
  "VS_DataOutput_Min" float(53),
  "VS_DataOutput_Min_FreeUser" float(53),
  "VS.DataOutput.Rab" float(53),
  "VS.DataOutput.RabData" float(53),
  "VS_DataOutput_User" float(53),
  "VS_DataOutput_UserData" float(53),
  "VS.DataRabNum.Max" float(53),
  "VS.DataRabNum.Mean" float(53),
  "VS.DataRabNum.Min" float(53),
  "VS_DataTtiRatio_Mean" float(53),
  "VS_DBHSDPA_DataTtiNum_User" float(53),
  "VS_DCHSDPA_DataTtiNum_User" float(53),
  "VS_DtxTotal" float(53),
  "VS_HSDPAPwrRatio_Max_FreeUser" float(53),
  "VS_HSDPAPwrRatio_Mean_FreeUser" float(53),
  "VS_HSDPAPwrRatio_Mean_ResG0" float(53),
  "VS_HSDPAPwrRatio_Mean_ResG1" float(53),
  "VS_HSDPAPwrRatio_Mean_ResG2" float(53),
  "VS_HSDPAPwrRatio_Mean_ResG3" float(53),
  "VS_HSDPAPwrRatio_PLMN0" float(53),
  "VS_HSDPAPwrRatio_PLMN1" float(53),
  "VS_HSDPAPwrRatio_PLMN2" float(53),
  "VS_HSDPAPwrRatio_PLMN3" float(53),
  "VS_HSDPAPwrRatio_SharedOperator0" float(53),
  "VS_HSDPAPwrRatio_SharedOperator1" float(53),
  "VS_HSDPAPwrRatio_SharedOperator2" float(53),
  "VS_HSDPAPwrRatio_SharedOperator3" float(53),
  "VS_HSDPA_16QAMCfg_ActedNum" float(53),
  "VS_HSDPA_2ScchCodeRatio" float(53),
  "VS_HSDPA_3ScchCodeRatio" float(53),
  "VS_HSDPA_4ScchCodeRatio" float(53),
  "VS_HSDPA_64QAMCfg_ActedNum" float(53),
  "VS_HSDPA_64QAMCfg_ScheduledNum" float(53),
  "VS_HSDPA_All_ScheduledNum" float(53),
  "VS_HSDPA_DataOutput_Traffic" float(53),
  "VS_HSDPA_DataOutput_TRB" float(53),
  "VS_HSDPA_DataTtiNum_TRB" float(53),
  "VS_HSDPA_DataTtiNum_User" float(53),
  "VS_HSDPA_DCCfg_AnchorCarrierActedNum" float(53),
  "VS_HSDPA_DCCfg_DualCarrierActedNum" float(53),
  "VS_HSDPA_DCCfg_SupCarrierActedNum" float(53),
  "VS_HSDPA_DCCfg_SupCarrierDeact_TimeRatio" float(53),
  "VS_HSDPA_DpchMaxPwrRestr_ActRatio" float(53),
  "VS_HSDPA_InactiveDataTtiNum_TRB" float(53),
  "VS_HSDPA_InactiveDataTtiRatio_Mean" float(53),
  "VS_HSDPA_MIMO64QAMCfg_ActedNum" float(53),
  "VS_HSDPA_MIMO64QAMCfg_ScheduledNum" float(53),
  "VS_HSDPA_QPSKCfg_ActedNum" float(53),
  "VS_HSDPA_ScheInactiveDataTtiRatio_Mean" float(53),
  "VS_MIMOCfg_ActedNum" float(53),
  "VS_MIMOCfg_ScheduledNum" float(53),
  "VS_MIMODualCQI1_0" float(53),
  "VS_MIMODualCQI1_1" float(53),
  "VS_MIMODualCQI1_10" float(53),
  "VS_MIMODualCQI1_11" float(53),
  "VS_MIMODualCQI1_12" float(53),
  "VS_MIMODualCQI1_13" float(53),
  "VS_MIMODualCQI1_14" float(53),
  "VS_MIMODualCQI1_2" float(53),
  "VS_MIMODualCQI1_3" float(53),
  "VS_MIMODualCQI1_4" float(53),
  "VS_MIMODualCQI1_5" float(53),
  "VS_MIMODualCQI1_6" float(53),
  "VS_MIMODualCQI1_7" float(53),
  "VS_MIMODualCQI1_8" float(53),
  "VS_MIMODualCQI1_9" float(53),
  "VS_MIMODualCQI2_0" float(53),
  "VS_MIMODualCQI2_1" float(53),
  "VS_MIMODualCQI2_10" float(53),
  "VS_MIMODualCQI2_11" float(53),
  "VS_MIMODualCQI2_12" float(53),
  "VS_MIMODualCQI2_13" float(53),
  "VS_MIMODualCQI2_14" float(53),
  "VS_MIMODualCQI2_2" float(53),
  "VS_MIMODualCQI2_3" float(53),
  "VS_MIMODualCQI2_4" float(53),
  "VS_MIMODualCQI2_5" float(53),
  "VS_MIMODualCQI2_6" float(53),
  "VS_MIMODualCQI2_7" float(53),
  "VS_MIMODualCQI2_8" float(53),
  "VS_MIMODualCQI2_9" float(53),
  "VS_MIMODUALSTREAM1_ACK" float(53),
  "VS_MIMODUALSTREAM1_DTX" float(53),
  "VS_MIMODUALSTREAM1_NACK" float(53),
  "VS_MIMODUALSTREAM2_ACK" float(53),
  "VS_MIMODUALSTREAM2_DTX" float(53),
  "VS_MIMODUALSTREAM2_NACK" float(53),
  "VS_NackTotal" float(53),
  "VS_PdschCodeAvail_Max" float(53),
  "VS_PdschCodeAvail_Mean" float(53),
  "VS_PdschCodeUsed_Max" float(53),
  "VS_PdschCodeUsed_Mean" float(53),
  "VS_PdschCodeUsed_Min" float(53),
  "VS_PdschCodeUtil_Max" float(53),
  "VS_PdschCodeUtil_Mean" float(53),
  "VS_PdschCodeUtil_Mean_Data" float(53),
  "VS_PdschCodeUtil_Mean_User" float(53),
  "VS_PdschCodeUtil_Min" float(53),
  "VS.PdschPwrRatio.Data" float(53),
  "VS_PdschPwrRatio_Max" float(53),
  "VS_PdschPwrRatio_Mean" float(53),
  "VS_PdschPwrRatio_Min" float(53),
  "VS.PdschPwrRatio.User" float(53),
  "VS.RabNumAve.User" float(53),
  "VS.RabNumAve.UserData" float(53),
  "VS.RabNum.Max" float(53),
  "VS.RabNum.Mean" float(53),
  "VS.RabNum.Min" float(53),
  "VS_ScchCodeUtil_Max" float(53),
  "VS_ScchCodeUtil_Mean" float(53),
  "VS_ScchCodeUtil_Mean_Data" float(53),
  "VS_ScchCodeUtil_Mean_User" float(53),
  "VS_ScchCodeUtil_Min" float(53),
  "VS_ScchPwrRatio_Max" float(53),
  "VS_ScchPwrRatio_Mean" float(53),
  "VS_ScchPwrRatio_Min" float(53),
  "VS.ScchPwrRatio.User" float(53),
  "VS.ScchPwrRatio.UserData" float(53),
  "VS_SCPICH_AvgPowerRate" float(53),
  "VS_SCPICH_PwrOn_Duration" float(53),
  "VS_UsedCQI0" float(53),
  "VS_UsedCQI1" float(53),
  "VS_UsedCQI10" float(53),
  "VS_UsedCQI11" float(53),
  "VS_UsedCQI12" float(53),
  "VS_UsedCQI13" float(53),
  "VS_UsedCQI14" float(53),
  "VS_UsedCQI15" float(53),
  "VS_UsedCQI16" float(53),
  "VS_UsedCQI17" float(53),
  "VS_UsedCQI18" float(53),
  "VS_UsedCQI19" float(53),
  "VS_UsedCQI2" float(53),
  "VS_UsedCQI20" float(53),
  "VS_UsedCQI21" float(53),
  "VS_UsedCQI22" float(53),
  "VS_UsedCQI23" float(53),
  "VS_UsedCQI24" float(53),
  "VS_UsedCQI25" float(53),
  "VS_UsedCQI26" float(53),
  "VS_UsedCQI27" float(53),
  "VS_UsedCQI28" float(53),
  "VS_UsedCQI29" float(53),
  "VS_UsedCQI3" float(53),
  "VS_UsedCQI30" float(53),
  "VS_UsedCQI31to39" float(53),
  "VS_UsedCQI4" float(53),
  "VS_UsedCQI5" float(53),
  "VS_UsedCQI6" float(53),
  "VS_UsedCQI7" float(53),
  "VS_UsedCQI8" float(53),
  "VS_UsedCQI9" float(53),
  "VS_UserTtiRatio_Mean" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Local_Cell_ID" text COLLATE "pg_catalog"."default",
  "NE_Name1" text COLLATE "pg_catalog"."default",
  "Local_Cell_ID1" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@Local Cell@HSDPA_2
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@Local Cell@HSDPA_2";
CREATE TABLE "Hourly"."BTS3900@Local Cell@HSDPA_2" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_Ack_RetraSch" float(53),
  "VS_AllHSDPA_DataTtiNum_User" float(53),
  "VS_DataOutput_AllHSDPA_Traffic" float(53),
  "VS_DataOutput_InterNBDBHSDPA_AllSec_Traffic" float(53),
  "VS_DataOutput_InterNBDBHSDPA_Traffic" float(53),
  "VS.Dtx.RetraSch" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup0" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup1" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup10" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup11" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup12" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup13" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup14" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup15" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup2" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup3" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup4" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup5" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup6" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup7" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup8" float(53),
  "VS.HSDPAPwrRatio.PwrOver.UEGroup9" float(53),
  "VS.HSDPAPwrRatio.UEGroup0" float(53),
  "VS.HSDPAPwrRatio.UEGroup1" float(53),
  "VS.HSDPAPwrRatio.UEGroup10" float(53),
  "VS.HSDPAPwrRatio.UEGroup11" float(53),
  "VS.HSDPAPwrRatio.UEGroup12" float(53),
  "VS.HSDPAPwrRatio.UEGroup13" float(53),
  "VS.HSDPAPwrRatio.UEGroup14" float(53),
  "VS.HSDPAPwrRatio.UEGroup15" float(53),
  "VS.HSDPAPwrRatio.UEGroup2" float(53),
  "VS.HSDPAPwrRatio.UEGroup3" float(53),
  "VS.HSDPAPwrRatio.UEGroup4" float(53),
  "VS.HSDPAPwrRatio.UEGroup5" float(53),
  "VS.HSDPAPwrRatio.UEGroup6" float(53),
  "VS.HSDPAPwrRatio.UEGroup7" float(53),
  "VS.HSDPAPwrRatio.UEGroup8" float(53),
  "VS.HSDPAPwrRatio.UEGroup9" float(53),
  "VS.HSDPAPwrShare.OutTtiNum" float(53),
  "VS_HSDPAPwrShare_TtiNum" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup0" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup1" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup10" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup11" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup12" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup13" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup14" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup15" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup2" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup3" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup4" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup5" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup6" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup7" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup8" float(53),
  "VS.HSDPATimeRatio.PwrOver.UEGroup9" float(53),
  "VS_HSDPA_64QAMCfg_Acted_Traffic" float(53),
  "VS_HSDPA_64QAMCfg_Traffic" float(53),
  "VS.HSDPA.BasedBuffer.ScheduledNum" float(53),
  "VS_HSDPA_CellThroughput_UnderThd_BufferLimit_TTINum" float(53),
  "VS_HSDPA_CellThroughput_UnderThd_CodeLimit_TTINum" float(53),
  "VS_HSDPA_CellThroughput_UnderThd_CQILimit_TTINum" float(53),
  "VS_HSDPA_CellThroughput_UnderThd_PowerLimit_TTINum" float(53),
  "VS.HSDPA.CodeFreeUsed.Traffic" float(53),
  "VS.HSDPA.CodeFree.TtiNum" float(53),
  "VS.HSDPA.CombiTFRC.TtiNum" float(53),
  "VS_HSDPA_CQI_64QAM_0" float(53),
  "VS_HSDPA_CQI_64QAM_1" float(53),
  "VS_HSDPA_CQI_64QAM_2" float(53),
  "VS_HSDPA_CQI_64QAM_3" float(53),
  "VS_HSDPA_DataOutput_Total" float(53),
  "VS.HSDPA.DataOutput.Traffic.CQI0to10" float(53),
  "VS.HSDPA.DataOutput.Traffic.CQI11to15" float(53),
  "VS.HSDPA.DataOutput.Traffic.CQI16to20" float(53),
  "VS.HSDPA.DataOutput.Traffic.CQI21to25" float(53),
  "VS.HSDPA.DataOutput.Traffic.RetraSch" float(53),
  "VS_HSDPA_DataOutput_Traffic_SHO" float(53),
  "VS.HSDPA.DataOutput.Traffic.SRB" float(53),
  "VS.HSDPA.DataTtiNum.User.CQI0to10" float(53),
  "VS.HSDPA.DataTtiNum.User.CQI11to15" float(53),
  "VS.HSDPA.DataTtiNum.User.CQI16to20" float(53),
  "VS.HSDPA.DataTtiNum.User.CQI21to25" float(53),
  "VS_HSDPA_DataTtiNum_User_SHO" float(53),
  "VS.HSDPA.DataTtiNum.User.SRB" float(53),
  "VS_HSDPA_Data_IubMacdPdu" float(53),
  "VS_HSDPA_Data_TTINum_SharedOperator0" float(53),
  "VS_HSDPA_Data_TTINum_SharedOperator1" float(53),
  "VS_HSDPA_Data_TTINum_SharedOperator2" float(53),
  "VS_HSDPA_Data_TTINum_SharedOperator3" float(53),
  "VS_HSDPA_DelaySensitive_DataOutput" float(53),
  "VS_HSDPA_DelaySensitive_DataOutput_Urgency" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_ThroughputSatisfied_Traffic" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_ThroughputSatisfied_TTINum" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_0" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_1" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_10" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_2" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_3" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_4" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_5" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_6" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_7" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_8" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_Traffic_9" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_0" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_1" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_10" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_2" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_3" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_4" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_5" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_6" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_7" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_8" float(53),
  "VS_HSDPA_FullBuffer_ThdLimit_Throughput_TTINum_9" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_0" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_1" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_10" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_2" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_3" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_4" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_5" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_6" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_7" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_8" float(53),
  "VS_HSDPA_FullBuffer_Throughput_SumNum_9" float(53),
  "VS.HSDPA.InterNodeBHSDPCCHCoMP.TTINum" float(53),
  "VS_HSDPA_MCCfg_SupCarrierDeact_Traffic_TimeRatio" float(53),
  "VS_HSDPA_NotSchedule_CMGAP" float(53),
  "VS_HSDPA_NotSchedule_CQI0" float(53),
  "VS_HSDPA_NotSchedule_InvalidCQI" float(53),
  "VS_HSDPA_PdschCodeUsed_0" float(53),
  "VS_HSDPA_PdschCodeUsed_1" float(53),
  "VS_HSDPA_PdschCodeUsed_10" float(53),
  "VS_HSDPA_PdschCodeUsed_11" float(53),
  "VS_HSDPA_PdschCodeUsed_12" float(53),
  "VS_HSDPA_PdschCodeUsed_13" float(53),
  "VS_HSDPA_PdschCodeUsed_14" float(53),
  "VS_HSDPA_PdschCodeUsed_15" float(53),
  "VS_HSDPA_PdschCodeUsed_2" float(53),
  "VS_HSDPA_PdschCodeUsed_3" float(53),
  "VS_HSDPA_PdschCodeUsed_4" float(53),
  "VS_HSDPA_PdschCodeUsed_5" float(53),
  "VS_HSDPA_PdschCodeUsed_6" float(53),
  "VS_HSDPA_PdschCodeUsed_7" float(53),
  "VS_HSDPA_PdschCodeUsed_8" float(53),
  "VS_HSDPA_PdschCodeUsed_9" float(53),
  "VS.HSDPA.PhaseAdj.TtiNum" float(53),
  "VS_HSDPA_PrioritizedVideoUserNum_Mean" float(53),
  "VS_HSDPA_RemainResLimit_HSDPAPwr" float(53),
  "VS_HSDPA_RemainResLimit_PdschCode" float(53),
  "VS_HSDPA_RemainResLimit_ScchCode" float(53),
  "VS_HSDPA_ScheduleLimit_TTINum_SharedOperator0" float(53),
  "VS_HSDPA_ScheduleLimit_TTINum_SharedOperator1" float(53),
  "VS_HSDPA_ScheduleLimit_TTINum_SharedOperator2" float(53),
  "VS_HSDPA_ScheduleLimit_TTINum_SharedOperator3" float(53),
  "VS_HSDPA_ScheduleNum_DelaySensitive" float(53),
  "VS_HSDPA_ScheduleNum_DelaySensitive_Blind" float(53),
  "VS.HSDPA.SmartSche.TtiNum" float(53),
  "VS.HSDPA.SRB.ScheduledNum" float(53),
  "VS_HSDPA_UserNum_Mean" float(53),
  "VS_HSDPA_VideoUserNum_Mean" float(53),
  "VS_InterNBDBHSDPA_DataTtiNum_User" float(53),
  "VS.Nack.RetraSch" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "Local_Cell_ID" text COLLATE "pg_catalog"."default",
  "NE_Name1" text COLLATE "pg_catalog"."default",
  "Local_Cell_ID1" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@NodeB Board@NodeB_Board_Service
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@NodeB Board@NodeB_Board_Service";
CREATE TABLE "Hourly"."BTS3900@NodeB Board@NodeB_Board_Service" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_BOARD_UsedHsdpaUserRatio_Max" float(53),
  "VS_BOARD_UsedHsdpaUserRatio_Mean" float(53),
  "VS_BOARD_UsedHsupaUserRatio_Max" float(53),
  "VS_BOARD_UsedHsupaUserRatio_Mean" float(53),
  "VS_CE_DLAvailable_Board" float(53),
  "VS_CE_DLMax_Board" float(53),
  "VS_CE_DLMean_Board" float(53),
  "VS_CE_DLMin_Board" float(53),
  "VS_CE_ULAvailable_Board" float(53),
  "VS_CE_ULMax_Board" float(53),
  "VS_CE_ULMean_Board" float(53),
  "VS_CE_ULMin_Board" float(53),
  "VS_ULCoMP_CE_ULMax_Board" float(53),
  "VS_ULCoMP_CE_ULMean_Board" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@NodeB@Iub_per_NodeB
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@NodeB@Iub_per_NodeB";
CREATE TABLE "Hourly"."BTS3900@NodeB@Iub_per_NodeB" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "VS_AttRLADD_MAX" float(53),
  "VS_AttRLADD_MEAN" float(53),
  "VS_AttRLRecfg_MAX" float(53),
  "VS_AttRLRecfg_MEAN" float(53),
  "VS_AttRLSETUP_MAX" float(53),
  "VS_AttRLSETUP_MEAN" float(53),
  "VS_ATMDlAvgUsed_1" float(53),
  "VS_ATMDlAvgUsed_2" float(53),
  "VS_ATMDlAvgUsed_3" float(53),
  "VS_ATMDlAvgUsed_4" float(53),
  "VS_ATMDlMaxUsed_1" float(53),
  "VS_ATMDlMaxUsed_2" float(53),
  "VS_ATMDlMaxUsed_3" float(53),
  "VS_ATMDlMaxUsed_4" float(53),
  "VS_ATMDlTotal_1" float(53),
  "VS_ATMDlTotal_2" float(53),
  "VS_ATMDlTotal_3" float(53),
  "VS_ATMDlTotal_4" float(53),
  "VS_ATMUlAvgUsed_1" float(53),
  "VS_ATMUlAvgUsed_2" float(53),
  "VS_ATMUlAvgUsed_3" float(53),
  "VS_ATMUlAvgUsed_4" float(53),
  "VS_ATMUlMaxUsed_1" float(53),
  "VS_ATMUlMaxUsed_2" float(53),
  "VS_ATMUlMaxUsed_3" float(53),
  "VS_ATMUlMaxUsed_4" float(53),
  "VS_ATMUlTotal_1" float(53),
  "VS_ATMUlTotal_2" float(53),
  "VS_ATMUlTotal_3" float(53),
  "VS_ATMUlTotal_4" float(53),
  "VS_DedicMeaRpt_MAX" float(53),
  "VS_DedicMeaRpt_MEAN" float(53),
  "VS.IPDlAvgUsed.1" float(53),
  "VS.IPDlAvgUsed.2" float(53),
  "VS.IPDlAvgUsed.3" float(53),
  "VS.IPDlAvgUsed.4" float(53),
  "VS.IPDlMaxUsed.1" float(53),
  "VS.IPDlMaxUsed.2" float(53),
  "VS.IPDlMaxUsed.3" float(53),
  "VS.IPDlMaxUsed.4" float(53),
  "VS.IPDlTotal.1" float(53),
  "VS.IPDlTotal.2" float(53),
  "VS.IPDlTotal.3" float(53),
  "VS.IPDlTotal.4" float(53),
  "VS.IPUlAvgUsed.1" float(53),
  "VS.IPUlAvgUsed.2" float(53),
  "VS.IPUlAvgUsed.3" float(53),
  "VS.IPUlAvgUsed.4" float(53),
  "VS.IPUlMaxUsed.1" float(53),
  "VS.IPUlMaxUsed.2" float(53),
  "VS.IPUlMaxUsed.3" float(53),
  "VS.IPUlMaxUsed.4" float(53),
  "VS.IPUlTotal.1" float(53),
  "VS.IPUlTotal.2" float(53),
  "VS.IPUlTotal.3" float(53),
  "VS.IPUlTotal.4" float(53),
  "VS.IUB.FlowCtrol.DL.AdjBW.LgcPort1.Avg" float(53),
  "VS.IUB.FlowCtrol.DL.AdjBW.LgcPort1.Max" float(53),
  "VS.IUB.FlowCtrol.DL.AdjBW.LgcPort1.Min" float(53),
  "VS.IUB.FlowCtrol.DL.AdjBW.LgcPort2.Avg" float(53),
  "VS.IUB.FlowCtrol.DL.AdjBW.LgcPort2.Max" float(53),
  "VS.IUB.FlowCtrol.DL.AdjBW.LgcPort2.Min" float(53),
  "VS.IUB.FlowCtrol.DL.CongTime.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.CongTime.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.DL.DelayCong.DownBWNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.DelayCong.DownBWNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.DL.DelayVara.LgcPort1.Avg" float(53),
  "VS.IUB.FlowCtrol.DL.DelayVara.LgcPort1.Max" float(53),
  "VS.IUB.FlowCtrol.DL.DelayVara.LgcPort1.Min" float(53),
  "VS.IUB.FlowCtrol.DL.DelayVara.LgcPort2.Avg" float(53),
  "VS.IUB.FlowCtrol.DL.DelayVara.LgcPort2.Max" float(53),
  "VS.IUB.FlowCtrol.DL.DelayVara.LgcPort2.Min" float(53),
  "VS.IUB.FlowCtrol.DL.Delay.UpBW.Num.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.Delay.UpBW.Num.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.DL.DropCong.DownBWNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.DropCong.DownBWNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.DL.DropNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.DropNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.DL.Drop.UpBW.Num.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.Drop.UpBW.Num.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.DL.ReceiveNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.DL.ReceiveNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.UL.AdjBW.LgcPort1.Avg" float(53),
  "VS.IUB.FlowCtrol.UL.AdjBW.LgcPort1.Max" float(53),
  "VS.IUB.FlowCtrol.UL.AdjBW.LgcPort1.Min" float(53),
  "VS.IUB.FlowCtrol.UL.AdjBW.LgcPort2.Avg" float(53),
  "VS.IUB.FlowCtrol.UL.AdjBW.LgcPort2.Max" float(53),
  "VS.IUB.FlowCtrol.UL.AdjBW.LgcPort2.Min" float(53),
  "VS.IUB.FlowCtrol.UL.CongTime.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.UL.CongTime.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.UL.DelayCong.DownBWNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.UL.DelayCong.DownBWNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.UL.DelayVara.LgcPort1.Avg" float(53),
  "VS.IUB.FlowCtrol.UL.DelayVara.LgcPort1.Max" float(53),
  "VS.IUB.FlowCtrol.UL.DelayVara.LgcPort1.Min" float(53),
  "VS.IUB.FlowCtrol.UL.DelayVara.LgcPort2.Avg" float(53),
  "VS.IUB.FlowCtrol.UL.DelayVara.LgcPort2.Max" float(53),
  "VS.IUB.FlowCtrol.UL.DelayVara.LgcPort2.Min" float(53),
  "VS.IUB.FlowCtrol.UL.DropCong.DownBWNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.UL.DropCong.DownBWNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.UL.DropNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.UL.DropNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.UL.SendNum.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.UL.SendNum.LgcPort2" float(53),
  "VS.IUB.FlowCtrol.UL.UpBW.Num.LgcPort1" float(53),
  "VS.IUB.FlowCtrol.UL.UpBW.Num.LgcPort2" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default",
  "NE_Name" text COLLATE "pg_catalog"."default",
  "NE_Name1" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for BTS3900@S1 Link@S1_Link
-- ----------------------------
DROP TABLE IF EXISTS "Hourly"."BTS3900@S1 Link@S1_Link";
CREATE TABLE "Hourly"."BTS3900@S1 Link@S1_Link" (
  "Result Time" timestamp(6) NOT NULL,
  "Granularity Period" text COLLATE "pg_catalog"."default",
  "Object Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Reliability" text COLLATE "pg_catalog"."default",
  "L_S1_Unavail_Dur_Manual" float(53),
  "L_S1_Unavail_Dur_Sys" float(53),
  "L_Sig_S1_SendSetup_Att" float(53),
  "L_Sig_S1_SendSetup_Succ" float(53),
  "Date" timestamp(6),
  "Time" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Abis_Interface_Paging
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Abis_Interface_Paging_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Paging" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Abis_Interface_Paging_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Paging" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Abis_Interface_Paging
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Paging" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Abis_Interface_Paging_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Abis_Interface_Resource
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Abis_Interface_Resource_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Resource" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Abis_Interface_Resource_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Resource" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Abis_Interface_Resource
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Abis_Interface_Resource" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Abis_Interface_Resource_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Assignment
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Assignment_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Assignment" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Assignment_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Assignment" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Assignment
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Assignment" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Assignment_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Call_Drop
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Call_Drop_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Call_Drop" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Call_Drop_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Call_Drop" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Call_Drop
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Call_Drop" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Call_Drop_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Call_Duration
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Call_Duration_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Call_Duration" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Call_Duration_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Call_Duration" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Call_Duration
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Call_Duration" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Call_Duration_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Cell_Status
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Cell_Status_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Cell_Status" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Cell_Status_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Cell_Status" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Cell_Status
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Cell_Status" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Cell_Status_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Channel_Assignment_Failure
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Assignment_Failure_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Failure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Assignment_Failure_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Channel_Assignment_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Failure" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Channel_Assignment_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Channel_Assignment_Request
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Assignment_Request_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Request" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Assignment_Request_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Request" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Channel_Assignment_Request
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Assignment_Request" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Channel_Assignment_Request_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Channel_Configuration
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Configuration_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Configuration" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Configuration_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Configuration" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Channel_Configuration
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Configuration" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Channel_Configuration_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Channel_Status
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Status_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Status" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Channel_Status_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Channel_Status" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Channel_Status
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Channel_Status" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Channel_Status_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@CSFB_Call_for_Cell
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@CSFB_Call_for_Cell_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@CSFB_Call_for_Cell" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@CSFB_Call_for_Cell_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@CSFB_Call_for_Cell" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@CSFB_Call_for_Cell
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@CSFB_Call_for_Cell" ADD CONSTRAINT "BSC6900GSM@GSM Cell@CSFB_Call_for_Cell_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel" ADD CONSTRAINT "BSC6900GSM@GSM Cell@DL_EGPRS_TBF_Estab_and_Rel_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel" ADD CONSTRAINT "BSC6900GSM@GSM Cell@DL_GPRS_TBF_Estab_and_Rel_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer_Object_nam" ON "Hourly"."BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer_Result_tim" ON "Hourly"."BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Downlink_EGPRS_RLC_Data_Transfer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Downlink_GPRS_RLC_Data_Transfer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Downlink_LLC_Data_Transfer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Flow_Control
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Flow_Control_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Flow_Control" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Flow_Control
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Flow_Control" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Flow_Control_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Immediate_Assignment
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Immediate_Assignment_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Immediate_Assignment" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Immediate_Assignment
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Immediate_Assignment" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Immediate_Assignment_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover_Resul" ON "Hourly"."BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Incoming_External_Inter-Cell_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover_Resul" ON "Hourly"."BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Incoming_Internal_Inter-Cell_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover_Obje" ON "Hourly"."BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover_Resu" ON "Hourly"."BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Incoming_Inter-RAT_Inter-Cell_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Intra-Cell_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Intra-Cell_Handover_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Intra-Cell_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Intra-Cell_Handover_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Intra-Cell_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Intra-Cell_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Intra-Cell_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Intra-Cell_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@KPI
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@KPI_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@KPI" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@KPI_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@KPI" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@KPI
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@KPI" ADD CONSTRAINT "BSC6900GSM@GSM Cell@KPI_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Location_Update
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Location_Update_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Location_Update" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Location_Update_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Location_Update" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Location_Update
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Location_Update" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Location_Update_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Maximum_Busy_Channel
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Maximum_Busy_Channel_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Maximum_Busy_Channel" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Maximum_Busy_Channel_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Maximum_Busy_Channel" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Maximum_Busy_Channel
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Maximum_Busy_Channel" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Maximum_Busy_Channel_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@MR_Quantity
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@MR_Quantity_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@MR_Quantity" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@MR_Quantity_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@MR_Quantity" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@MR_Quantity
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@MR_Quantity" ADD CONSTRAINT "BSC6900GSM@GSM Cell@MR_Quantity_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@MR_upon_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@MR_upon_Handover_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@MR_upon_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@MR_upon_Handover_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@MR_upon_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@MR_upon_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@MR_upon_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@MR_upon_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@MS_Capability
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@MS_Capability_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@MS_Capability" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@MS_Capability_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@MS_Capability" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@MS_Capability
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@MS_Capability" ADD CONSTRAINT "BSC6900GSM@GSM Cell@MS_Capability_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover_Objec" ON "Hourly"."BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover_Resul" ON "Hourly"."BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Outgoing_External_Inter-Cell_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover_Objec" ON "Hourly"."BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover_Resul" ON "Hourly"."BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Outgoing_Internal_Inter-Cell_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@PDCH_Resource
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@PDCH_Resource_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@PDCH_Resource" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@PDCH_Resource_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@PDCH_Resource" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@PDCH_Resource
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@PDCH_Resource" ADD CONSTRAINT "BSC6900GSM@GSM Cell@PDCH_Resource_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Power_Control_Message
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Power_Control_Message_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Power_Control_Message" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Power_Control_Message_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Power_Control_Message" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Power_Control_Message
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Power_Control_Message" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Power_Control_Message_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Power_Statistics
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Power_Statistics_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Power_Statistics" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Power_Statistics_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Power_Statistics" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Power_Statistics
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Power_Statistics" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Power_Statistics_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@SDCCH_Call_Drop
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@SDCCH_Call_Drop_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@SDCCH_Call_Drop" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@SDCCH_Call_Drop_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@SDCCH_Call_Drop" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@SDCCH_Call_Drop
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@SDCCH_Call_Drop" ADD CONSTRAINT "BSC6900GSM@GSM Cell@SDCCH_Call_Drop_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Short_Message
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Short_Message_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Short_Message" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Short_Message_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Short_Message" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Short_Message
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Short_Message" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Short_Message_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Speech_Frame_in_Customized_MR_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@TCH_Call_Drop
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@TCH_Call_Drop_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@TCH_Call_Drop" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@TCH_Call_Drop_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@TCH_Call_Drop" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@TCH_Call_Drop
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@TCH_Call_Drop" ADD CONSTRAINT "BSC6900GSM@GSM Cell@TCH_Call_Drop_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@TRX
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@TRX_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@TRX" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@TRX_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@TRX" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@TRX
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@TRX" ADD CONSTRAINT "BSC6900GSM@GSM Cell@TRX_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer_Object_name" ON "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Uplink_EGPRS_RLC_Data_Transfer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release_" ON "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Release" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Uplink_EGPRS_TBF_Establishment_and_Rel_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Uplink_GPRS_RLC_Data_Transfer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release_R" ON "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Release" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Uplink_GPRS_TBF_Establishment_and_Rele_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer" ADD CONSTRAINT "BSC6900GSM@GSM Cell@Uplink_LLC_Data_Transfer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@GSM Cell@User_Defined_Table1
-- ----------------------------
CREATE INDEX "BSC6900GSM@GSM Cell@User_Defined_Table1_Result_time" ON "Hourly"."BSC6900GSM@GSM Cell@User_Defined_Table1" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@GSM Cell@User_Defined_Table1
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@GSM Cell@User_Defined_Table1" ADD CONSTRAINT "BSC6900GSM@GSM Cell@User_Defined_Table1_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@Site@FlexAbis
-- ----------------------------
CREATE INDEX "BSC6900GSM@Site@FlexAbis_Result_time" ON "Hourly"."BSC6900GSM@Site@FlexAbis" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@Site@FlexAbis
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@Site@FlexAbis" ADD CONSTRAINT "BSC6900GSM@Site@FlexAbis_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Customized_MR
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Customized_MR_Object_name" ON "Hourly"."BSC6900GSM@TRX@Customized_MR" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Customized_MR_Result_time" ON "Hourly"."BSC6900GSM@TRX@Customized_MR" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Customized_MR
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Customized_MR" ADD CONSTRAINT "BSC6900GSM@TRX@Customized_MR_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Interference_Band
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Interference_Band_Object_name" ON "Hourly"."BSC6900GSM@TRX@Interference_Band" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Interference_Band_Result_time" ON "Hourly"."BSC6900GSM@TRX@Interference_Band" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Interference_Band
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Interference_Band" ADD CONSTRAINT "BSC6900GSM@TRX@Interference_Band_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@MR_Quantity_based_on_TA
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@MR_Quantity_based_on_TA_Object_name" ON "Hourly"."BSC6900GSM@TRX@MR_Quantity_based_on_TA" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@MR_Quantity_based_on_TA_Result_time" ON "Hourly"."BSC6900GSM@TRX@MR_Quantity_based_on_TA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@MR_Quantity_based_on_TA
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@MR_Quantity_based_on_TA" ADD CONSTRAINT "BSC6900GSM@TRX@MR_Quantity_based_on_TA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Radio_Link_Failure
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Radio_Link_Failure_Object_name" ON "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Radio_Link_Failure_Result_time" ON "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Radio_Link_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure" ADD CONSTRAINT "BSC6900GSM@TRX@Radio_Link_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA_Object_name" ON "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA_Result_time" ON "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA" ADD CONSTRAINT "BSC6900GSM@TRX@Radio_Link_Failure_based_on_TA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Receive_Quality
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Receive_Quality_Object_name" ON "Hourly"."BSC6900GSM@TRX@Receive_Quality" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Receive_Quality_Result_time" ON "Hourly"."BSC6900GSM@TRX@Receive_Quality" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Receive_Quality
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Receive_Quality" ADD CONSTRAINT "BSC6900GSM@TRX@Receive_Quality_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Receive_Quality_Distribution
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Receive_Quality_Distribution_Object_name" ON "Hourly"."BSC6900GSM@TRX@Receive_Quality_Distribution" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Receive_Quality_Distribution_Result_time" ON "Hourly"."BSC6900GSM@TRX@Receive_Quality_Distribution" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Receive_Quality_Distribution
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Receive_Quality_Distribution" ADD CONSTRAINT "BSC6900GSM@TRX@Receive_Quality_Distribution_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@RQI_based_on_TA
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@RQI_based_on_TA_Object_name" ON "Hourly"."BSC6900GSM@TRX@RQI_based_on_TA" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@RQI_based_on_TA_Result_time" ON "Hourly"."BSC6900GSM@TRX@RQI_based_on_TA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@RQI_based_on_TA
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@RQI_based_on_TA" ADD CONSTRAINT "BSC6900GSM@TRX@RQI_based_on_TA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@RQI_Distribution
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@RQI_Distribution_Object_name" ON "Hourly"."BSC6900GSM@TRX@RQI_Distribution" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@RQI_Distribution_Result_time" ON "Hourly"."BSC6900GSM@TRX@RQI_Distribution" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@RQI_Distribution
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@RQI_Distribution" ADD CONSTRAINT "BSC6900GSM@TRX@RQI_Distribution_copy2_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@TCHF_Receive_Level
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@TCHF_Receive_Level_Object_name" ON "Hourly"."BSC6900GSM@TRX@TCHF_Receive_Level" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@TCHF_Receive_Level_Result_time" ON "Hourly"."BSC6900GSM@TRX@TCHF_Receive_Level" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@TCHF_Receive_Level
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@TCHF_Receive_Level" ADD CONSTRAINT "BSC6900GSM@TRX@TCHF_Receive_Level_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@TCHH_Receive_Level
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@TCHH_Receive_Level_Object_name" ON "Hourly"."BSC6900GSM@TRX@TCHH_Receive_Level" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@TCHH_Receive_Level_Result_time" ON "Hourly"."BSC6900GSM@TRX@TCHH_Receive_Level" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@TCHH_Receive_Level
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@TCHH_Receive_Level" ADD CONSTRAINT "BSC6900GSM@TRX@TCHH_Receive_Level_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@TRX_Status
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@TRX_Status_Object_name" ON "Hourly"."BSC6900GSM@TRX@TRX_Status" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@TRX_Status_Result_time" ON "Hourly"."BSC6900GSM@TRX@TRX_Status" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@TRX_Status
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@TRX_Status" ADD CONSTRAINT "BSC6900GSM@TRX@TRX_Status_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@Uplink-and-Downlink_Balance
-- ----------------------------
CREATE INDEX "BSC6900GSM@TRX@Uplink-and-Downlink_Balance_Object_name" ON "Hourly"."BSC6900GSM@TRX@Uplink-and-Downlink_Balance" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900GSM@TRX@Uplink-and-Downlink_Balance_Result_time" ON "Hourly"."BSC6900GSM@TRX@Uplink-and-Downlink_Balance" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@Uplink-and-Downlink_Balance
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@Uplink-and-Downlink_Balance" ADD CONSTRAINT "BSC6900GSM@TRX@Uplink-and-Downlink_Balance_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900GSM@TRX@User_Defined_Table1
-- ----------------------------
CREATE INDEX "result_timeindex" ON "Hourly"."BSC6900GSM@TRX@User_Defined_Table1" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900GSM@TRX@User_Defined_Table1
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900GSM@TRX@User_Defined_Table1" ADD CONSTRAINT "BSC6900GSM@TRX@User_Defined_Table1_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Algorithm
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Algorithm_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Algorithm" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Algorithm
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Algorithm" ADD CONSTRAINT "BSC6900UMTS@Cell@Algorithm_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Algorithm_2
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Algorithm_2_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Algorithm_2" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Algorithm_2
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Algorithm_2" ADD CONSTRAINT "BSC6900UMTS@Cell@Algorithm_2_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@BLER
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@BLER_Result_time" ON "Hourly"."BSC6900UMTS@Cell@BLER" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@BLER
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@BLER" ADD CONSTRAINT "BSC6900UMTS@Cell@BLER_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Cell_Update
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Cell_Update_Object_name" ON "Hourly"."BSC6900UMTS@Cell@Cell_Update" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900UMTS@Cell@Cell_Update_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Cell_Update" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Cell_Update
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Cell_Update" ADD CONSTRAINT "BSC6900UMTS@Cell@Cell_Update_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@CNOperator
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@CNOperator_Result_time" ON "Hourly"."BSC6900UMTS@Cell@CNOperator" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@CNOperator
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@CNOperator" ADD CONSTRAINT "BSC6900UMTS@Cell@CNOperator_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Common_Channel
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Common_Channel_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Common_Channel" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Common_Channel
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Common_Channel" ADD CONSTRAINT "BSC6900UMTS@Cell@Common_Channel_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Compressed_Mode
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Compressed_Mode_Object_name" ON "Hourly"."BSC6900UMTS@Cell@Compressed_Mode" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900UMTS@Cell@Compressed_Mode_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Compressed_Mode" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Compressed_Mode
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Compressed_Mode" ADD CONSTRAINT "BSC6900UMTS@Cell@Compressed_Mode_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@CS_RAB_Modification
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@CS_RAB_Modification_Result_time" ON "Hourly"."BSC6900UMTS@Cell@CS_RAB_Modification" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@CS_RAB_Modification
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@CS_RAB_Modification" ADD CONSTRAINT "BSC6900UMTS@Cell@CS_RAB_Modification_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@CS_RAB_Setup
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@CS_RAB_Setup_Result_time" ON "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@CS_RAB_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup" ADD CONSTRAINT "BSC6900UMTS@Cell@CS_RAB_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@CS_RAB_Setup_Failure
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@CS_RAB_Setup_Failure_Result_time" ON "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@CS_RAB_Setup_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@CS_RAB_Setup_Failure" ADD CONSTRAINT "BSC6900UMTS@Cell@CS_RAB_Setup_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@CS_Service_Quality
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@CS_Service_Quality_Result_time" ON "Hourly"."BSC6900UMTS@Cell@CS_Service_Quality" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@CS_Service_Quality
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@CS_Service_Quality" ADD CONSTRAINT "BSC6900UMTS@Cell@CS_Service_Quality_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Hard_Handover
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Hard_Handover_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Hard_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Hard_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Hard_Handover" ADD CONSTRAINT "BSC6900UMTS@Cell@Hard_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@HSDPA
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@HSDPA_Result_time" ON "Hourly"."BSC6900UMTS@Cell@HSDPA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@HSDPA
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@HSDPA" ADD CONSTRAINT "BSC6900UMTS@Cell@HSDPA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@HSUPA
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@HSUPA_Result_time" ON "Hourly"."BSC6900UMTS@Cell@HSUPA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@HSUPA
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@HSUPA" ADD CONSTRAINT "BSC6900UMTS@Cell@HSUPA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Inter-RAT_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Inter-RAT_Handover" ADD CONSTRAINT "BSC6900UMTS@Cell@Inter-RAT_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH_" ON "Hourly"."BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_DCH" ADD CONSTRAINT "BSC6900UMTS@Cell@Measurement_of_Channel_Reconfiguration_to_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Multi-RAB_Service
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Multi-RAB_Service_Object_name" ON "Hourly"."BSC6900UMTS@Cell@Multi-RAB_Service" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900UMTS@Cell@Multi-RAB_Service_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Multi-RAB_Service" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Multi-RAB_Service
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Multi-RAB_Service" ADD CONSTRAINT "BSC6900UMTS@Cell@Multi-RAB_Service_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Paging
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Paging_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Paging" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Paging
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Paging" ADD CONSTRAINT "BSC6900UMTS@Cell@Paging_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@PS_RAB_Modification
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@PS_RAB_Modification_Result_time" ON "Hourly"."BSC6900UMTS@Cell@PS_RAB_Modification" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@PS_RAB_Modification
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@PS_RAB_Modification" ADD CONSTRAINT "BSC6900UMTS@Cell@PS_RAB_Modification_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@PS_RAB_Setup
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@PS_RAB_Setup_Result_time" ON "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@PS_RAB_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup" ADD CONSTRAINT "BSC6900UMTS@Cell@PS_RAB_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@PS_RAB_Setup_Failure
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@PS_RAB_Setup_Failure_Object_name" ON "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup_Failure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900UMTS@Cell@PS_RAB_Setup_Failure_Result_time" ON "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@PS_RAB_Setup_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@PS_RAB_Setup_Failure" ADD CONSTRAINT "BSC6900UMTS@Cell@PS_RAB_Setup_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RAB_Release
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RAB_Release_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RAB_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RAB_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RAB_Release" ADD CONSTRAINT "BSC6900UMTS@Cell@RAB_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RB_Procedure
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RB_Procedure_Object_name" ON "Hourly"."BSC6900UMTS@Cell@RB_Procedure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900UMTS@Cell@RB_Procedure_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RB_Procedure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RB_Procedure
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RB_Procedure" ADD CONSTRAINT "BSC6900UMTS@Cell@RB_Procedure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RRC_Connection_Reject
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RRC_Connection_Reject_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Reject" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RRC_Connection_Reject
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Reject" ADD CONSTRAINT "BSC6900UMTS@Cell@RRC_Connection_Reject_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RRC_Connection_Release
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RRC_Connection_Release_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RRC_Connection_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Release" ADD CONSTRAINT "BSC6900UMTS@Cell@RRC_Connection_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RRC_Connection_Setup
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RRC_Connection_Setup_Object_name" ON "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Setup" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BSC6900UMTS@Cell@RRC_Connection_Setup_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RRC_Connection_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Connection_Setup" ADD CONSTRAINT "BSC6900UMTS@Cell@RRC_Connection_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RRC_MR
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RRC_MR_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RRC_MR" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RRC_MR
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RRC_MR" ADD CONSTRAINT "BSC6900UMTS@Cell@RRC_MR_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@RRC_Status
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@RRC_Status_Result_time" ON "Hourly"."BSC6900UMTS@Cell@RRC_Status" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@RRC_Status
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@RRC_Status" ADD CONSTRAINT "BSC6900UMTS@Cell@RRC_Status_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Soft_Handover
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Soft_Handover_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Soft_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Soft_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Soft_Handover" ADD CONSTRAINT "BSC6900UMTS@Cell@Soft_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Traffic
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Traffic_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Traffic" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Traffic
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Traffic" ADD CONSTRAINT "BSC6900UMTS@Cell@Traffic_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate_Result_time" ON "Hourly"."BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate" ADD CONSTRAINT "BSC6900UMTS@Cell@Traffic_Volume_and_Data_Rate_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@TX_and_RX_Power
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@TX_and_RX_Power_Result_time" ON "Hourly"."BSC6900UMTS@Cell@TX_and_RX_Power" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@TX_and_RX_Power
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@TX_and_RX_Power" ADD CONSTRAINT "BSC6900UMTS@Cell@TX_and_RX_Power_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@UL_Interoperability
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@UL_Interoperability_Result_time" ON "Hourly"."BSC6900UMTS@Cell@UL_Interoperability" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@UL_Interoperability
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@UL_Interoperability" ADD CONSTRAINT "BSC6900UMTS@Cell@UL_Interoperability_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@URA_Update
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Cell@URA_Update_Result_time" ON "Hourly"."BSC6900UMTS@Cell@URA_Update" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@URA_Update
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@URA_Update" ADD CONSTRAINT "BSC6900UMTS@Cell@URA_Update_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Cell@User_Defined_Table1
-- ----------------------------
CREATE INDEX "Result_Time_Index" ON "Hourly"."BSC6900UMTS@Cell@User_Defined_Table1" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Cell@User_Defined_Table1
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Cell@User_Defined_Table1" ADD CONSTRAINT "BSC6900UMTS@Cell@User_Defined_Table1_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@CNOperator@RAB_Release_per_PLMN
-- ----------------------------
CREATE INDEX "BSC6900UMTS@CNOperator@RAB_Release_per_PLMN_Result_time" ON "Hourly"."BSC6900UMTS@CNOperator@RAB_Release_per_PLMN" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@CNOperator@RAB_Release_per_PLMN
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@CNOperator@RAB_Release_per_PLMN" ADD CONSTRAINT "BSC6900UMTS@CNOperator@RAB_Release_per_PLMN_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN
-- ----------------------------
CREATE INDEX "BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN_Result_time" ON "Hourly"."BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN" ADD CONSTRAINT "BSC6900UMTS@CNOperator@RAB_Setup_per_PLMN_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@E1T1 Port Bit Error@E1/T1_Port_Bit_Error
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@E1T1 Port Bit Error@E1/T1_Port_Bit_Error" ADD CONSTRAINT "BSC6900UMTS@E1T1 Port Bit Error@E1/T1_Port_Bit_Error_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port
-- ----------------------------
CREATE INDEX "BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port_Result_time" ON "Hourly"."BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port" ADD CONSTRAINT "BSC6900UMTS@FEGE Ethernet Port@FE/GE_Ethernet_Port_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem_Result_t" ON "Hourly"."BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem" ADD CONSTRAINT "BSC6900UMTS@Interface Board Subsystem@Interf_Subsystem_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@IP Path@IPPath
-- ----------------------------
CREATE INDEX "BSC6900UMTS@IP Path@IPPath_Result_time" ON "Hourly"."BSC6900UMTS@IP Path@IPPath" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@IP Path@IPPath
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@IP Path@IPPath" ADD CONSTRAINT "BSC6900UMTS@IP Path@IPPath_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@IPPath IP Layer@IPPath_IP_Layer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@IPPath IP Layer@IPPath_IP_Layer" ADD CONSTRAINT "BSC6900UMTS@IPPath IP Layer@IPPath_IP_Layer_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@IPPath PM@IPPM
-- ----------------------------
CREATE INDEX "BSC6900UMTS@IPPath PM@IPPM_Result_time" ON "Hourly"."BSC6900UMTS@IPPath PM@IPPM" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@IPPath PM@IPPM
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@IPPath PM@IPPM" ADD CONSTRAINT "BSC6900UMTS@IPPath PM@IPPM_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@NodeB@Algorithm_per_NodeB
-- ----------------------------
CREATE INDEX "BSC6900UMTS@NodeB@Algorithm_per_NodeB_Result_time" ON "Hourly"."BSC6900UMTS@NodeB@Algorithm_per_NodeB" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@NodeB@Algorithm_per_NodeB
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@NodeB@Algorithm_per_NodeB" ADD CONSTRAINT "BSC6900UMTS@NodeB@Algorithm_per_NodeB_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@CS_RAB_Modification
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@CS_RAB_Modification_Result_time" ON "Hourly"."BSC6900UMTS@RNC@CS_RAB_Modification" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@CS_RAB_Modification
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@CS_RAB_Modification" ADD CONSTRAINT "BSC6900UMTS@RNC@CS_RAB_Modification_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@CS_RAB_Release
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@CS_RAB_Release_Result_time" ON "Hourly"."BSC6900UMTS@RNC@CS_RAB_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@CS_RAB_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@CS_RAB_Release" ADD CONSTRAINT "BSC6900UMTS@RNC@CS_RAB_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@CS_RAB_Setup
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@CS_RAB_Setup_Result_time" ON "Hourly"."BSC6900UMTS@RNC@CS_RAB_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@CS_RAB_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@CS_RAB_Setup" ADD CONSTRAINT "BSC6900UMTS@RNC@CS_RAB_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@Multi-RAB_Service
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@Multi-RAB_Service_Result_time" ON "Hourly"."BSC6900UMTS@RNC@Multi-RAB_Service" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@Multi-RAB_Service
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@Multi-RAB_Service" ADD CONSTRAINT "BSC6900UMTS@RNC@Multi-RAB_Service_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@PS_RAB_Modification
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@PS_RAB_Modification_Result_time" ON "Hourly"."BSC6900UMTS@RNC@PS_RAB_Modification" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@PS_RAB_Modification
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@PS_RAB_Modification" ADD CONSTRAINT "BSC6900UMTS@RNC@PS_RAB_Modification_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@PS_RAB_Release
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@PS_RAB_Release_Result_time" ON "Hourly"."BSC6900UMTS@RNC@PS_RAB_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@PS_RAB_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@PS_RAB_Release" ADD CONSTRAINT "BSC6900UMTS@RNC@PS_RAB_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@PS_RAB_Setup
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@PS_RAB_Setup_Result_time" ON "Hourly"."BSC6900UMTS@RNC@PS_RAB_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@PS_RAB_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@PS_RAB_Setup" ADD CONSTRAINT "BSC6900UMTS@RNC@PS_RAB_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@RNC@RAB_Release
-- ----------------------------
CREATE INDEX "BSC6900UMTS@RNC@RAB_Release_Result_time" ON "Hourly"."BSC6900UMTS@RNC@RAB_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@RNC@RAB_Release
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@RNC@RAB_Release" ADD CONSTRAINT "BSC6900UMTS@RNC@RAB_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual_Resu" ON "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual" ADD CONSTRAINT "BSC6900UMTS@Transmission Resource Pool Adj Node@Trans_Qual_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@_Res" ON "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic@" ADD CONSTRAINT "BSC6900UMTS@Transmission Resource Pool Adj Node@UP_Traffic_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer
-- ----------------------------
CREATE INDEX "BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer_Res" ON "Hourly"."BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLayer" ADD CONSTRAINT "BSC6900UMTS@Transmission Resource Pool Local IP Add@IPLaye_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@UMTS DSP@DSP
-- ----------------------------
CREATE INDEX "BSC6900UMTS@UMTS DSP@DSP_Result_time" ON "Hourly"."BSC6900UMTS@UMTS DSP@DSP" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@UMTS DSP@DSP
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@UMTS DSP@DSP" ADD CONSTRAINT "BSC6900UMTS@UMTS DSP@DSP_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6900UMTS@XPU Subsystem@XPU_Subsystem
-- ----------------------------
CREATE INDEX "BSC6900UMTS@XPU Subsystem@XPU_Subsystem_Result_time" ON "Hourly"."BSC6900UMTS@XPU Subsystem@XPU_Subsystem" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6900UMTS@XPU Subsystem@XPU_Subsystem
-- ----------------------------
ALTER TABLE "Hourly"."BSC6900UMTS@XPU Subsystem@XPU_Subsystem" ADD CONSTRAINT "BSC6900UMTS@XPU Subsystem@XPU_Subsystem_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BSC6910UMTS@Subsystem@Subsystem
-- ----------------------------
CREATE INDEX "BSC6910UMTS@Subsystem@Subsystem_Result_time" ON "Hourly"."BSC6910UMTS@Subsystem@Subsystem" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BSC6910UMTS@Subsystem@Subsystem
-- ----------------------------
ALTER TABLE "Hourly"."BSC6910UMTS@Subsystem@Subsystem" ADD CONSTRAINT "BSC6910UMTS@Subsystem@Subsystem_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell Sector Equip Group@SFN_G_ERAB
-- ----------------------------
CREATE INDEX "BTS3900@Cell Sector Equip Group@SFN_G_ERAB_Result_time" ON "Hourly"."BTS3900@Cell Sector Equip Group@SFN_G_ERAB" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell Sector Equip Group@SFN_G_ERAB
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell Sector Equip Group@SFN_G_ERAB" ADD CONSTRAINT "BTS3900@Cell Sector Equip Group@SFN_G_ERAB_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB
-- ----------------------------
CREATE INDEX "BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB_Resu" ON "Hourly"."BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB" ADD CONSTRAINT "BTS3900@Cell Sector Equipm@SFN_Cell_Sector_Equipment_E-RAB_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Cell_Algorithm
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Cell_Algorithm_Result_time" ON "Hourly"."BTS3900@Cell@Cell_Algorithm" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Cell_Algorithm
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Cell_Algorithm" ADD CONSTRAINT "BTS3900@Cell@Cell_Algorithm_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Cell_Emergency_Call
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Cell_Emergency_Call_Result_time" ON "Hourly"."BTS3900@Cell@Cell_Emergency_Call" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Cell_Emergency_Call
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Cell_Emergency_Call" ADD CONSTRAINT "BTS3900@Cell@Cell_Emergency_Call_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Cell_User_Quantity
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Cell_User_Quantity_Result_time" ON "Hourly"."BTS3900@Cell@Cell_User_Quantity" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Cell_User_Quantity
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Cell_User_Quantity" ADD CONSTRAINT "BTS3900@Cell@Cell_User_Quantity_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Channel_Quality
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Channel_Quality_Result_time" ON "Hourly"."BTS3900@Cell@Channel_Quality" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Channel_Quality
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Channel_Quality" ADD CONSTRAINT "BTS3900@Cell@Channel_Quality_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@CQI
-- ----------------------------
CREATE INDEX "BTS3900@Cell@CQI_Object_name" ON "Hourly"."BTS3900@Cell@CQI" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@CQI_Result_time" ON "Hourly"."BTS3900@Cell@CQI" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@CQI
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@CQI" ADD CONSTRAINT "BTS3900@Cell@CQI_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@DRB
-- ----------------------------
CREATE INDEX "BTS3900@Cell@DRB_Object_name" ON "Hourly"."BTS3900@Cell@DRB" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@DRB_Result_time" ON "Hourly"."BTS3900@Cell@DRB" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@DRB
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@DRB" ADD CONSTRAINT "BTS3900@Cell@DRB_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@E-RAB_Modification
-- ----------------------------
CREATE INDEX "BTS3900@Cell@E-RAB_Modification_Result_time" ON "Hourly"."BTS3900@Cell@E-RAB_Modification" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@E-RAB_Modification
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@E-RAB_Modification" ADD CONSTRAINT "BTS3900@Cell@E-RAB_Modification_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@E-RAB_Release
-- ----------------------------
CREATE INDEX "BTS3900@Cell@E-RAB_Release_Result_time" ON "Hourly"."BTS3900@Cell@E-RAB_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@E-RAB_Release
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@E-RAB_Release" ADD CONSTRAINT "BTS3900@Cell@E-RAB_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@E-RAB_Setup
-- ----------------------------
CREATE INDEX "BTS3900@Cell@E-RAB_Setup_Object_name" ON "Hourly"."BTS3900@Cell@E-RAB_Setup" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@E-RAB_Setup_Result_time" ON "Hourly"."BTS3900@Cell@E-RAB_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@E-RAB_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@E-RAB_Setup" ADD CONSTRAINT "BTS3900@Cell@E-RAB_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@E-RAB_Setup_Failure
-- ----------------------------
CREATE INDEX "BTS3900@Cell@E-RAB_Setup_Failure_Result_time" ON "Hourly"."BTS3900@Cell@E-RAB_Setup_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@E-RAB_Setup_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@E-RAB_Setup_Failure" ADD CONSTRAINT "BTS3900@Cell@E-RAB_Setup_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Incoming_Inter-RAT_Handover
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Incoming_Inter-RAT_Handover_Result_time" ON "Hourly"."BTS3900@Cell@Incoming_Inter-RAT_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Incoming_Inter-RAT_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Incoming_Inter-RAT_Handover" ADD CONSTRAINT "BTS3900@Cell@Incoming_Inter-RAT_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Incoming_Intra-RAT_Handover
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Incoming_Intra-RAT_Handover_Result_time" ON "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Incoming_Intra-RAT_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover" ADD CONSTRAINT "BTS3900@Cell@Incoming_Intra-RAT_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2_Object_name" ON "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2_Result_time" ON "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2" ADD CONSTRAINT "BTS3900@Cell@Incoming_Intra-RAT_Handover_over_X2_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@MAC
-- ----------------------------
CREATE INDEX "BTS3900@Cell@MAC_Result_time" ON "Hourly"."BTS3900@Cell@MAC" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@MAC
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@MAC" ADD CONSTRAINT "BTS3900@Cell@MAC_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@MCS
-- ----------------------------
CREATE INDEX "BTS3900@Cell@MCS_Object_name" ON "Hourly"."BTS3900@Cell@MCS" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@MCS_Result_time" ON "Hourly"."BTS3900@Cell@MCS" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@MCS
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@MCS" ADD CONSTRAINT "BTS3900@Cell@MCS_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@MIMO
-- ----------------------------
CREATE INDEX "BTS3900@Cell@MIMO_Object_name" ON "Hourly"."BTS3900@Cell@MIMO" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@MIMO_Result_time" ON "Hourly"."BTS3900@Cell@MIMO" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@MIMO
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@MIMO" ADD CONSTRAINT "BTS3900@Cell@MIMO_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@MR
-- ----------------------------
CREATE INDEX "BTS3900@Cell@MR_Object_name" ON "Hourly"."BTS3900@Cell@MR" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@MR_Result_time" ON "Hourly"."BTS3900@Cell@MR" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@MR
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@MR" ADD CONSTRAINT "BTS3900@Cell@MR_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Outgoing_Inter-RAT_Handover
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Outgoing_Inter-RAT_Handover_Object_name" ON "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Outgoing_Inter-RAT_Handover_Result_time" ON "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Outgoing_Inter-RAT_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover" ADD CONSTRAINT "BTS3900@Cell@Outgoing_Inter-RAT_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Outgoing_Inter-RAT_Handover_1
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Outgoing_Inter-RAT_Handover_1_Object_name" ON "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover_1" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Outgoing_Inter-RAT_Handover_1_Result_time" ON "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover_1" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Outgoing_Inter-RAT_Handover_1
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Outgoing_Inter-RAT_Handover_1" ADD CONSTRAINT "BTS3900@Cell@Outgoing_Inter-RAT_Handover_1_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_Object_name" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_Result_time" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover" ADD CONSTRAINT "BTS3900@Cell@Outgoing_Intra-RAT_Handover_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover_1
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_1_Object_name" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_1" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_1_Result_time" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_1" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover_1
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_1" ADD CONSTRAINT "BTS3900@Cell@Outgoing_Intra-RAT_Handover_1_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX_Result_time" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX" ADD CONSTRAINT "BTS3900@Cell@Outgoing_Intra-RAT_Handover_in_DRX_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2_Object_name" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2_Result_time" ON "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2" ADD CONSTRAINT "BTS3900@Cell@Outgoing_Intra-RAT_Handover_over_X2_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Packet
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Packet_Object_name" ON "Hourly"."BTS3900@Cell@Packet" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Packet_Result_time" ON "Hourly"."BTS3900@Cell@Packet" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Packet
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Packet" ADD CONSTRAINT "BTS3900@Cell@Packet_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Packet_Size_Distribution
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Packet_Size_Distribution_Object_name" ON "Hourly"."BTS3900@Cell@Packet_Size_Distribution" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Packet_Size_Distribution_Result_time" ON "Hourly"."BTS3900@Cell@Packet_Size_Distribution" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Packet_Size_Distribution
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Packet_Size_Distribution" ADD CONSTRAINT "BTS3900@Cell@Packet_Size_Distribution_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Paging
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Paging_Object_name" ON "Hourly"."BTS3900@Cell@Paging" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Paging_Result_time" ON "Hourly"."BTS3900@Cell@Paging" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Paging
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Paging" ADD CONSTRAINT "BTS3900@Cell@Paging_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@PDCP
-- ----------------------------
CREATE INDEX "BTS3900@Cell@PDCP_Object_name" ON "Hourly"."BTS3900@Cell@PDCP" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@PDCP_Result_time" ON "Hourly"."BTS3900@Cell@PDCP" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@PDCP
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@PDCP" ADD CONSTRAINT "BTS3900@Cell@PDCP_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@PRB
-- ----------------------------
CREATE INDEX "BTS3900@Cell@PRB_Object_name" ON "Hourly"."BTS3900@Cell@PRB" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@PRB_Result_time" ON "Hourly"."BTS3900@Cell@PRB" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@PRB
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@PRB" ADD CONSTRAINT "BTS3900@Cell@PRB_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@RA
-- ----------------------------
CREATE INDEX "BTS3900@Cell@RA_Object_name" ON "Hourly"."BTS3900@Cell@RA" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@RA_Result_time" ON "Hourly"."BTS3900@Cell@RA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@RA
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@RA" ADD CONSTRAINT "BTS3900@Cell@RA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Resource_Optimization
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Resource_Optimization_Object_name" ON "Hourly"."BTS3900@Cell@Resource_Optimization" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Resource_Optimization_Result_time" ON "Hourly"."BTS3900@Cell@Resource_Optimization" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Resource_Optimization
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Resource_Optimization" ADD CONSTRAINT "BTS3900@Cell@Resource_Optimization_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@RLC
-- ----------------------------
CREATE INDEX "BTS3900@Cell@RLC_Object_name" ON "Hourly"."BTS3900@Cell@RLC" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@RLC_Result_time" ON "Hourly"."BTS3900@Cell@RLC" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@RLC
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@RLC" ADD CONSTRAINT "BTS3900@Cell@RLC_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@RRC_Reestablishment
-- ----------------------------
CREATE INDEX "BTS3900@Cell@RRC_Reestablishment_Object_name" ON "Hourly"."BTS3900@Cell@RRC_Reestablishment" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@RRC_Reestablishment_Result_time" ON "Hourly"."BTS3900@Cell@RRC_Reestablishment" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@RRC_Reestablishment
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@RRC_Reestablishment" ADD CONSTRAINT "BTS3900@Cell@RRC_Reestablishment_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@RRC_Reestablishment_Failure
-- ----------------------------
CREATE INDEX "BTS3900@Cell@RRC_Reestablishment_Failure_Object_name" ON "Hourly"."BTS3900@Cell@RRC_Reestablishment_Failure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@RRC_Reestablishment_Failure_Result_time" ON "Hourly"."BTS3900@Cell@RRC_Reestablishment_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@RRC_Reestablishment_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@RRC_Reestablishment_Failure" ADD CONSTRAINT "BTS3900@Cell@RRC_Reestablishment_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@RRC_Setup
-- ----------------------------
CREATE INDEX "BTS3900@Cell@RRC_Setup_Object_name" ON "Hourly"."BTS3900@Cell@RRC_Setup" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@RRC_Setup_Result_time" ON "Hourly"."BTS3900@Cell@RRC_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@RRC_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@RRC_Setup" ADD CONSTRAINT "BTS3900@Cell@RRC_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@RRC_Setup_Failure
-- ----------------------------
CREATE INDEX "BTS3900@Cell@RRC_Setup_Failure_Object_name" ON "Hourly"."BTS3900@Cell@RRC_Setup_Failure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@RRC_Setup_Failure_Result_time" ON "Hourly"."BTS3900@Cell@RRC_Setup_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@RRC_Setup_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@RRC_Setup_Failure" ADD CONSTRAINT "BTS3900@Cell@RRC_Setup_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Security_Mode
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Security_Mode_Object_name" ON "Hourly"."BTS3900@Cell@Security_Mode" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Security_Mode_Result_time" ON "Hourly"."BTS3900@Cell@Security_Mode" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Security_Mode
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Security_Mode" ADD CONSTRAINT "BTS3900@Cell@Security_Mode_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Throughput_and_Data_Volume
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Throughput_and_Data_Volume_Object_name" ON "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Throughput_and_Data_Volume_Result_time" ON "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Throughput_and_Data_Volume
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume" ADD CONSTRAINT "BTS3900@Cell@Throughput_and_Data_Volume_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Throughput_and_Data_Volume_1
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Throughput_and_Data_Volume_1_Object_name" ON "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_1" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Throughput_and_Data_Volume_1_Result_time" ON "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_1" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Throughput_and_Data_Volume_1
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_1" ADD CONSTRAINT "BTS3900@Cell@Throughput_and_Data_Volume_1_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range_Obj" ON "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range_Res" ON "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Range" ADD CONSTRAINT "BTS3900@Cell@Throughput_and_Data_Volume_per_Path_Loss_Rang_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@Throughput_Distribution
-- ----------------------------
CREATE INDEX "BTS3900@Cell@Throughput_Distribution_Object_name" ON "Hourly"."BTS3900@Cell@Throughput_Distribution" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@Throughput_Distribution_Result_time" ON "Hourly"."BTS3900@Cell@Throughput_Distribution" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@Throughput_Distribution
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@Throughput_Distribution" ADD CONSTRAINT "BTS3900@Cell@Throughput_Distribution_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@UE_Context_Modification
-- ----------------------------
CREATE INDEX "BTS3900@Cell@UE_Context_Modification_Object_name" ON "Hourly"."BTS3900@Cell@UE_Context_Modification" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@UE_Context_Modification_Result_time" ON "Hourly"."BTS3900@Cell@UE_Context_Modification" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@UE_Context_Modification
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@UE_Context_Modification" ADD CONSTRAINT "BTS3900@Cell@UE_Context_Modification_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@UE_Context_Release
-- ----------------------------
CREATE INDEX "BTS3900@Cell@UE_Context_Release_Object_name" ON "Hourly"."BTS3900@Cell@UE_Context_Release" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@UE_Context_Release_Result_time" ON "Hourly"."BTS3900@Cell@UE_Context_Release" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@UE_Context_Release
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@UE_Context_Release" ADD CONSTRAINT "BTS3900@Cell@UE_Context_Release_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@UE_Context_Setup
-- ----------------------------
CREATE INDEX "BTS3900@Cell@UE_Context_Setup_Object_name" ON "Hourly"."BTS3900@Cell@UE_Context_Setup" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@UE_Context_Setup_Result_time" ON "Hourly"."BTS3900@Cell@UE_Context_Setup" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@UE_Context_Setup
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@UE_Context_Setup" ADD CONSTRAINT "BTS3900@Cell@UE_Context_Setup_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Cell@UE_Context_Setup_Failure
-- ----------------------------
CREATE INDEX "BTS3900@Cell@UE_Context_Setup_Failure_Object_name" ON "Hourly"."BTS3900@Cell@UE_Context_Setup_Failure" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Cell@UE_Context_Setup_Failure_Result_time" ON "Hourly"."BTS3900@Cell@UE_Context_Setup_Failure" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Cell@UE_Context_Setup_Failure
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Cell@UE_Context_Setup_Failure" ADD CONSTRAINT "BTS3900@Cell@UE_Context_Setup_Failure_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@eNodeB@eNodeB_RIM
-- ----------------------------
CREATE INDEX "BTS3900@eNodeB@eNodeB_RIM_Object_name" ON "Hourly"."BTS3900@eNodeB@eNodeB_RIM" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@eNodeB@eNodeB_RIM_Result_time" ON "Hourly"."BTS3900@eNodeB@eNodeB_RIM" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@eNodeB@eNodeB_RIM
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@eNodeB@eNodeB_RIM" ADD CONSTRAINT "BTS3900@eNodeB@eNodeB_RIM_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@eNodeB@eNodeB_SCTP
-- ----------------------------
CREATE INDEX "BTS3900@eNodeB@eNodeB_SCTP_Object_name" ON "Hourly"."BTS3900@eNodeB@eNodeB_SCTP" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@eNodeB@eNodeB_SCTP_Result_time" ON "Hourly"."BTS3900@eNodeB@eNodeB_SCTP" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@eNodeB@eNodeB_SCTP
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@eNodeB@eNodeB_SCTP" ADD CONSTRAINT "BTS3900@eNodeB@eNodeB_SCTP_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@eNodeB@eNodeB_Throughput
-- ----------------------------
CREATE INDEX "BTS3900@eNodeB@eNodeB_Throughput_Object_name" ON "Hourly"."BTS3900@eNodeB@eNodeB_Throughput" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@eNodeB@eNodeB_Throughput_Result_time" ON "Hourly"."BTS3900@eNodeB@eNodeB_Throughput" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@eNodeB@eNodeB_Throughput
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@eNodeB@eNodeB_Throughput" ADD CONSTRAINT "BTS3900@eNodeB@eNodeB_Throughput_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@eNodeB@eNodeB_User_Quantity
-- ----------------------------
CREATE INDEX "BTS3900@eNodeB@eNodeB_User_Quantity_Object_name" ON "Hourly"."BTS3900@eNodeB@eNodeB_User_Quantity" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@eNodeB@eNodeB_User_Quantity_Result_time" ON "Hourly"."BTS3900@eNodeB@eNodeB_User_Quantity" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@eNodeB@eNodeB_User_Quantity
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@eNodeB@eNodeB_User_Quantity" ADD CONSTRAINT "BTS3900@eNodeB@eNodeB_User_Quantity_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@IPPath@IPPath
-- ----------------------------
CREATE INDEX "BTS3900@IPPath@IPPath_Object_name" ON "Hourly"."BTS3900@IPPath@IPPath" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@IPPath@IPPath_Result_time" ON "Hourly"."BTS3900@IPPath@IPPath" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@IPPath@IPPath
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@IPPath@IPPath" ADD CONSTRAINT "BTS3900@IPPath@IPPath_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@IPPM@IPPM
-- ----------------------------
CREATE INDEX "BTS3900@IPPM@IPPM_Object_name" ON "Hourly"."BTS3900@IPPM@IPPM" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@IPPM@IPPM_Result_time" ON "Hourly"."BTS3900@IPPM@IPPM" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@IPPM@IPPM
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@IPPM@IPPM" ADD CONSTRAINT "BTS3900@IPPM@IPPM_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Local Cell@Cell_Traffic
-- ----------------------------
CREATE INDEX "BTS3900@Local Cell@Cell_Traffic_Object_name" ON "Hourly"."BTS3900@Local Cell@Cell_Traffic" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Local Cell@Cell_Traffic_Result_time" ON "Hourly"."BTS3900@Local Cell@Cell_Traffic" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Local Cell@Cell_Traffic
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Local Cell@Cell_Traffic" ADD CONSTRAINT "BTS3900@Local Cell@Cell_Traffic_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Local Cell@HSDPA
-- ----------------------------
CREATE INDEX "BTS3900@Local Cell@HSDPA_Object_name" ON "Hourly"."BTS3900@Local Cell@HSDPA" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Local Cell@HSDPA_Result_time" ON "Hourly"."BTS3900@Local Cell@HSDPA" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Local Cell@HSDPA
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Local Cell@HSDPA" ADD CONSTRAINT "BTS3900@Local Cell@HSDPA_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@Local Cell@HSDPA_2
-- ----------------------------
CREATE INDEX "BTS3900@Local Cell@HSDPA_2_Object_name" ON "Hourly"."BTS3900@Local Cell@HSDPA_2" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@Local Cell@HSDPA_2_Result_time" ON "Hourly"."BTS3900@Local Cell@HSDPA_2" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@Local Cell@HSDPA_2
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@Local Cell@HSDPA_2" ADD CONSTRAINT "BTS3900@Local Cell@HSDPA_2_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@NodeB Board@NodeB_Board_Service
-- ----------------------------
CREATE INDEX "BTS3900@NodeB Board@NodeB_Board_Service_Object_name" ON "Hourly"."BTS3900@NodeB Board@NodeB_Board_Service" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@NodeB Board@NodeB_Board_Service_Result_time" ON "Hourly"."BTS3900@NodeB Board@NodeB_Board_Service" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@NodeB Board@NodeB_Board_Service
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@NodeB Board@NodeB_Board_Service" ADD CONSTRAINT "BTS3900@NodeB Board@NodeB_Board_Service_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@NodeB@Iub_per_NodeB
-- ----------------------------
CREATE INDEX "BTS3900@NodeB@Iub_per_NodeB_Object_name" ON "Hourly"."BTS3900@NodeB@Iub_per_NodeB" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@NodeB@Iub_per_NodeB_Result_time" ON "Hourly"."BTS3900@NodeB@Iub_per_NodeB" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@NodeB@Iub_per_NodeB
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@NodeB@Iub_per_NodeB" ADD CONSTRAINT "BTS3900@NodeB@Iub_per_NodeB_pkey" PRIMARY KEY ("Result Time", "Object Name");

-- ----------------------------
-- Indexes structure for table BTS3900@S1 Link@S1_Link
-- ----------------------------
CREATE INDEX "BTS3900@S1 Link@S1_Link_Object_name" ON "Hourly"."BTS3900@S1 Link@S1_Link" USING brin (
  "Object Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_minmax_ops"
);
CREATE INDEX "BTS3900@S1 Link@S1_Link_Result_time" ON "Hourly"."BTS3900@S1 Link@S1_Link" USING brin (
  "Result Time" "pg_catalog"."timestamp_minmax_ops"
);

-- ----------------------------
-- Primary Key structure for table BTS3900@S1 Link@S1_Link
-- ----------------------------
ALTER TABLE "Hourly"."BTS3900@S1 Link@S1_Link" ADD CONSTRAINT "BTS3900@S1 Link@S1_Link_pkey" PRIMARY KEY ("Result Time", "Object Name");
