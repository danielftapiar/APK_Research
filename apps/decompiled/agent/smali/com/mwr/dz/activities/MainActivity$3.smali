.class Lcom/mwr/dz/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/mwr/dz/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/activities/MainActivity$3;->this$0:Lcom/mwr/dz/activities/MainActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .locals 1
    .param p1, "toggle"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity$3;->this$0:Lcom/mwr/dz/activities/MainActivity;

    # invokes: Lcom/mwr/dz/activities/MainActivity;->startServer()V
    invoke-static {v0}, Lcom/mwr/dz/activities/MainActivity;->access$4(Lcom/mwr/dz/activities/MainActivity;)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity$3;->this$0:Lcom/mwr/dz/activities/MainActivity;

    # invokes: Lcom/mwr/dz/activities/MainActivity;->stopServer()V
    invoke-static {v0}, Lcom/mwr/dz/activities/MainActivity;->access$5(Lcom/mwr/dz/activities/MainActivity;)V

    goto :goto_0
.end method
