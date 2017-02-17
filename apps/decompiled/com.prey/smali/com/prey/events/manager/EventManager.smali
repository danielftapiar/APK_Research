.class public Lcom/prey/events/manager/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field public static final BATTERY:Ljava/lang/String; = "battery"

.field public static final PRIVATE_IP:Ljava/lang/String; = "privateip"

.field public static final UPTIME:Ljava/lang/String; = "uptime"

.field public static final WIFI:Ljava/lang/String; = "wifi"


# instance fields
.field private ctx:Landroid/content/Context;

.field public event:Lcom/prey/events/Event;

.field private mapData:Lcom/prey/events/manager/EventMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prey/events/manager/EventMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    .line 25
    iput-object v0, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    .line 34
    iput-object p1, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private isThisDeviceAlreadyRegisteredWithPrey(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey()Z

    move-result v0

    return v0
.end method

.method private sendEvents()V
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    invoke-virtual {v2}, Lcom/prey/events/manager/EventMap;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    .local v0, "jsonObjectStatus":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonObjectStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/managers/PreyWifiManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/managers/PreyWifiManager;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getLastEvent()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "lastEvent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 114
    const-string v2, "low_battery"

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v3}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isLocationLowBattery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationLowBatteryRunner.isValid(ctx):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/prey/events/manager/LocationLowBatteryRunner;->isValid(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/events/manager/LocationLowBatteryRunner;->isValid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/prey/events/manager/LocationLowBatteryRunner;

    iget-object v4, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/prey/events/manager/LocationLowBatteryRunner;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 120
    :try_start_0
    const-string v2, "locationLowBattery"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    const-string v2, "ssid_changed"

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v3}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v2}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v3}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prey/PreyConfig;->setLastEvent(Ljava/lang/String;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v3}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], info["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-virtual {v3}, Lcom/prey/events/Event;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/prey/events/manager/EventThread;

    iget-object v3, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    invoke-direct {v2, v3, v4, v0}, Lcom/prey/events/manager/EventThread;-><init>(Landroid/content/Context;Lcom/prey/events/Event;Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/prey/events/manager/EventThread;->start()V

    .line 136
    .end local v0    # "jsonObjectStatus":Lorg/json/JSONObject;
    .end local v1    # "lastEvent":Ljava/lang/String;
    :cond_2
    return-void

    .line 121
    .restart local v0    # "jsonObjectStatus":Lorg/json/JSONObject;
    .restart local v1    # "lastEvent":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/prey/events/Event;)V
    .locals 9
    .param p1, "event"    # Lcom/prey/events/Event;

    .prologue
    const/4 v8, 0x0

    .line 38
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/prey/events/manager/EventManager;->isThisDeviceAlreadyRegisteredWithPrey(Landroid/content/Context;)Z

    move-result v1

    .line 39
    .local v1, "isDeviceRegistered":Z
    const/4 v0, 0x0

    .line 40
    .local v0, "isConnectionExists":Z
    const/4 v2, 0x0

    .line 44
    .local v2, "isOnline":Z
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 47
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/managers/PreyWifiManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/managers/PreyWifiManager;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "ssid":Ljava/lang/String;
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getPreviousSsid()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "previousSsid":Ljava/lang/String;
    const/4 v5, 0x1

    .line 52
    .local v5, "validation":Z
    const-string v6, "ssid_changed"

    invoke-virtual {p1}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    if-eqz v4, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "<unknown ssid>"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "0x"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 54
    const/4 v5, 0x1

    .line 60
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/prey/events/Event;->getInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ssid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] previousSsid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change PreviousSsid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 63
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/prey/PreyConfig;->setPreviousSsid(Ljava/lang/String;)V

    .line 65
    :try_start_0
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->isConnectionExists()Z

    move-result v0

    .line 66
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/managers/PreyWifiManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/managers/PreyWifiManager;->isOnline()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 71
    :goto_1
    if-eqz v1, :cond_1

    .line 73
    if-eqz v0, :cond_1

    .line 75
    if-eqz v2, :cond_1

    .line 77
    new-instance v6, Lcom/prey/events/manager/EventMap;

    invoke-direct {v6}, Lcom/prey/events/manager/EventMap;-><init>()V

    iput-object v6, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    .line 78
    iput-object p1, p0, Lcom/prey/events/manager/EventManager;->event:Lcom/prey/events/Event;

    .line 79
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    const-string v7, "uptime"

    invoke-virtual {v6, v7, v8}, Lcom/prey/events/manager/EventMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    const-string v7, "wifi"

    invoke-virtual {v6, v7, v8}, Lcom/prey/events/manager/EventMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    const-string v7, "privateip"

    invoke-virtual {v6, v7, v8}, Lcom/prey/events/manager/EventMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v6, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    const-string v7, "battery"

    invoke-virtual {v6, v7, v8}, Lcom/prey/events/manager/EventMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v6, Lcom/prey/events/retrieves/EventRetrieveDataUptime;

    invoke-direct {v6}, Lcom/prey/events/retrieves/EventRetrieveDataUptime;-><init>()V

    iget-object v7, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-virtual {v6, v7, p0}, Lcom/prey/events/retrieves/EventRetrieveDataUptime;->execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V

    .line 84
    new-instance v6, Lcom/prey/events/retrieves/EventRetrieveDataWifi;

    invoke-direct {v6}, Lcom/prey/events/retrieves/EventRetrieveDataWifi;-><init>()V

    iget-object v7, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-virtual {v6, v7, p0}, Lcom/prey/events/retrieves/EventRetrieveDataWifi;->execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V

    .line 85
    new-instance v6, Lcom/prey/events/retrieves/EventRetrieveDataPrivateIp;

    invoke-direct {v6}, Lcom/prey/events/retrieves/EventRetrieveDataPrivateIp;-><init>()V

    iget-object v7, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-virtual {v6, v7, p0}, Lcom/prey/events/retrieves/EventRetrieveDataPrivateIp;->execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V

    .line 86
    new-instance v6, Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    invoke-direct {v6}, Lcom/prey/events/retrieves/EventRetrieveDataBattery;-><init>()V

    iget-object v7, p0, Lcom/prey/events/manager/EventManager;->ctx:Landroid/content/Context;

    invoke-virtual {v6, v7, p0}, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V

    .line 97
    :cond_1
    return-void

    .line 56
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 67
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public receivesData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    invoke-virtual {v0, p1, p2}, Lcom/prey/events/manager/EventMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/prey/events/manager/EventManager;->mapData:Lcom/prey/events/manager/EventMap;

    invoke-virtual {v0}, Lcom/prey/events/manager/EventMap;->isCompleteData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/prey/events/manager/EventManager;->sendEvents()V

    .line 104
    :cond_0
    return-void
.end method
