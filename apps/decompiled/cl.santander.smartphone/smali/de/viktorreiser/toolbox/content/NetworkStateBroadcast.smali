.class public Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateBroadcast.java"


# static fields
.field public static final NETWORK_STATE_ACTION:Ljava/lang/String;

.field private static mMobileConnected:Z

.field private static mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v1, ".ACTION_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->NETWORK_STATE_ACTION:Ljava/lang/String;

    .line 49
    sput-boolean v2, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    .line 52
    sput-boolean v2, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static initialCheck(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    .line 104
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 106
    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    .line 109
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 109
    if-ne v1, v4, :cond_1

    :goto_1
    sput-boolean v2, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    .line 111
    return-void

    :cond_0
    move v1, v3

    .line 106
    goto :goto_0

    :cond_1
    move v2, v3

    .line 109
    goto :goto_1
.end method

.method public static isConnected()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMobileConnected()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    return v0
.end method

.method public static isWifiConnected()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "changed":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    const-string v3, "connected"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    sget-boolean v3, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    if-eqz v3, :cond_0

    .line 125
    sput-boolean v5, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    .line 126
    const/4 v0, 0x1

    .line 164
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 165
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->NETWORK_STATE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    :cond_1
    return-void

    .line 129
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string v3, "connectivity"

    .line 130
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 133
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 135
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 136
    sget-boolean v3, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    if-nez v3, :cond_3

    .line 137
    sput-boolean v6, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    .line 138
    const/4 v0, 0x1

    .line 148
    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_6

    .line 151
    sget-boolean v3, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    if-nez v3, :cond_0

    .line 152
    sput-boolean v6, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_5

    .line 141
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    .line 142
    :cond_5
    sget-boolean v3, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    if-eqz v3, :cond_3

    .line 143
    sput-boolean v5, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mMobileConnected:Z

    .line 144
    const/4 v0, 0x1

    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_7

    .line 156
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 157
    :cond_7
    sget-boolean v3, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    if-eqz v3, :cond_0

    .line 158
    sput-boolean v5, Lde/viktorreiser/toolbox/content/NetworkStateBroadcast;->mWifiConnected:Z

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method
