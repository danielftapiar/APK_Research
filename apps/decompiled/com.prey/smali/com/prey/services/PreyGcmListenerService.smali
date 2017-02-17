.class public Lcom/prey/services/PreyGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "PreyGcmListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private handleMessageBeta(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "cmd"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "Push notification received, waking up Prey right now!"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push message received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {p1, p4}, Lcom/prey/beta/actions/PreyBetaController;->startPrey(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private registrationPlanB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "remoteEmail"    # Ljava/lang/String;
    .param p4, "pushedMessage"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const-string v10, "PUSH_______________"

    invoke-static {v10}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/prey/services/PreyGcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 27
    .local v4, "ctx":Landroid/content/Context;
    invoke-static {v4}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    .line 29
    .local v3, "config":Lcom/prey/PreyConfig;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 30
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 31
    .local v5, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 33
    .local v6, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "___["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    const-string v10, "body"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "body":Ljava/lang/String;
    const-string v10, "version"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 39
    .local v9, "version":Ljava/lang/String;
    const-string v10, "api_key"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "api_key":Ljava/lang/String;
    const-string v10, "remote_email"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "remote_email":Ljava/lang/String;
    const-string v10, "cmd"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    const-string v10, "api_key"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_3

    .line 45
    :cond_2
    invoke-direct {p0, v4, v0, v7, v1}, Lcom/prey/services/PreyGcmListenerService;->registrationPlanB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_1
    return-void

    .line 47
    :cond_3
    invoke-direct {p0, v4, v1, v9, v2}, Lcom/prey/services/PreyGcmListenerService;->handleMessageBeta(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
