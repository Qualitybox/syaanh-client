import requests

CI_Slack_webhook = 'https://hooks.slack.com/services/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'

def publish_results_to_slack(global_result='1', message='default', jobID='481857404', browser='chrome', scope='ci'):
    # get only last line of gloabal suite message
    # messageLine = message.split('\n')
    # message = messageLine[len(messageLine) - 1]
    print(message)
    print(global_result)


    test_nature = 'Tests on *' + browser + '*'

    url = CI_Slack_webhook
    #artifacts_path = 'https://gitlab.insideboard.com/qa/qa-' + project + '/-/jobs/' + jobID + '/artifacts/download'

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
                                    "text": "Github build",
                                    "type": "button",
                                    "url": 'https://github.com/Qualitybox/syaanh-client/actions/runs/' + jobID
                                }
                            ]
                        }
                    ]
                }

    response = requests.post(url, headers=headers, json=formattedPayload)
    print(response.status_code)
    print(response.content)
    return response.status_code

#publish_results_to_slack()

