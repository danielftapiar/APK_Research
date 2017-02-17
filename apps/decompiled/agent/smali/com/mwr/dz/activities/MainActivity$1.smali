.class Lcom/mwr/dz/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;


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
    iput-object p1, p0, Lcom/mwr/dz/activities/MainActivity$1;->this$0:Lcom/mwr/dz/activities/MainActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndpointSelect(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 1
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity$1;->this$0:Lcom/mwr/dz/activities/MainActivity;

    # invokes: Lcom/mwr/dz/activities/MainActivity;->launchEndpointActivity(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    invoke-static {v0, p1}, Lcom/mwr/dz/activities/MainActivity;->access$0(Lcom/mwr/dz/activities/MainActivity;Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 50
    return-void
.end method

.method public onEndpointToggle(Lcom/mwr/jdiesel/api/connectors/Endpoint;Z)V
    .locals 1
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .param p2, "isChecked"    # Z

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity$1;->this$0:Lcom/mwr/dz/activities/MainActivity;

    # invokes: Lcom/mwr/dz/activities/MainActivity;->startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    invoke-static {v0, p1}, Lcom/mwr/dz/activities/MainActivity;->access$1(Lcom/mwr/dz/activities/MainActivity;Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity$1;->this$0:Lcom/mwr/dz/activities/MainActivity;

    # invokes: Lcom/mwr/dz/activities/MainActivity;->stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    invoke-static {v0, p1}, Lcom/mwr/dz/activities/MainActivity;->access$2(Lcom/mwr/dz/activities/MainActivity;Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    goto :goto_0
.end method
