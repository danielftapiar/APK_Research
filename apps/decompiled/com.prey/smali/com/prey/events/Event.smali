.class public Lcom/prey/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final APPLICATION_OPENED:Ljava/lang/String; = "prey_opened"

.field public static final BATTERY_CHANGE:Ljava/lang/String; = "change_battery"

.field public static final BATTERY_LOW:Ljava/lang/String; = "low_battery"

.field public static final BATTERY_OK:Ljava/lang/String; = "ok_battery"

.field public static final POWER_CONNECTED:Ljava/lang/String; = "power_connected"

.field public static final POWER_DISCONNECTED:Ljava/lang/String; = "power_disconnected"

.field public static final SIM_CHANGED:Ljava/lang/String; = "sim_changed"

.field public static final TURNED_OFF:Ljava/lang/String; = "device_turned_off"

.field public static final TURNED_ON:Ljava/lang/String; = "device_turned_on"

.field public static final WIFI_CHANGED:Ljava/lang/String; = "ssid_changed"


# instance fields
.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/prey/events/Event;->name:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/prey/events/Event;->info:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/prey/events/Event;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/prey/events/Event;->info:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/prey/events/Event;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/events/Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/prey/events/Event;->info:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/prey/events/Event;->name:Ljava/lang/String;

    .line 46
    return-void
.end method
