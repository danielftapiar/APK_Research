.class public Lcom/prey/services/LocationService$LocalBinder;
.super Landroid/os/Binder;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/services/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/services/LocationService;


# direct methods
.method public constructor <init>(Lcom/prey/services/LocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/services/LocationService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/prey/services/LocationService$LocalBinder;->this$0:Lcom/prey/services/LocationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/prey/services/LocationService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/prey/services/LocationService$LocalBinder;->this$0:Lcom/prey/services/LocationService;

    return-object v0
.end method
