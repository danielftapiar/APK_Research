.class Lcom/prey/PreyApp$1;
.super Ljava/lang/Thread;
.source "PreyApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/PreyApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/PreyApp;


# direct methods
.method constructor <init>(Lcom/prey/PreyApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/PreyApp;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/prey/PreyApp$1;->this$0:Lcom/prey/PreyApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/prey/actions/geofences/GeofenceController;->getInstance()Lcom/prey/actions/geofences/GeofenceController;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/PreyApp$1;->this$0:Lcom/prey/PreyApp;

    invoke-virtual {v1}, Lcom/prey/PreyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prey/actions/geofences/GeofenceController;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method
