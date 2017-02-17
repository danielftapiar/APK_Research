.class public Lnet/veritran/VTApplicationReplacedService;
.super Landroid/app/IntentService;
.source "VTApplicationReplacedService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTApplicationReplacedService"


# instance fields
.field private final PREFS_NAME:Ljava/lang/String;

.field private final PROPERTY_REG_ID:Ljava/lang/String;

.field private final PROPERTY_SENDER_ID:Ljava/lang/String;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "Init Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "preferences_name"

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->PREFS_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "registration_id"

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->PROPERTY_REG_ID:Ljava/lang/String;

    .line 22
    const-string v0, "sender_id"

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->PROPERTY_SENDER_ID:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->handler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "preferences_name"

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->PREFS_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "registration_id"

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->PROPERTY_REG_ID:Ljava/lang/String;

    .line 22
    const-string v0, "sender_id"

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->PROPERTY_SENDER_ID:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTApplicationReplacedService;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method private cleanRegistrationId(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "registration_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "preferences_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 26
    .param p1, "workIntent"    # Landroid/content/Intent;

    .prologue
    .line 42
    move-object/from16 v2, p0

    .line 45
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/veritran/VTApplicationReplacedService;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 46
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v22, "registration_id"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 48
    .local v15, "registrationId":Ljava/lang/String;
    if-eqz v15, :cond_4

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 53
    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v6

    .line 56
    .local v6, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    const-string v22, "sender_id"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 58
    .local v16, "senderId":Ljava/lang/String;
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 60
    const-string v16, "__SENDER_ID__"

    .line 62
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 63
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v22, "sender_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v14, 0x0

    .line 70
    .local v14, "registered":Z
    const/16 v17, 0x0

    .line 72
    .local v17, "step":I
    const/4 v7, 0x6

    .line 73
    .local v7, "maxRetries":I
    const-wide/16 v18, 0xfa

    .line 74
    .local v18, "sleepMilisBlockPer":J
    const-wide/16 v8, 0x1f40

    .line 76
    .local v8, "maxBlockSleepMilis":J
    const-string v12, ""

    .line 78
    .local v12, "newRegistrationID":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v14, :cond_2

    const/16 v22, 0x6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 80
    add-int/lit8 v17, v17, 0x1

    .line 84
    const/16 v22, 0x1

    :try_start_0
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 85
    const/4 v14, 0x1

    .line 92
    :goto_1
    if-nez v14, :cond_1

    const/16 v22, 0x6

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 94
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x406f400000000000L    # 250.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1f40

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 95
    .local v10, "maxSleepBlock":J
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextLong(J)J

    move-result-wide v20

    .line 98
    .local v20, "sleepTimeMilis":J
    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v22, "VTApplicationReplacedService"

    const-string v23, "Exception sleeping in miliseconds"

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "maxSleepBlock":J
    .end local v20    # "sleepTimeMilis":J
    :catch_1
    move-exception v5

    .line 89
    .local v5, "ex":Ljava/io/IOException;
    const-string v22, "VTApplicationReplacedService"

    const-string v23, "Catched exception empty (fortify)"

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_2
    if-eqz v14, :cond_5

    .line 107
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/veritran/VTApplicationReplacedService;->cleanRegistrationId(Landroid/content/SharedPreferences;)V

    .line 117
    :cond_3
    :goto_2
    const-string v22, "VTApplicationReplacedService"

    const-string v23, "PACKAGE REPLACED USA GMS!!!!"

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v7    # "maxRetries":I
    .end local v8    # "maxBlockSleepMilis":J
    .end local v12    # "newRegistrationID":Ljava/lang/String;
    .end local v14    # "registered":Z
    .end local v16    # "senderId":Ljava/lang/String;
    .end local v17    # "step":I
    .end local v18    # "sleepMilisBlockPer":J
    :cond_4
    return-void

    .line 114
    .restart local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v7    # "maxRetries":I
    .restart local v8    # "maxBlockSleepMilis":J
    .restart local v12    # "newRegistrationID":Ljava/lang/String;
    .restart local v14    # "registered":Z
    .restart local v16    # "senderId":Ljava/lang/String;
    .restart local v17    # "step":I
    .restart local v18    # "sleepMilisBlockPer":J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/veritran/VTApplicationReplacedService;->cleanRegistrationId(Landroid/content/SharedPreferences;)V

    goto :goto_2
.end method
