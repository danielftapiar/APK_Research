.class public Lcom/prey/events/retrieves/EventRetrieveDataBattery;
.super Ljava/lang/Object;
.source "EventRetrieveDataBattery.java"


# instance fields
.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private manager:Lcom/prey/events/manager/EventManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;

    invoke-direct {v0, p0}, Lcom/prey/events/retrieves/EventRetrieveDataBattery$1;-><init>(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)V

    iput-object v0, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prey/events/retrieves/EventRetrieveDataBattery;)Lcom/prey/events/manager/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/prey/events/retrieves/EventRetrieveDataBattery;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->manager:Lcom/prey/events/manager/EventManager;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/prey/events/manager/EventManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/prey/events/manager/EventManager;

    .prologue
    .line 28
    iput-object p2, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->manager:Lcom/prey/events/manager/EventManager;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/events/retrieves/EventRetrieveDataBattery;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method
