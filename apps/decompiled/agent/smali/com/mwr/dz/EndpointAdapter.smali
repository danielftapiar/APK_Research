.class public Lcom/mwr/dz/EndpointAdapter;
.super Landroid/widget/BaseAdapter;
.source "EndpointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

.field private endpoint_manager:Lcom/mwr/dz/models/EndpointManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mwr/dz/models/EndpointManager;Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endpoint_manager"    # Lcom/mwr/dz/models/EndpointManager;
    .param p3, "endpoint_listener"    # Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/mwr/dz/EndpointAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    .line 23
    iput-object v0, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .line 26
    iput-object p1, p0, Lcom/mwr/dz/EndpointAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .line 28
    iput-object p2, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    .line 30
    iget-object v0, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    new-instance v1, Lcom/mwr/dz/EndpointAdapter$1;

    invoke-direct {v1, p0}, Lcom/mwr/dz/EndpointAdapter$1;-><init>(Lcom/mwr/dz/EndpointAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mwr/dz/models/EndpointManager;->setOnDatasetChangeListener(Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v0}, Lcom/mwr/dz/models/EndpointManager;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v0}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "pos"    # I
    .param p2, "copyView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    new-instance v0, Lcom/mwr/dz/views/EndpointListRowView;

    iget-object v1, p0, Lcom/mwr/dz/EndpointAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mwr/dz/views/EndpointListRowView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "view":Lcom/mwr/dz/views/EndpointListRowView;
    invoke-virtual {p0, p1}, Lcom/mwr/dz/EndpointAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/EndpointListRowView;->setEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 59
    iget-object v1, p0, Lcom/mwr/dz/EndpointAdapter;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/EndpointListRowView;->setEndpointListener(Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;)V

    .line 61
    return-object v0
.end method
