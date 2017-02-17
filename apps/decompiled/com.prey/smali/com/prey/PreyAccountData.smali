.class public Lcom/prey/PreyAccountData;
.super Ljava/lang/Object;
.source "PreyAccountData.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private missing:Z

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private preyVersion:Ljava/lang/String;

.field private refererId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/prey/PreyAccountData;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/prey/PreyAccountData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/prey/PreyAccountData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/prey/PreyAccountData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/PreyAccountData;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPreyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/prey/PreyAccountData;->preyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/prey/PreyAccountData;->refererId:Ljava/lang/String;

    return-object v0
.end method

.method public isMissing()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/prey/PreyAccountData;->missing:Z

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/prey/PreyAccountData;->apiKey:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/prey/PreyAccountData;->deviceId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/prey/PreyAccountData;->email:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setMissing(Z)V
    .locals 0
    .param p1, "missing"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/prey/PreyAccountData;->missing:Z

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/prey/PreyAccountData;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/prey/PreyAccountData;->password:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPreyVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "preyVersion"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/prey/PreyAccountData;->preyVersion:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRefererId(Ljava/lang/String;)V
    .locals 0
    .param p1, "refererId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/prey/PreyAccountData;->refererId:Ljava/lang/String;

    .line 58
    return-void
.end method
