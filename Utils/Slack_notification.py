import requests

CI_Slack_webhook = 'https://hooks.slack.com/services/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'



def publish_results_to_slack(global_result='1', message='default', gitlab_job='73853', browser='chrome', scope='ci'):
    # get only last line of gloabal suite message
    # messageLine = message.split('\n')
    # message = messageLine[len(messageLine) - 1]
    print(message)
    print(global_result)

    if browser == 'KPI':
        test_nature = '*KPI engine* related tests'
        project = "data"
    else:
        test_nature = 'Tests on *' + browser + '*'
        project = "core"

    url = CI_Slack_webhook
    artifacts_path = 'https://gitlab.insideboard.com/qa/qa-' + project + '/-/jobs/' + gitlab_job + '/artifacts/download'

    if str(global_result) == '0':
        feedback = ':heavy_check_mark: ' + test_nature + ' are passed !! :tada: :tada:'
        msg_color = 'good'
    else:
        feedback = ':red_circle: ' + test_nature + ' are failing !!'
        msg_color = '#ed5c5c'

    headers = { 'Content-Type': 'application/json' }
    formattedPayload = {
                    "attachments":
                    [
                        {
                            "mrkdwn_in": ["text"],
                            "color": msg_color,
                            "pretext": feedback,
                            # "type": "section",
                            # "color": msg_color,
                            "fields":
                            [
                                {
                                    "value": "*Test results*: " + message,
                                    "short": False
                                }
                            ],
                            "actions": [
                                {
                                    "name": "Artifacts",
                                    "text": "Gitlab build",
                                    "type": "button",
                                    "url": 'https://gitlab.insideboard.com/qa/qa-' + project + '/-/jobs/' + gitlab_job
                                },
                                {
                                    "name": "Artifacts",
                                    "text": "Download artifacts",
                                    "type": "button",
                                    "url": artifacts_path
                                }
                            ]
                        }
                    ]
                }

    response = requests.post(url, headers=headers, json=formattedPayload)
    print(response.status_code)
    print(response.content)
    return response.status_code

# publish_results_to_slack(scope='Data')
