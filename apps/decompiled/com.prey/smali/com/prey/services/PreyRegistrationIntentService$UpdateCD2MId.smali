.class Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;
.super Landroid/os/AsyncTask;
.source "PreyRegistrationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/services/PreyRegistrationIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCD2MId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/services/PreyRegistrationIntentService;


# direct methods
.method private constructor <init>(Lcom/prey/services/PreyRegistrationIntentService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;->this$0:Lcom/prey/services/PreyRegistrationIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/services/PreyRegistrationIntentService;Lcom/prey/services/PreyRegistrationIntentService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/services/PreyRegistrationIntentService;
    .param p2, "x1"    # Lcom/prey/services/PreyRegistrationIntentService$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;-><init>(Lcom/prey/services/PreyRegistrationIntentService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/prey/services/PreyRegistrationIntentService$UpdateCD2MId;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 6
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 72
    const/4 v4, 0x1

    :try_start_0
    aget-object v0, p1, v4

    check-cast v0, Landroid/content/Context;

    .line 73
    .local v0, "ctx":Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/FileConfigReader;->getGcmIdPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "registration":Ljava/lang/String;
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/prey/net/PreyWebServices;->setPushRegistrationId(Landroid/content/Context;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v3

    .line 75
    .local v3, "response":Lcom/prey/net/PreyHttpResponse;
    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/prey/PreyConfig;->setNotificationId(Ljava/lang/String;)V

    .line 76
    if-eqz v3, :cond_0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/prey/net/PreyHttpResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/prey/PreyConfig;->setRegisterC2dm(Z)V

    .line 80
    invoke-static {v0}, Lcom/prey/beta/actions/PreyBetaController;->startPrey(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "registration":Ljava/lang/String;
    .end local v3    # "response":Lcom/prey/net/PreyHttpResponse;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed registering to CD2M: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
