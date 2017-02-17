.class public Lcom/prey/managers/PreyConnectivityManager;
.super Ljava/lang/Object;
.source "PreyConnectivityManager.java"


# static fields
.field private static _instance:Lcom/prey/managers/PreyConnectivityManager;


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/managers/PreyConnectivityManager;->_instance:Lcom/prey/managers/PreyConnectivityManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    .line 18
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    .line 19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/prey/managers/PreyConnectivityManager;->_instance:Lcom/prey/managers/PreyConnectivityManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/prey/managers/PreyConnectivityManager;

    invoke-direct {v0, p0}, Lcom/prey/managers/PreyConnectivityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/managers/PreyConnectivityManager;->_instance:Lcom/prey/managers/PreyConnectivityManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/prey/managers/PreyConnectivityManager;->_instance:Lcom/prey/managers/PreyConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 60
    .local v1, "mobile":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 62
    .end local v1    # "mobile":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isMobileConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 69
    .local v1, "mobile":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 71
    .end local v1    # "mobile":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isRoaming()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiAvailable()Z
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 78
    .local v0, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    return v1
.end method

.method public isWifiConnected()Z
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/prey/managers/PreyConnectivityManager;->connectivity:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 83
    .local v0, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method
