.class public Lcom/prey/net/PreyWebServices;
.super Ljava/lang/Object;
.source "PreyWebServices.java"


# static fields
.field private static _instance:Lcom/prey/net/PreyWebServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/net/PreyWebServices;->_instance:Lcom/prey/net/PreyWebServices;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 420
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "deviceKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-ne v1, v4, :cond_1

    .line 422
    :cond_0
    new-instance v4, Lcom/prey/exceptions/PreyException;

    const-string v5, "Device key not found on the configuration"

    invoke-direct {v4, v5}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 423
    :cond_1
    invoke-static {p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "apiv2":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "devices/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "url":Ljava/lang/String;
    return-object v3
.end method

.method private getDeviceUrlJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceWebControlPanelUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 372
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "deviceKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    if-ne v1, v3, :cond_1

    .line 374
    :cond_0
    new-instance v3, Lcom/prey/exceptions/PreyException;

    const-string v4, "Device key not found on the configuration"

    invoke-direct {v3, v4}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_1
    invoke-static {p0}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "apiv2":Ljava/lang/String;
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "devices/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getEventsUrlJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/events"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/prey/net/PreyWebServices;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/prey/net/PreyWebServices;->_instance:Lcom/prey/net/PreyWebServices;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/prey/net/PreyWebServices;

    invoke-direct {v0}, Lcom/prey/net/PreyWebServices;-><init>()V

    sput-object v0, Lcom/prey/net/PreyWebServices;->_instance:Lcom/prey/net/PreyWebServices;

    .line 58
    :cond_0
    sget-object v0, Lcom/prey/net/PreyWebServices;->_instance:Lcom/prey/net/PreyWebServices;

    return-object v0
.end method

.method private getReportUrlJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/reports.json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResponseUrlJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVerifyUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/verify.json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private googleLookup(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prey/PreyPhone$Wifi;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "listwifi":Ljava/util/List;, "Ljava/util/List<Lcom/prey/PreyPhone$Wifi;>;"
    const-string v1, "https://maps.googleapis.com/maps/api/browserlocation/json?browser=firefox&sensor=true"

    .line 765
    .local v1, "queryString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 766
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "ssid":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&wifi=mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%7C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ssid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%7C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ss:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v3}, Lcom/prey/PreyPhone$Wifi;->getSignalStrength()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 778
    .end local v2    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 780
    :cond_0
    return-object v1
.end method

.method private registerNewDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "api_key"    # Ljava/lang/String;
    .param p3, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v8

    .line 148
    .local v8, "preyConfig":Lcom/prey/PreyConfig;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 149
    .local v6, "model":Ljava/lang/String;
    const-string v11, "Google"

    .line 151
    .local v11, "vendor":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/prey/backwardcompatibility/AboveCupcakeSupport;->getDeviceVendor()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 154
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v7, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "api_key"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v12, "title"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v12, "device_type"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v12, "os"

    const-string v13, "Android"

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v12, "os_version"

    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v12, "referer_device_id"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v12, "plan"

    const-string v13, "free"

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v12, "model_name"

    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v12, "vendor_name"

    invoke-virtual {v7, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/prey/net/PreyWebServices;->increaseData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v7

    .line 166
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 168
    .local v5, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    new-instance v12, Lcom/prey/PreyPhone;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/prey/PreyPhone;->getHardware()Lcom/prey/PreyPhone$Hardware;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prey/PreyPhone$Hardware;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "imei":Ljava/lang/String;
    const-string v12, "physical_address"

    invoke-virtual {v7, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/4 v9, 0x0

    .line 173
    .local v9, "response":Lcom/prey/net/PreyHttpResponse;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "apiv2":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "devices.json"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "url":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v12

    invoke-virtual {v12, v10, v7}, Lcom/prey/net/PreyRestHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v9

    .line 177
    if-nez v9, :cond_0

    .line 178
    new-instance v12, Lcom/prey/exceptions/PreyException;

    const v13, 0x7f090054

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "[-1]"

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .end local v2    # "apiv2":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 191
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    new-instance v12, Lcom/prey/exceptions/PreyException;

    const v13, 0x7f090056

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "apiv2":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x12e

    if-eq v12, v13, :cond_1

    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x1a6

    if-eq v12, v13, :cond_1

    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x193

    if-ne v12, v13, :cond_2

    .line 184
    :cond_1
    new-instance v12, Lcom/prey/exceptions/NoMoreDevicesAllowedException;

    const v13, 0x7f0900df

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/prey/exceptions/NoMoreDevicesAllowedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 186
    :cond_2
    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x12b

    if-le v12, v13, :cond_3

    .line 187
    new-instance v12, Lcom/prey/exceptions/PreyException;

    const v13, 0x7f090054

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v2    # "apiv2":Ljava/lang/String;
    .end local v4    # "imei":Ljava/lang/String;
    .end local v5    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    .end local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "response":Lcom/prey/net/PreyHttpResponse;
    .end local v10    # "url":Ljava/lang/String;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 195
    .restart local v2    # "apiv2":Ljava/lang/String;
    .restart local v4    # "imei":Ljava/lang/String;
    .restart local v5    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    .restart local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "response":Lcom/prey/net/PreyHttpResponse;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_3
    return-object v9
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p1, "apikey"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-static/range {p3 .. p3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v11

    .line 301
    .local v11, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v4, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 305
    .local v15, "xml":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v2

    const-string v5, "profile.xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 306
    .local v14, "uri":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v14, v4, v0, v1}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v12

    .line 307
    .local v12, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v12}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 312
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "____[token]_________________apikey:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " password:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 313
    invoke-static/range {p3 .. p3}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "apiv2":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "get_token.json"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "uri2":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v2

    const-string v7, "application/json"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v12

    .line 316
    if-eqz v12, :cond_0

    .line 317
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v12}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    .local v10, "jsnobject":Lorg/json/JSONObject;
    const-string v2, "token"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "tokenJwt":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tokenJwt:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 320
    invoke-static/range {p3 .. p3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/prey/PreyConfig;->setTokenJwt(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    .end local v3    # "uri2":Ljava/lang/String;
    .end local v8    # "apiv2":Ljava/lang/String;
    .end local v10    # "jsnobject":Lorg/json/JSONObject;
    .end local v13    # "tokenJwt":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "____[token]_________________xml:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 329
    return-object v15

    .line 308
    .end local v12    # "response":Lcom/prey/net/PreyHttpResponse;
    .end local v14    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 309
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/prey/exceptions/PreyException;

    const v5, 0x7f090056

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v9}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 322
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "uri2":Ljava/lang/String;
    .restart local v8    # "apiv2":Ljava/lang/String;
    .restart local v12    # "response":Lcom/prey/net/PreyHttpResponse;
    .restart local v14    # "uri":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v2, "token: nulo"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 325
    .end local v3    # "uri2":Ljava/lang/String;
    .end local v8    # "apiv2":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public checkPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apikey"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p2, p3, p1}, Lcom/prey/net/PreyWebServices;->checkPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "xml":Ljava/lang/String;
    const-string v1, "<key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public deleteDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 336
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceWebControlPanelUiUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v6

    .line 341
    invoke-virtual {v6, v4, v1}, Lcom/prey/net/PreyRestHttpClient;->delete(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v3

    .line 342
    .local v3, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v3}, Lcom/prey/net/PreyHttpResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v3}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 348
    .local v5, "xml":Ljava/lang/String;
    return-object v5

    .line 345
    .end local v3    # "response":Lcom/prey/net/PreyHttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/prey/exceptions/PreyException;

    const v7, 0x7f090056

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public forgotPassword(Landroid/content/Context;)Z
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    const v7, 0x7f090055

    .line 352
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    .line 353
    .local v3, "preyConfig":Lcom/prey/PreyConfig;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "forgot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "URL":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "user[email]"

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :try_start_0
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/prey/net/PreyRestHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v4

    .line 360
    .local v4, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v4}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_0

    .line 361
    new-instance v5, Lcom/prey/exceptions/PreyException;

    const v6, 0x7f090055

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v4    # "response":Lcom/prey/net/PreyHttpResponse;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/prey/exceptions/PreyException;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "response":Lcom/prey/net/PreyHttpResponse;
    :cond_0
    const/4 v5, 0x1

    return v5
.end method

.method public geofencing(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/geofencing.json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 785
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 786
    const/4 v4, 0x0

    .line 787
    .local v4, "sb":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v2

    .line 789
    .local v2, "preyRestHttpClient":Lcom/prey/net/PreyRestHttpClient;
    const/4 v1, 0x0

    .line 790
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lcom/prey/net/PreyRestHttpClient;->getAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v3

    .line 791
    .local v3, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v3}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v4

    .line 792
    if-eqz v4, :cond_0

    .line 793
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 798
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    move-object v6, v4

    .line 799
    .end local v3    # "response":Lcom/prey/net/PreyHttpResponse;
    :goto_0
    return-object v6

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error, causa:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getActionsJsonToPerform(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/prey/json/parser/JSONParser;

    invoke-direct {v2}, Lcom/prey/json/parser/JSONParser;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/prey/json/parser/JSONParser;->getJSONFromUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 637
    .local v0, "lista":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    return-object v0
.end method

.method public getContact(Landroid/content/Context;)Lcom/prey/net/PreyHttpResponse;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 716
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 717
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    const/4 v3, 0x0

    .line 719
    .local v3, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 720
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/contacts.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 722
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/prey/net/PreyRestHttpClient;->getAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 727
    .end local v1    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Contact wasn\'t send"

    invoke-static {v5, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDataUrlJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data.json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 440
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v1}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "deviceKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    if-ne v0, v3, :cond_1

    .line 442
    :cond_0
    new-instance v3, Lcom/prey/exceptions/PreyException;

    const-string v4, "Device key not found on the configuration"

    invoke-direct {v3, v4}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_1
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "devices/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "url":Ljava/lang/String;
    return-object v2
.end method

.method public getDeviceUrlV2(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 430
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "deviceKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-ne v1, v4, :cond_1

    .line 432
    :cond_0
    new-instance v4, Lcom/prey/exceptions/PreyException;

    const-string v5, "Device key not found on the configuration"

    invoke-direct {v4, v5}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    :cond_1
    invoke-static {p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "apiv2":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "devices/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "url":Ljava/lang/String;
    return-object v3
.end method

.method public getDeviceWebControlPanelUiUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 382
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "deviceKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    if-ne v1, v3, :cond_1

    .line 384
    :cond_0
    new-instance v3, Lcom/prey/exceptions/PreyException;

    const-string v4, "Device key not found on the configuration"

    invoke-direct {v3, v4}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    :cond_1
    invoke-static {p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "apiv2":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "devices/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getFileUrlJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 731
    const-string v2, "http://ifconfig.me/ip"

    .line 732
    .local v2, "uri":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    .line 733
    .local v0, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v0}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "responseAsString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseAsString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 735
    return-object v1
.end method

.method public getLocation(Landroid/content/Context;Ljava/util/List;)Lcom/prey/actions/location/PreyLocation;
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/PreyPhone$Wifi;",
            ">;)",
            "Lcom/prey/actions/location/PreyLocation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 739
    .local p2, "listWifi":Ljava/util/List;, "Ljava/util/List<Lcom/prey/PreyPhone$Wifi;>;"
    const/4 v5, 0x0

    .line 740
    .local v5, "location":Lcom/prey/actions/location/PreyLocation;
    invoke-direct {p0, p2}, Lcom/prey/net/PreyWebServices;->googleLookup(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 741
    .local v8, "url":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "location url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 742
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v6

    .line 743
    .local v6, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v6}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v7

    .line 744
    .local v7, "responseAsString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "location resp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v6}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_0

    .line 746
    if-eqz v7, :cond_0

    const-string v9, "OK"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 747
    new-instance v5, Lcom/prey/actions/location/PreyLocation;

    .end local v5    # "location":Lcom/prey/actions/location/PreyLocation;
    invoke-direct {v5}, Lcom/prey/actions/location/PreyLocation;-><init>()V

    .line 748
    .restart local v5    # "location":Lcom/prey/actions/location/PreyLocation;
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 749
    .local v1, "jsnobject":Lorg/json/JSONObject;
    const-string v9, "accuracy"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "accuracy":Ljava/lang/String;
    const-string v9, "location"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 751
    .local v2, "jsnobjectLocation":Lorg/json/JSONObject;
    const-string v9, "lat"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "lat":Ljava/lang/String;
    const-string v9, "lng"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "lng":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/prey/actions/location/PreyLocation;->setLat(D)V

    .line 754
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/prey/actions/location/PreyLocation;->setLng(D)V

    .line 755
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v5, v9}, Lcom/prey/actions/location/PreyLocation;->setAccuracy(F)V

    .line 756
    const-string v9, "wifi"

    invoke-virtual {v5, v9}, Lcom/prey/actions/location/PreyLocation;->setMethod(Ljava/lang/String;)V

    .line 759
    .end local v0    # "accuracy":Ljava/lang/String;
    .end local v1    # "jsnobject":Lorg/json/JSONObject;
    .end local v2    # "jsnobjectLocation":Lorg/json/JSONObject;
    .end local v3    # "lat":Ljava/lang/String;
    .end local v4    # "lng":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method public googlePlayVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 893
    :try_start_0
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getPreyGooglePlay()Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, "uri":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v2

    .line 895
    .local v2, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v2}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, "responseAsString":Ljava/lang/String;
    const-string v6, "softwareVersion\">"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 897
    .local v1, "po":I
    add-int/lit8 v6, v1, 0x11

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 898
    const-string v6, "</"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 899
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 902
    .end local v1    # "po":I
    .end local v2    # "response":Lcom/prey/net/PreyHttpResponse;
    .end local v3    # "responseAsString":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public increaseData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/prey/PreyPhone;

    invoke-direct {v2, p1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    .line 451
    .local v2, "phone":Lcom/prey/PreyPhone;
    invoke-virtual {v2}, Lcom/prey/PreyPhone;->getHardware()Lcom/prey/PreyPhone$Hardware;

    move-result-object v0

    .line 452
    .local v0, "hardware":Lcom/prey/PreyPhone$Hardware;
    const-string v3, "hardware_attributes"

    .line 453
    .local v3, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[uuid]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[bios_vendor]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getBiosVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[bios_version]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getBiosVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[mb_vendor]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getMbVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[mb_serial]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getMbSerial()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[mb_model]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getMbModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[cpu_model]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getCpuModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[cpu_speed]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getCpuSpeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[cpu_cores]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getCpuCores()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[ram_size]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getTotalMemory()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[serial_number]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Hardware;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "nic":I
    invoke-virtual {v2}, Lcom/prey/PreyPhone;->getWifi()Lcom/prey/PreyPhone$Wifi;

    move-result-object v4

    .line 468
    .local v4, "wifi":Lcom/prey/PreyPhone$Wifi;
    if-eqz v4, :cond_0

    .line 469
    const-string v3, "hardware_attributes[network]"

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[nic_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][name]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[nic_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][interface_type]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getInterfaceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[nic_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][ip_address]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[nic_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][gateway_ip]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getGatewayIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[nic_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][netmask]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getNetmask()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[nic_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][mac_address]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/PreyPhone$Wifi;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    return-object p2
.end method

.method public registerNewAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/PreyAccountData;
    .locals 21
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v9, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "name"

    move-object/from16 v0, p2

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v15, "email"

    move-object/from16 v0, p3

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v15, "password"

    move-object/from16 v0, p4

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v15, "password_confirmation"

    move-object/from16 v0, p4

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v15, "country_name"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v10, 0x0

    .line 83
    .local v10, "response":Lcom/prey/net/PreyHttpResponse;
    const-string v13, ""

    .line 85
    .local v13, "xml":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v15

    invoke-virtual {v15}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "apiv2":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "signup.json"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "url":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v15

    invoke-virtual {v15, v12, v9}, Lcom/prey/net/PreyRestHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v10

    .line 89
    invoke-virtual {v10}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 95
    const-string v3, ""

    .line 96
    .local v3, "apiKey":Ljava/lang/String;
    const-string v15, "\"key\""

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 98
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .local v7, "jsnobject":Lorg/json/JSONObject;
    const-string v15, "key"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 115
    .end local v7    # "jsnobject":Lorg/json/JSONObject;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v3, v2}, Lcom/prey/net/PreyWebServices;->registerNewDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v11

    .line 116
    .local v11, "responseDevice":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v11}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "xmlDeviceId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 118
    .local v5, "deviceId":Ljava/lang/String;
    const-string v15, "{\"key\""

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 120
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v7    # "jsnobject":Lorg/json/JSONObject;
    const-string v15, "key"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 129
    .end local v7    # "jsnobject":Lorg/json/JSONObject;
    :goto_1
    new-instance v8, Lcom/prey/PreyAccountData;

    invoke-direct {v8}, Lcom/prey/PreyAccountData;-><init>()V

    .line 130
    .local v8, "newAccount":Lcom/prey/PreyAccountData;
    invoke-virtual {v8, v3}, Lcom/prey/PreyAccountData;->setApiKey(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v8, v5}, Lcom/prey/PreyAccountData;->setDeviceId(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/prey/PreyAccountData;->setEmail(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/prey/PreyAccountData;->setPassword(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/prey/PreyAccountData;->setName(Ljava/lang/String;)V

    .line 135
    return-object v8

    .line 90
    .end local v3    # "apiKey":Ljava/lang/String;
    .end local v4    # "apiv2":Ljava/lang/String;
    .end local v5    # "deviceId":Ljava/lang/String;
    .end local v8    # "newAccount":Lcom/prey/PreyAccountData;
    .end local v11    # "responseDevice":Lcom/prey/net/PreyHttpResponse;
    .end local v12    # "url":Ljava/lang/String;
    .end local v14    # "xmlDeviceId":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 91
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    new-instance v15, Lcom/prey/exceptions/PreyException;

    const v16, 0x7f090056

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 105
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "apiKey":Ljava/lang/String;
    .restart local v4    # "apiv2":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v15

    const/16 v16, 0x12b

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 106
    invoke-virtual {v10}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v15

    const/16 v16, 0x1a6

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const-string v15, "already"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_1

    .line 107
    new-instance v15, Lcom/prey/exceptions/PreyException;

    const v16, 0x7f090053

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 109
    :cond_1
    new-instance v15, Lcom/prey/exceptions/PreyException;

    const v16, 0x7f090054

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 111
    :cond_2
    new-instance v15, Lcom/prey/exceptions/PreyException;

    const v16, 0x7f090054

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 126
    .restart local v5    # "deviceId":Ljava/lang/String;
    .restart local v11    # "responseDevice":Lcom/prey/net/PreyHttpResponse;
    .restart local v14    # "xmlDeviceId":Ljava/lang/String;
    :cond_3
    new-instance v15, Lcom/prey/exceptions/PreyException;

    const v16, 0x7f090054

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 122
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 100
    .end local v5    # "deviceId":Ljava/lang/String;
    .end local v11    # "responseDevice":Lcom/prey/net/PreyHttpResponse;
    .end local v14    # "xmlDeviceId":Ljava/lang/String;
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method public registerNewDeviceRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mail"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    .line 643
    .local v6, "preyConfig":Lcom/prey/PreyConfig;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 644
    .local v4, "model":Ljava/lang/String;
    const-string v9, "Google"

    .line 645
    .local v9, "vendor":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prey/PreyConfig;->isCupcakeOrAbove()Z

    move-result v10

    if-nez v10, :cond_0

    .line 646
    invoke-static {}, Lcom/prey/backwardcompatibility/AboveCupcakeSupport;->getDeviceVendor()Ljava/lang/String;

    move-result-object v9

    .line 649
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 650
    .local v5, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "device[notification_id]"

    move-object/from16 v0, p3

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v10, "device[remote_email]"

    invoke-virtual {v5, v10, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v10, "device[title]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v10, "device[device_type]"

    move-object/from16 v0, p4

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v10, "device[os]"

    const-string v11, "Android"

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v10, "device[os_version]"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v10, "device[referer_device_id]"

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v10, "device[plan]"

    const-string v11, "free"

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v10, "device[model_name]"

    invoke-virtual {v5, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v10, "device[vendor_name]"

    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {p0, p1, v5}, Lcom/prey/net/PreyWebServices;->increaseData(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 662
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 663
    .local v3, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "imei":Ljava/lang/String;
    const-string v10, "device[physical_address]"

    invoke-virtual {v5, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const/4 v7, 0x0

    .line 668
    .local v7, "response":Lcom/prey/net/PreyHttpResponse;
    :try_start_0
    const-string v8, "https://panel.preyapp.com/api/v2/remote.json"

    .line 669
    .local v8, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v10

    invoke-virtual {v10, v8, v5}, Lcom/prey/net/PreyRestHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 674
    return-object v7

    .line 670
    .end local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/prey/exceptions/PreyException;

    const v11, 0x7f090056

    invoke-virtual {p1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public registerNewDeviceToAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/PreyAccountData;
    .locals 24
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ws email:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " password:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v12

    .line 201
    .local v12, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v11, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 205
    .local v13, "response":Lcom/prey/net/PreyHttpResponse;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/prey/FileConfigReader;->getApiV2()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "apiv2":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "profile.xml"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 207
    .local v17, "url":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_____url:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v13

    .line 209
    invoke-virtual {v13}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v18

    .line 210
    .local v18, "xml":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "xml:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const-string v15, ""

    .line 216
    .local v15, "status":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 217
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 219
    :cond_0
    const-string v20, "<key"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 220
    new-instance v20, Lcom/prey/exceptions/PreyException;

    const v21, 0x7f090054

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 211
    .end local v5    # "apiv2":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 212
    .local v7, "e":Ljava/lang/Exception;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v20, Lcom/prey/exceptions/PreyException;

    const v21, 0x7f090056

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 227
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "apiv2":Ljava/lang/String;
    .restart local v15    # "status":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v18    # "xml":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v20, "<key>"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v8, v20, 0x5

    .line 228
    .local v8, "from":I
    const-string v20, "</key>"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 229
    .local v16, "to":I
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 233
    .local v4, "apiKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 234
    .local v6, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/prey/net/PreyWebServices;->registerNewDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v14

    .line 235
    .local v14, "responseDevice":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v14}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v19

    .line 237
    .local v19, "xmlDeviceId":Ljava/lang/String;
    const-string v20, "{\"key\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 239
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v9, "jsnobject":Lorg/json/JSONObject;
    const-string v20, "key"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 245
    .end local v9    # "jsnobject":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    new-instance v10, Lcom/prey/PreyAccountData;

    invoke-direct {v10}, Lcom/prey/PreyAccountData;-><init>()V

    .line 246
    .local v10, "newAccount":Lcom/prey/PreyAccountData;
    invoke-virtual {v10, v4}, Lcom/prey/PreyAccountData;->setApiKey(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10, v6}, Lcom/prey/PreyAccountData;->setDeviceId(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/prey/PreyAccountData;->setEmail(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/prey/PreyAccountData;->setPassword(Ljava/lang/String;)V

    .line 250
    return-object v10

    .line 230
    .end local v4    # "apiKey":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v8    # "from":I
    .end local v10    # "newAccount":Lcom/prey/PreyAccountData;
    .end local v14    # "responseDevice":Lcom/prey/net/PreyHttpResponse;
    .end local v16    # "to":I
    .end local v19    # "xmlDeviceId":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 231
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v20, Lcom/prey/exceptions/PreyException;

    const v21, 0x7f090054

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 241
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "apiKey":Ljava/lang/String;
    .restart local v6    # "deviceId":Ljava/lang/String;
    .restart local v8    # "from":I
    .restart local v14    # "responseDevice":Lcom/prey/net/PreyHttpResponse;
    .restart local v16    # "to":I
    .restart local v19    # "xmlDeviceId":Ljava/lang/String;
    :catch_2
    move-exception v20

    goto :goto_0
.end method

.method public registerNewDeviceWithApiKeyEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/PreyAccountData;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, ""

    .line 256
    .local v0, "deviceId":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p4}, Lcom/prey/net/PreyWebServices;->registerNewDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v3

    .line 257
    .local v3, "responseDevice":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v3}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "xmlDeviceId":Ljava/lang/String;
    const-string v5, "{\"key\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "jsnobject":Lorg/json/JSONObject;
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    .end local v1    # "jsnobject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "newAccount":Lcom/prey/PreyAccountData;
    if-eqz v0, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    new-instance v2, Lcom/prey/PreyAccountData;

    .end local v2    # "newAccount":Lcom/prey/PreyAccountData;
    invoke-direct {v2}, Lcom/prey/PreyAccountData;-><init>()V

    .line 270
    .restart local v2    # "newAccount":Lcom/prey/PreyAccountData;
    invoke-virtual {v2, p2}, Lcom/prey/PreyAccountData;->setApiKey(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, v0}, Lcom/prey/PreyAccountData;->setDeviceId(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, p3}, Lcom/prey/PreyAccountData;->setEmail(Ljava/lang/String;)V

    .line 273
    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/prey/PreyAccountData;->setPassword(Ljava/lang/String;)V

    .line 275
    :cond_1
    return-object v2

    .line 263
    .end local v2    # "newAccount":Lcom/prey/PreyAccountData;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public sendBrowser(Landroid/content/Context;Ljava/util/HashMap;)Lcom/prey/net/PreyHttpResponse;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 701
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    const/4 v2, 0x0

    .line 703
    .local v2, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    sput-object v4, Lcom/prey/PreyConfig;->postUrl:Ljava/lang/String;

    .line 706
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 712
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Contact wasn\'t send"

    invoke-static {v4, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendContact(Landroid/content/Context;Ljava/util/HashMap;)Lcom/prey/net/PreyHttpResponse;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .prologue
    .line 679
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 682
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    const/4 v2, 0x0

    .line 685
    .local v2, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    sput-object v4, Lcom/prey/PreyConfig;->postUrl:Ljava/lang/String;

    .line 690
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 696
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Contact wasn\'t send"

    invoke-static {v4, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendEvent(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 803
    new-instance v0, Lcom/prey/net/PreyWebServices$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/prey/net/PreyWebServices$1;-><init>(Lcom/prey/net/PreyWebServices;Landroid/content/Context;I)V

    .line 847
    invoke-virtual {v0}, Lcom/prey/net/PreyWebServices$1;->start()V

    .line 848
    return-void
.end method

.method public sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "correlationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 586
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 587
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    const/4 v2, 0x0

    .line 589
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getResponseUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    sput-object v4, Lcom/prey/PreyConfig;->postUrl:Ljava/lang/String;

    .line 591
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3, p2, p3, p4}, Lcom/prey/net/PreyRestHttpClient;->postAutenticationCorrelationId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    .line 592
    .local v0, "httpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v0}, Lcom/prey/net/PreyHttpResponse;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify Action Result sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0    # "httpResponse":Lcom/prey/net/PreyHttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 594
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "correlationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 583
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 568
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 569
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    const/4 v2, 0x0

    .line 571
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getResponseUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    sput-object v4, Lcom/prey/PreyConfig;->postUrl:Ljava/lang/String;

    .line 573
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    .line 574
    .local v0, "httpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v0}, Lcom/prey/net/PreyHttpResponse;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify Action Result sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0    # "httpResponse":Lcom/prey/net/PreyHttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 576
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public sendPreyHttpData(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/prey/net/PreyHttpResponse;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;)",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .prologue
    .local p2, "dataToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/HttpDataService;>;"
    const/4 v12, 0x1

    .line 484
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    .line 485
    .local v5, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v1, "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prey/actions/HttpDataService;

    .line 488
    .local v3, "httpDataService":Lcom/prey/actions/HttpDataService;
    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {v3}, Lcom/prey/actions/HttpDataService;->getDataAsParameters()Ljava/util/HashMap;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 490
    invoke-virtual {v3}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 491
    invoke-virtual {v3}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 495
    .end local v3    # "httpDataService":Lcom/prey/actions/HttpDataService;
    :cond_1
    const/4 v6, 0x0

    .line 496
    .local v6, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-gtz v8, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 497
    :cond_2
    new-instance v8, Lcom/prey/PreyPhone;

    invoke-direct {v8, p1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/prey/PreyPhone;->getHardware()Lcom/prey/PreyPhone$Hardware;

    move-result-object v2

    .line 498
    .local v2, "hardware":Lcom/prey/PreyPhone$Hardware;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prey/PreyConfig;->isSendData()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2}, Lcom/prey/PreyPhone$Hardware;->getTotalMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 499
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/prey/PreyConfig;->setSendData(Z)V

    .line 500
    const-string v8, "hardware_attributes[ram_size]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/prey/PreyPhone$Hardware;->getTotalMemory()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_3
    const-string v8, ""

    invoke-virtual {v2}, Lcom/prey/PreyPhone$Hardware;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prey/PreyConfig;->isSentUuidSerialNumber()Z

    move-result v8

    if-nez v8, :cond_4

    .line 503
    const-string v8, "hardware_attributes[uuid]"

    invoke-virtual {v2}, Lcom/prey/PreyPhone$Hardware;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v8, "hardware_attributes[serial_number]"

    invoke-virtual {v2}, Lcom/prey/PreyPhone$Hardware;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/prey/PreyConfig;->setSentUuidSerialNumber(Z)V

    .line 508
    :cond_4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/prey/net/PreyWebServices;->getDataUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 510
    const/4 v8, 0x0

    sput-object v8, Lcom/prey/PreyConfig;->postUrl:Ljava/lang/String;

    .line 511
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6

    .line 512
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v6

    .line 516
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data sent_: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v6, :cond_7

    const-string v8, ""

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 521
    .end local v2    # "hardware":Lcom/prey/PreyPhone$Hardware;
    .end local v7    # "url":Ljava/lang/String;
    :cond_5
    :goto_3
    return-object v6

    .line 514
    .restart local v2    # "hardware":Lcom/prey/PreyPhone$Hardware;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v8

    invoke-virtual {v8, v7, v4, v1}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v6

    goto :goto_1

    .line 516
    :cond_7
    invoke-virtual {v6}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 517
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "Data wasn\'t send"

    invoke-static {v8, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public sendPreyHttpEvent(Landroid/content/Context;Lcom/prey/events/Event;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/prey/events/Event;
    .param p3, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 539
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getEventsUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 541
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "name"

    invoke-virtual {p2}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v7, "info"

    invoke-virtual {p2}, Lcom/prey/events/Event;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendPreyHttpEvent url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/prey/events/Event;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "status":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v7

    invoke-virtual {v7, v6, v5, v3}, Lcom/prey/net/PreyRestHttpClient;->postStatusAutentication(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v4

    .line 549
    .local v4, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v4}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 551
    new-instance v7, Lcom/prey/json/parser/JSONParser;

    invoke-direct {v7}, Lcom/prey/json/parser/JSONParser;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/prey/json/parser/JSONParser;->getJSONFromTxt(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 552
    .local v1, "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 553
    invoke-static {p1}, Lcom/prey/actions/observer/ActionsController;->getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;

    move-result-object v7

    invoke-virtual {v7, p1, v1}, Lcom/prey/actions/observer/ActionsController;->runActionJson(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v1    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 558
    const-string v7, "Event wasn\'t send"

    invoke-static {v7, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendPreyHttpReport(Landroid/content/Context;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;)",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .prologue
    .line 601
    .local p2, "dataToSend":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    .line 603
    .local v4, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v3, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v1, "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prey/actions/HttpDataService;

    .line 606
    .local v2, "httpDataService":Lcom/prey/actions/HttpDataService;
    if-eqz v2, :cond_0

    .line 607
    invoke-virtual {v2}, Lcom/prey/actions/HttpDataService;->getReportAsParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 608
    invoke-virtual {v2}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 609
    invoke-virtual {v2}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 614
    .end local v2    # "httpDataService":Lcom/prey/actions/HttpDataService;
    :cond_1
    const/4 v5, 0x0

    .line 616
    .local v5, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getReportUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, "url":Ljava/lang/String;
    const/4 v7, 0x0

    sput-object v7, Lcom/prey/PreyConfig;->postUrl:Ljava/lang/String;

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "report url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 621
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 622
    :cond_2
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lcom/prey/net/PreyRestHttpClient;->postAutenticationTimeout(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v5

    .line 625
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Report sent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_4

    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 629
    .end local v6    # "url":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 624
    .restart local v6    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v7

    invoke-virtual {v7, v6, v3, v1}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v5

    goto :goto_1

    .line 625
    :cond_4
    invoke-virtual {v5}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_2

    .line 626
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Report wasn\'t send:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public sendTree(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getDeviceUrlApiv2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data.json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "uri":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/prey/net/PreyRestHttpClient;->postJsonAutentication(Ljava/lang/String;Lorg/json/JSONObject;)I

    .line 853
    return-void
.end method

.method public setPushRegistrationId(Landroid/content/Context;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v3, "notification_id"

    invoke-direct {v0, v3}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 283
    const-string v3, "notification_id"

    invoke-virtual {v0, v3}, Lcom/prey/actions/HttpDataService;->setKey(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p2}, Lcom/prey/actions/HttpDataService;->setSingleData(Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "dataToBeSent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/HttpDataService;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/prey/net/PreyWebServices;->sendPreyHttpData(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v2

    .line 288
    .local v2, "response":Lcom/prey/net/PreyHttpResponse;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 289
    const-string v3, "c2dm registry id set succesfully"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-object v2
.end method

.method public uploadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)I
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "uploadID"    # Ljava/lang/String;
    .param p4, "total"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upload/upload?uploadID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "uri":Ljava/lang/String;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prey/net/PreyRestHttpClient;->uploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;J)I

    move-result v0

    return v0
.end method

.method public uploadStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/prey/actions/fileretrieval/FileretrievalDto;
    .locals 16
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uploadID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v2, 0x0

    .line 862
    .local v2, "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/prey/PreyConfig;->getPreyUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "upload/upload?uploadID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 863
    .local v12, "uri":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/prey/net/PreyRestHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v7

    .line 864
    .local v7, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-virtual {v7}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v8

    .line 865
    .local v8, "responseAsString":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uploadStatus resp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v7}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_0

    .line 867
    if-eqz v8, :cond_0

    .line 868
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/prey/net/PreyHttpResponse;->getResponseAsString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 869
    .local v4, "jsnobject":Lorg/json/JSONObject;
    const-string v13, "ID"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, "id":Ljava/lang/String;
    const-string v13, "Name"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "name":Ljava/lang/String;
    const-string v13, "Size"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, "size":Ljava/lang/String;
    const-string v13, "Total"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 873
    .local v11, "total":Ljava/lang/String;
    const-string v13, "Status"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 874
    .local v10, "status":Ljava/lang/String;
    const-string v13, "Path"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 875
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Lcom/prey/actions/fileretrieval/FileretrievalDto;

    .end local v2    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    invoke-direct {v2}, Lcom/prey/actions/fileretrieval/FileretrievalDto;-><init>()V

    .line 876
    .restart local v2    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    invoke-virtual {v2, v3}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setFileId(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v2, v5}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setName(Ljava/lang/String;)V

    .line 878
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setSize(J)V

    .line 879
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setTotal(J)V

    .line 880
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setStatus(I)V

    .line 881
    invoke-virtual {v2, v6}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setPath(Ljava/lang/String;)V

    .line 884
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsnobject":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "size":Ljava/lang/String;
    .end local v10    # "status":Ljava/lang/String;
    .end local v11    # "total":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v13

    const/16 v14, 0x194

    if-ne v13, v14, :cond_1

    .line 885
    new-instance v2, Lcom/prey/actions/fileretrieval/FileretrievalDto;

    .end local v2    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    invoke-direct {v2}, Lcom/prey/actions/fileretrieval/FileretrievalDto;-><init>()V

    .line 886
    .restart local v2    # "dto":Lcom/prey/actions/fileretrieval/FileretrievalDto;
    invoke-virtual {v7}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/prey/actions/fileretrieval/FileretrievalDto;->setStatus(I)V

    .line 888
    :cond_1
    return-object v2
.end method

.method public verify(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/prey/net/PreyWebServices;->getVerifyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 530
    .local v1, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 531
    .local v0, "config":Lcom/prey/PreyConfig;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/prey/net/PreyRestHttpClient;->getAutentication(Ljava/lang/String;Ljava/util/Map;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v1

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 534
    :goto_0
    return v2

    .line 533
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
