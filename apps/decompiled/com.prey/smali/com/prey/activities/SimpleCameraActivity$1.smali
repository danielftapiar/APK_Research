.class Lcom/prey/activities/SimpleCameraActivity$1;
.super Ljava/lang/Object;
.source "SimpleCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/SimpleCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/SimpleCameraActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/SimpleCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SimpleCameraActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/prey/activities/SimpleCameraActivity$1;->this$0:Lcom/prey/activities/SimpleCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method
