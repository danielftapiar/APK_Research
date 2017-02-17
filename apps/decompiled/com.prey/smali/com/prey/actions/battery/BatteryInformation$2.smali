.class Lcom/prey/actions/battery/BatteryInformation$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/actions/battery/BatteryInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/actions/battery/BatteryInformation;


# direct methods
.method constructor <init>(Lcom/prey/actions/battery/BatteryInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/battery/BatteryInformation;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    const-string v11, "health"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, "health":I
    const-string v11, "icon-small"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "iconSmall":I
    const-string v11, "level"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 105
    .local v3, "level":I
    const-string v11, "plugged"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 106
    .local v4, "plugged":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "present"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 107
    .local v5, "present":Z
    const-string v11, "scale"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 108
    .local v6, "scale":I
    const-string v11, "status"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 109
    .local v7, "status":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "technology"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "technology":Ljava/lang/String;
    const-string v11, "temperature"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 111
    .local v9, "temperature":I
    const-string v11, "voltage"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 113
    .local v10, "voltage":I
    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    const/4 v11, 0x5

    if-ne v7, v11, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 116
    .local v0, "charging":Z
    :cond_1
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    new-instance v12, Lcom/prey/actions/battery/Battery;

    invoke-direct {v12}, Lcom/prey/actions/battery/Battery;-><init>()V

    iput-object v12, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    .line 117
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v1}, Lcom/prey/actions/battery/Battery;->setHealth(I)V

    .line 118
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v2}, Lcom/prey/actions/battery/Battery;->setIconSmall(I)V

    .line 119
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v3}, Lcom/prey/actions/battery/Battery;->setLevel(I)V

    .line 120
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v4}, Lcom/prey/actions/battery/Battery;->setPlugged(I)V

    .line 121
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v5}, Lcom/prey/actions/battery/Battery;->setPresent(Z)V

    .line 122
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v6}, Lcom/prey/actions/battery/Battery;->setScale(I)V

    .line 123
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v7}, Lcom/prey/actions/battery/Battery;->setStatus(I)V

    .line 124
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v8}, Lcom/prey/actions/battery/Battery;->setTechnology(Ljava/lang/String;)V

    .line 125
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v9}, Lcom/prey/actions/battery/Battery;->setTemperature(I)V

    .line 126
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v10}, Lcom/prey/actions/battery/Battery;->setVoltage(I)V

    .line 127
    iget-object v11, p0, Lcom/prey/actions/battery/BatteryInformation$2;->this$0:Lcom/prey/actions/battery/BatteryInformation;

    iget-object v11, v11, Lcom/prey/actions/battery/BatteryInformation;->battery:Lcom/prey/actions/battery/Battery;

    invoke-virtual {v11, v0}, Lcom/prey/actions/battery/Battery;->setCharging(Z)V

    .line 128
    return-void
.end method
