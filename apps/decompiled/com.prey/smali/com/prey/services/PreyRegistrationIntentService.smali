.class public Lcom/prey/services/PreyRegistrationIntentService;
.super Landroid/app/IntentService;
.source "PreyRegistrationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;
    }
.end annotation


# static fields
.field public static final REGISTRATION_COMPLETE:Ljava/lang/String; = "registrationComplete"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "PREY"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;

    invoke-direct {v0, p0, v5}, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;-><init>(Lcom/prey/services/PreyRegistrationIntentService;Lcom/prey/services/PreyRegistrationIntentService$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/prey/services/PreyRegistrationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;

    invoke-direct {v0, p0, v5}, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;-><init>(Lcom/prey/services/PreyRegistrationIntentService;Lcom/prey/services/PreyRegistrationIntentService$1;)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/prey/services/PreyRegistrationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 43
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v5, "[START register_for_gcm]"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v1

    .line 45
    .local v1, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    invoke-static {p0}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/FileConfigReader;->getGcmId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GCM"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "token":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCM Registration Token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, v4}, Lcom/prey/services/PreyRegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "instanceID":Lcom/google/android/gms/iid/InstanceID;
    .end local v4    # "token":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "registrationComplete"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "registrationComplete":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 57
    return-void

    .line 51
    .end local v2    # "registrationComplete":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Failed to complete token refresh"

    invoke-static {v5, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
