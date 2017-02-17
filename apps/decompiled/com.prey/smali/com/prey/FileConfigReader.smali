.class public Lcom/prey/FileConfigReader;
.super Ljava/lang/Object;
.source "FileConfigReader.java"


# static fields
.field private static _instance:Lcom/prey/FileConfigReader;


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/FileConfigReader;->_instance:Lcom/prey/FileConfigReader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    const-string v2, "Loading config properties from file..."

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 26
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Config file wasn\'t found"

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 32
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Couldn\'t read config file"

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/prey/FileConfigReader;->_instance:Lcom/prey/FileConfigReader;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/prey/FileConfigReader;

    invoke-direct {v0, p0}, Lcom/prey/FileConfigReader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/FileConfigReader;->_instance:Lcom/prey/FileConfigReader;

    .line 40
    :cond_0
    sget-object v0, Lcom/prey/FileConfigReader;->_instance:Lcom/prey/FileConfigReader;

    return-object v0
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "agreement-id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiKeyBatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "api-key-batch"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiV2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "api-v2"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceLocation()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "distance-location"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEmailBatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "email-batch"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFeedback()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "email-feedback"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGcmId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "gcm-id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGcmIdPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "gcm-id-prefix"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceLoiteringDelay()I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "geofence-loitering-delay"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGeofenceMaximumAccuracy()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "geofence-maximum-accuracy"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinuteScheduled()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "minute-scheduled"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreyCampaign()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-campaign"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-domain"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyEventsLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-events-logs"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyGooglePlay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-google-play"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyJwt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-jwt"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyMinorVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-minor-version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyPanel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-panel"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreySubdomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-subdomain"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreyUninstall()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "prey-uninstall"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectFeedback()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "subject-feedback"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutReport()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "timeout-report"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getc2dmAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "c2dm-action"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getc2dmMessageSync()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "c2dm-message-sync"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAskForPassword()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "ask-for-password"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLogEnabled()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "log-enabled"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScheduled()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/prey/FileConfigReader;->properties:Ljava/util/Properties;

    const-string v1, "scheduled"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
