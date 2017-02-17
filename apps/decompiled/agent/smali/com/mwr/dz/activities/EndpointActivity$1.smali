.class Lcom/mwr/dz/activities/EndpointActivity$1;
.super Ljava/lang/Object;
.source "EndpointActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/EndpointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/activities/EndpointActivity;


# direct methods
.method constructor <init>(Lcom/mwr/dz/activities/EndpointActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/activities/EndpointActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointActivity;

    # getter for: Lcom/mwr/dz/activities/EndpointActivity;->setting_endpoint:Z
    invoke-static {v0}, Lcom/mwr/dz/activities/EndpointActivity;->access$0(Lcom/mwr/dz/activities/EndpointActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    if-eqz p2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointActivity;

    invoke-virtual {v0}, Lcom/mwr/dz/activities/EndpointActivity;->startEndpoint()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointActivity;

    invoke-virtual {v0}, Lcom/mwr/dz/activities/EndpointActivity;->stopEndpoint()V

    goto :goto_0
.end method
