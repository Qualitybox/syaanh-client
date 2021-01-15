*** Settings ***
Resource                       PageObjects/Common.robot
Library                        Utils/Slack_notification.py
Library                        XML


*** Tasks ***

Push_Notifications

    ${Build_nbr} =                            Get Variable Value             ${Build_nbr}                   local
    ${JOB_STATUS} =                           Get Variable Value             ${JOB_STATUS}                  success
    ${SCOPE} =                                Get Variable Value             ${SCOPE}                       ci
    Log To Console                            ${JOB_STATUS}
    ${SUITE_MESSAGE}=                         Prepare Tests Outcome
    # ${testrun_id} =                         Run Keyword If                 ${RunByCI}                     TestRail_Notifications
    # ...                                     ELSE                           Set Variable                   local
    ${Build_nbr} =                            Get Variable Value             ${Build_nbr}                   local
    Publish Results To Slack                  ${JOB_STATUS}                  ${SUITE_MESSAGE}
    ...                                       ${Build_nbr}                   ${Browser}                     ${SCOPE}

*** Keywords ***

Get test results from xUnit
    ${XML} =                                  Parse XML                      ${CURDIR}/Reports/xUnit.xml
    ${testsuite_elemnet} =                    Get Variable Value             ${XML.attrib}
    [Return]                                  ${testsuite_elemnet}

Prepare Tests Outcome
    ${results} =                              Get test results from xUnit
    ${failed_tests} =                         Set Variable                   ${results}[failures]
    ${skipped_tests} =                        Set Variable                   ${results}[skipped]
    ${total_tests} =                          Set Variable                   ${results}[tests]
    ${passed_tests} =                         Evaluate                       ${total_tests} - ${failed_tests} - ${skipped_tests}
    ${SUITE_MESSAGE} =                        Set Variable                   From ${total_tests} tests: ${passed_tests} passed, ${failed_tests} newly failed, ${skipped_tests} with known issues
    [Return]                                  ${SUITE_MESSAGE}
