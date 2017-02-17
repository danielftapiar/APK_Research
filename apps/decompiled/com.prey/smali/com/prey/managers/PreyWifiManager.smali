.class public Lcom/prey/managers/PreyWifiManager;
.super Ljava/lang/Object;
.source "PreyWifiManager.java"


# static fields
.field private static _instance:Lcom/prey/managers/PreyWifiManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/managers/PreyWifiManager;->_instance:Lcom/prey/managers/PreyWifiManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/prey/managers/PreyWifiManager;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 20
    iput-object v0, p0, Lcom/prey/managers/PreyWifiManager;->ctx:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/prey/managers/PreyWifiManager;->ctx:Landroid/content/Context;

    .line 24
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/prey/managers/PreyWifiManager;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/prey/managers/PreyWifiManager;->_instance:Lcom/prey/managers/PreyWifiManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/prey/managers/PreyWifiManager;

    invoke-direct {v0, p0}, Lcom/prey/managers/PreyWifiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/managers/PreyWifiManager;->_instance:Lcom/prey/managers/PreyWifiManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/prey/managers/PreyWifiManager;->_instance:Lcom/prey/managers/PreyWifiManager;

    return-object v0
.end method


# virtual methods
.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/prey/managers/PreyWifiManager;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/prey/managers/PreyWifiManager;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/prey/managers/PreyWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/prey/managers/PreyWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "ssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/prey/managers/PreyWifiManager;->ctx:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 43
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x1

    .line 46
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/prey/managers/PreyWifiManager;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/prey/managers/PreyWifiManager;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
