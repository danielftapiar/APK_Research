.class Lcom/mwr/dz/services/ServerService$1;
.super Ljava/lang/Object;
.source "ServerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/services/ServerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/services/ServerService;


# direct methods
.method constructor <init>(Lcom/mwr/dz/services/ServerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/services/ServerService$1;->this$0:Lcom/mwr/dz/services/ServerService;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/util/Observable;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 178
    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/mwr/dz/services/ServerService$1;->this$0:Lcom/mwr/dz/services/ServerService;

    invoke-virtual {v1}, Lcom/mwr/dz/services/ServerService;->getStatus()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 181
    iget-object v1, p0, Lcom/mwr/dz/services/ServerService$1;->this$0:Lcom/mwr/dz/services/ServerService;

    invoke-virtual {v1, v0}, Lcom/mwr/dz/services/ServerService;->sendToAllMessengers(Landroid/os/Message;)V

    .line 182
    return-void
.end method
