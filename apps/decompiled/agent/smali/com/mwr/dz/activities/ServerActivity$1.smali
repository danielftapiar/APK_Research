.class Lcom/mwr/dz/activities/ServerActivity$1;
.super Ljava/lang/Object;
.source "ServerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/ServerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/activities/ServerActivity;


# direct methods
.method constructor <init>(Lcom/mwr/dz/activities/ServerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/activities/ServerActivity$1;->this$0:Lcom/mwr/dz/activities/ServerActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity$1;->this$0:Lcom/mwr/dz/activities/ServerActivity;

    # getter for: Lcom/mwr/dz/activities/ServerActivity;->setting_server:Z
    invoke-static {v0}, Lcom/mwr/dz/activities/ServerActivity;->access$0(Lcom/mwr/dz/activities/ServerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    if-eqz p2, :cond_1

    .line 66
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity$1;->this$0:Lcom/mwr/dz/activities/ServerActivity;

    invoke-virtual {v0}, Lcom/mwr/dz/activities/ServerActivity;->startServer()V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity$1;->this$0:Lcom/mwr/dz/activities/ServerActivity;

    invoke-virtual {v0}, Lcom/mwr/dz/activities/ServerActivity;->stopServer()V

    goto :goto_0
.end method
