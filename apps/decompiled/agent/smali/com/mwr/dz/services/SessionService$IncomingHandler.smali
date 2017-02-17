.class Lcom/mwr/dz/services/SessionService$IncomingHandler;
.super Landroid/os/Handler;
.source "SessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/dz/services/SessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mwr/dz/services/SessionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mwr/dz/services/SessionService;)V
    .locals 1
    .param p1, "service"    # Lcom/mwr/dz/services/SessionService;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mwr/dz/services/SessionService$IncomingHandler;->service:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v2, p0, Lcom/mwr/dz/services/SessionService$IncomingHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/services/SessionService;

    .line 40
    .local v0, "service":Lcom/mwr/dz/services/SessionService;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, "session_id":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/mwr/dz/services/SessionService;->add(Ljava/lang/String;)V

    .line 46
    # invokes: Lcom/mwr/dz/services/SessionService;->updateNotification()V
    invoke-static {v0}, Lcom/mwr/dz/services/SessionService;->access$0(Lcom/mwr/dz/services/SessionService;)V

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/mwr/dz/services/SessionService;->remove(Ljava/lang/String;)V

    .line 52
    # invokes: Lcom/mwr/dz/services/SessionService;->updateNotification()V
    invoke-static {v0}, Lcom/mwr/dz/services/SessionService;->access$0(Lcom/mwr/dz/services/SessionService;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
