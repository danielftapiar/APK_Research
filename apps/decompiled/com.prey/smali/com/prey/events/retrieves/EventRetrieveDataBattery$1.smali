.class Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "EventRetrieveDataBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/events/retrieves/EventRetrieveDataBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/events/retrieves/EventRetrieveDataBattery;


# direct methods
.method constructor <init>(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;->this$0:Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    :try_start_0
    new-instance v6, Lcom/prey/actions/battery/BatteryInformation;

    invoke-direct {v6}, Lcom/prey/actions/battery/BatteryInformation;-><init>()V

    invoke-virtual {v6, p2}, Lcom/prey/actions/battery/BatteryInformation;->makeBattery(Landroid/content/Intent;)Lcom/prey/actions/battery/Battery;

    move-result-object v0

    .line 37
    .local v0, "battery":Lcom/prey/actions/battery/Battery;
    iget-object v6, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;->this$0:Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    # getter for: Lcom/prey/events/retrieves/EventRetrieveDataBattery;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->access$000(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/prey/actions/battery/Battery;->isCharging()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "charging"

    .line 40
    .local v5, "state":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/prey/actions/battery/Battery;->getLevel()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "remaining":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v2, "batteryJSon":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "batteryElementJSon":Lorg/json/JSONObject;
    const-string v6, "state"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v6, "percentage_remaining"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v6, "battery_status"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .end local v1    # "batteryElementJSon":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery: state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] remaining["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 50
    iget-object v6, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;->this$0:Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    # getter for: Lcom/prey/events/retrieves/EventRetrieveDataBattery;->manager:Lcom/prey/events/manager/EventManager;
    invoke-static {v6}, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->access$100(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)Lcom/prey/events/manager/EventManager;

    move-result-object v6

    const-string v7, "battery"

    invoke-virtual {v6, v7, v2}, Lcom/prey/events/manager/EventManager;->receivesData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 56
    .end local v0    # "battery":Lcom/prey/actions/battery/Battery;
    .end local v2    # "batteryJSon":Lorg/json/JSONObject;
    .end local v4    # "remaining":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 39
    .restart local v0    # "battery":Lcom/prey/actions/battery/Battery;
    :cond_1
    const-string v5, "discharging"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 52
    .end local v0    # "battery":Lcom/prey/actions/battery/Battery;
    :catch_0
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .restart local v2    # "batteryJSon":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;->this$0:Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    # getter for: Lcom/prey/events/retrieves/EventRetrieveDataBattery;->manager:Lcom/prey/events/manager/EventManager;
    invoke-static {v6}, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->access$100(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)Lcom/prey/events/manager/EventManager;

    move-result-object v6

    const-string v7, "battery"

    invoke-virtual {v6, v7, v2}, Lcom/prey/events/manager/EventManager;->receivesData(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 47
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "battery":Lcom/prey/actions/battery/Battery;
    .restart local v4    # "remaining":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
