.class Lcom/mwr/dz/EndpointAdapter$1;
.super Ljava/lang/Object;
.source "EndpointAdapter.java"

# interfaces
.implements Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/EndpointAdapter;-><init>(Landroid/content/Context;Lcom/mwr/dz/models/EndpointManager;Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/EndpointAdapter;


# direct methods
.method constructor <init>(Lcom/mwr/dz/EndpointAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/EndpointAdapter$1;->this$0:Lcom/mwr/dz/EndpointAdapter;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatasetChange(Lcom/mwr/dz/models/EndpointManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/mwr/dz/models/EndpointManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mwr/dz/EndpointAdapter$1;->this$0:Lcom/mwr/dz/EndpointAdapter;

    invoke-virtual {v0}, Lcom/mwr/dz/EndpointAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method
