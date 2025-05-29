// shadowrocket_signin.js
// [Script]
// wei bi 签到 = type=cron,cronexp=0 8 * * *,script-path=ai_signin.js,timeout=60

const url = "https://v1.voct.top/signin";
const headers = {
  "Cookie": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMDM4IiwiZXhwIjoxNzUxMDg4NDE3fQ.N8R3yJf3BbdSDopO14ycCC0kekmM3JSQ5LWXsqFQu3w", // 用你的 Cookie 替换
  "User-Agent": "Mozilla/5.0"
};

$httpClient.post({url: url, headers: headers}, function(error, response, data){
  if (error) {
    $notification.post("wei bi 签到", "请求失败", error);
  } else {
    if (response.status == 200) {
      $notification.post("wei bi 签到", "成功", data);
    } else {
      $notification.post("wei bi 签到", "失败", "状态码: " + response.status + "\n" + data);
    }
  }
  $done();
});
