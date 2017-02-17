.class final Lnet/wigle/wigleandroid/ZoomButtonsController$1;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/wigle/wigleandroid/ZoomButtonsController;->setOnZoomListener(Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/wigle/wigleandroid/ZoomButtonsController;

.field final synthetic val$listener:Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;


# direct methods
.method constructor <init>(Lnet/wigle/wigleandroid/ZoomButtonsController;Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController$1;->this$0:Lnet/wigle/wigleandroid/ZoomButtonsController;

    iput-object p2, p0, Lnet/wigle/wigleandroid/ZoomButtonsController$1;->val$listener:Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 80
    # getter for: Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lnet/wigle/wigleandroid/ZoomButtonsController;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/wigle/wigleandroid/ZoomButtonsController$1;->val$listener:Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 81
    const-string v0, "onZoom"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController$1;->val$listener:Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 90
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "onVisibilityChanged"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lnet/wigle/wigleandroid/ZoomButtonsController$1;->val$listener:Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 88
    :cond_1
    # getter for: Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lnet/wigle/wigleandroid/ZoomButtonsController;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unhandled listener method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
