.class public Lcom/prey/actions/battery/BatteryInformation;
.super Ljava/lang/Object;
.source "BatteryInformation.java"


# instance fields
.field public battery:Lcom/prey/actions/battery/Battery;

.field private batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    .line 26
    new-instance v0, Lcom/prey/actions/battery/BatteryInformation$1;

    invoke-direct {v0, p0}, Lcom/prey/actions/battery/BatteryInformation$1;-><init>(Lcom/prey/actions/battery/BatteryInformation;)V

    iput-object v0, p0, Lcom/prey/actions/battery/BatteryInformation;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/prey/actions/battery/BatteryInformation$2;

    invoke-direct {v0, p0}, Lcom/prey/actions/battery/BatteryInformation$2;-><init>(Lcom/prey/actions/battery/BatteryInformation;)V

    iput-object v0, p0, Lcom/prey/actions/battery/BatteryInformation;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/prey/actions/battery/BatteryInformation;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/prey/actions/battery/BatteryInformation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/prey/actions/battery/BatteryInformation;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public getInformation(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/prey/actions/battery/BatteryInformation;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    if-nez v4, :cond_0

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 74
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error, causa:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 81
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    iget-object v4, p0, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    if-eqz v4, :cond_1

    .line 85
    new-instance v0, Lcom/prey/actions/HttpDataService;

    .end local v0    # "data":Lcom/prey/actions/HttpDataService;
    const-string v4, "battery_status"

    invoke-direct {v0, v4}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v0    # "data":Lcom/prey/actions/HttpDataService;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v3, "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "state"

    iget-object v4, p0, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v4}, Lcom/prey/actions/battery/Battery;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "charging"

    :goto_1
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v4, "remaining"

    iget-object v5, p0, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v5}, Lcom/prey/actions/battery/Battery;->getLevel()I

    move-result v5

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Lcom/prey/actions/HttpDataService;->getDataList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 90
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 95
    .end local v3    # "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v0

    .line 87
    .restart local v3    # "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v4, "discharging"

    goto :goto_1
.end method

.method public makeBattery(Landroid/content/Intent;)Lcom/prey/actions/battery/Battery;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    const-string v12, "health"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, "health":I
    const-string v12, "icon-small"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 135
    .local v3, "iconSmall":I
    const-string v12, "level"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 136
    .local v4, "level":I
    const-string v12, "plugged"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 137
    .local v5, "plugged":I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "present"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 138
    .local v6, "present":Z
    const-string v12, "scale"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 139
    .local v7, "scale":I
    const-string v12, "status"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 140
    .local v8, "status":I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "technology"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "technology":Ljava/lang/String;
    const-string v12, "temperature"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 142
    .local v10, "temperature":I
    const-string v12, "voltage"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 144
    .local v11, "voltage":I
    const/4 v12, 0x2

    if-eq v8, v12, :cond_0

    const/4 v12, 0x5

    if-ne v8, v12, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 147
    .local v1, "charging":Z
    :cond_1
    new-instance v0, Lcom/prey/actions/battery/Battery;

    invoke-direct {v0}, Lcom/prey/actions/battery/Battery;-><init>()V

    .line 148
    .local v0, "battery":Lcom/prey/actions/battery/Battery;
    invoke-virtual {v0, v2}, Lcom/prey/actions/battery/Battery;->setHealth(I)V

    .line 149
    invoke-virtual {v0, v3}, Lcom/prey/actions/battery/Battery;->setIconSmall(I)V

    .line 150
    invoke-virtual {v0, v4}, Lcom/prey/actions/battery/Battery;->setLevel(I)V

    .line 151
    invoke-virtual {v0, v5}, Lcom/prey/actions/battery/Battery;->setPlugged(I)V

    .line 152
    invoke-virtual {v0, v6}, Lcom/prey/actions/battery/Battery;->setPresent(Z)V

    .line 153
    invoke-virtual {v0, v7}, Lcom/prey/actions/battery/Battery;->setScale(I)V

    .line 154
    invoke-virtual {v0, v8}, Lcom/prey/actions/battery/Battery;->setStatus(I)V

    .line 155
    invoke-virtual {v0, v9}, Lcom/prey/actions/battery/Battery;->setTechnology(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v10}, Lcom/prey/actions/battery/Battery;->setTemperature(I)V

    .line 157
    invoke-virtual {v0, v11}, Lcom/prey/actions/battery/Battery;->setVoltage(I)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/prey/actions/battery/Battery;->setCharging(Z)V

    .line 159
    return-object v0
.end method
