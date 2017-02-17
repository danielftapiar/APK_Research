.class public Lcom/prey/events/factories/EventFactory;
.super Ljava/lang/Object;
.source "EventFactory.java"


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field private static final BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field private static final POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field private static final WIFI_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yy hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/prey/events/factories/EventFactory;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/prey/events/Event;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEvent["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "message":Ljava/lang/String;
    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 53
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    invoke-static {p0}, Lcom/prey/events/factories/EventFactory;->notification(Landroid/content/Context;)V

    .line 55
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->isSimChanged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v2, "info":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "new_phone_number"

    invoke-static {p0}, Lcom/prey/managers/PreyTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/managers/PreyTelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 61
    :goto_0
    new-instance v6, Lcom/prey/events/Event;

    const-string v7, "sim_changed"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v2    # "info":Lorg/json/JSONObject;
    :goto_1
    return-object v6

    .line 63
    :cond_0
    new-instance v6, Lcom/prey/events/Event;

    const-string v7, "device_turned_on"

    invoke-direct {v6, v7}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    new-instance v6, Lcom/prey/events/Event;

    const-string v7, "device_turned_off"

    invoke-direct {v6, v7}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_2
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    new-instance v6, Lcom/prey/events/Event;

    const-string v7, "low_battery"

    invoke-direct {v6, v7}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_3
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 74
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 76
    :cond_4
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .restart local v2    # "info":Lorg/json/JSONObject;
    const-string v6, "wifi_state"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 79
    .local v5, "wifiState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "__wifiState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "connected":Z
    :try_start_1
    invoke-static {p0}, Lcom/prey/managers/PreyConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/managers/PreyConnectivityManager;->isWifiConnected()Z

    move-result v6

    if-nez v6, :cond_5

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 85
    const-string v6, "connected"

    const-string v7, "reason"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    const/4 v0, 0x1

    .line 90
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_5
    invoke-static {p0}, Lcom/prey/managers/PreyConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/managers/PreyConnectivityManager;->isMobileConnected()Z

    move-result v6

    if-nez v6, :cond_6

    .line 91
    const-string v6, "connected"

    const-string v7, "mobile"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    if-ne v5, v8, :cond_6

    .line 93
    const/4 v0, 0x1

    .line 96
    :cond_6
    if-eqz v0, :cond_7

    .line 98
    const-wide/16 v6, 0xfa0

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 102
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/prey/actions/fileretrieval/FileretrievalService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v3, "intentFile":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    .end local v3    # "intentFile":Landroid/content/Intent;
    :cond_7
    :goto_3
    new-instance v6, Lcom/prey/events/Event;

    const-string v7, "ssid_changed"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 109
    .end local v0    # "connected":Z
    .end local v2    # "info":Lorg/json/JSONObject;
    .end local v5    # "wifiState":I
    :cond_8
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 110
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .restart local v2    # "info":Lorg/json/JSONObject;
    const-string v6, "wifi_state"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 112
    .restart local v5    # "wifiState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "___wifiState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 115
    if-ne v5, v8, :cond_9

    .line 116
    :try_start_4
    const-string v6, "connected"

    const-string v7, "wifi"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 118
    const-wide/16 v6, 0x7d0

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 121
    :goto_4
    :try_start_6
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 122
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/prey/actions/fileretrieval/FileretrievalService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .restart local v3    # "intentFile":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 127
    .end local v3    # "intentFile":Landroid/content/Intent;
    :cond_9
    :goto_5
    new-instance v6, Lcom/prey/events/Event;

    const-string v7, "ssid_changed"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/prey/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    .end local v2    # "info":Lorg/json/JSONObject;
    .end local v5    # "wifiState":I
    :cond_a
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 130
    invoke-static {p0}, Lcom/prey/events/factories/EventFactory;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 131
    invoke-static {p0}, Lcom/prey/events/factories/EventFactory;->notification(Landroid/content/Context;)V

    .line 132
    const/4 v0, 0x0

    .line 133
    .restart local v0    # "connected":Z
    invoke-static {p0}, Lcom/prey/managers/PreyConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/managers/PreyConnectivityManager;->isWifiConnected()Z

    move-result v6

    if-nez v6, :cond_b

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 135
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_b

    .line 136
    const-string v6, "connected"

    const-string v7, "reason"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 137
    const/4 v0, 0x1

    .line 141
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_b
    invoke-static {p0}, Lcom/prey/managers/PreyConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/managers/PreyConnectivityManager;->isMobileConnected()Z

    move-result v6

    if-nez v6, :cond_c

    .line 142
    const-string v6, "wifi_state"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 143
    .restart local v5    # "wifiState":I
    if-ne v5, v8, :cond_c

    .line 144
    const/4 v0, 0x1

    .line 147
    .end local v5    # "wifiState":I
    :cond_c
    if-eqz v0, :cond_d

    .line 148
    invoke-static {p0}, Lcom/prey/beta/actions/PreyBetaController;->startPrey(Landroid/content/Context;)V

    .line 149
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 150
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/prey/actions/fileretrieval/FileretrievalService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .restart local v3    # "intentFile":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    .end local v0    # "connected":Z
    .end local v3    # "intentFile":Landroid/content/Intent;
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 99
    .restart local v0    # "connected":Z
    .restart local v2    # "info":Lorg/json/JSONObject;
    .restart local v5    # "wifiState":I
    :catch_0
    move-exception v6

    goto/16 :goto_2

    .line 119
    .end local v0    # "connected":Z
    :catch_1
    move-exception v6

    goto/16 :goto_4

    .line 125
    :catch_2
    move-exception v6

    goto :goto_5

    .line 105
    .restart local v0    # "connected":Z
    :catch_3
    move-exception v6

    goto/16 :goto_3

    .line 59
    .end local v0    # "connected":Z
    .end local v5    # "wifiState":I
    :catch_4
    move-exception v6

    goto/16 :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    .line 160
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidLowBattery(Landroid/content/Context;)Z
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 168
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    const/16 v9, 0xc

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 172
    .local v2, "leastThreeHours":J
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prey/PreyConfig;->getLowBatteryDate()J

    move-result-wide v4

    .line 173
    .local v4, "lowBatteryDate":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lowBatteryDate :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/prey/events/factories/EventFactory;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "leastMinutes   :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/prey/events/factories/EventFactory;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 175
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_0

    cmp-long v9, v2, v4

    if-lez v9, :cond_1

    .line 176
    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 177
    .local v6, "now":J
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/prey/PreyConfig;->setLowBatteryDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v8, 0x1

    .line 182
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "leastThreeHours":J
    .end local v4    # "lowBatteryDate":J
    .end local v6    # "now":J
    :cond_1
    :goto_0
    return v8

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static notification(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 188
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 189
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessCamera(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/prey/PreyConfig;->setCanAccessCamara(Z)V

    .line 191
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessCoarseLocation(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/prey/PreyConfig;->setCanAccessCoarseLocation(Z)V

    .line 192
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessFineLocation(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/prey/PreyConfig;->setCanAccessFineLocation(Z)V

    .line 193
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessReadPhoneState(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/prey/PreyConfig;->setCanAccessReadPhoneState(Z)V

    .line 194
    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessCamera(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessCoarseLocation(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessFineLocation(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessReadPhoneState(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent3":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    const/high16 v4, 0x8000000

    invoke-static {p0, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 203
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 204
    .local v2, "nManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0200af

    .line 206
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 209
    .local v1, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 210
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 211
    const-string v4, "PREY"

    const/4 v5, 0x6

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 215
    .end local v0    # "intent3":Landroid/content/Intent;
    .end local v1    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v2    # "nManager":Landroid/app/NotificationManager;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method
