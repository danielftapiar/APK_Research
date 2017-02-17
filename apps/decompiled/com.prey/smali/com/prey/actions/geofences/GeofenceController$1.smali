.class Lcom/prey/actions/geofences/GeofenceController$1;
.super Ljava/lang/Thread;
.source "GeofenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/actions/geofences/GeofenceController;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/prey/actions/geofences/GeofenceController;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/geofences/GeofenceController;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/prey/actions/geofences/GeofenceController$1;->this$0:Lcom/prey/actions/geofences/GeofenceController;

    iput-object p2, p0, Lcom/prey/actions/geofences/GeofenceController$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/prey/actions/geofences/GeofenceController$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/actions/geofences/GeofenceController$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$1;->val$params:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 126
    return-void
.end method
