.class final Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;
.super Ljava/util/LinkedHashMap;
.source "MapTileModuleProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/osmdroid/tileprovider/MapTile;",
        "Lorg/osmdroid/tileprovider/MapTileRequestState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

.field final synthetic val$pPendingQueueSize:I


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 3

    .prologue
    .line 100
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    const/16 v0, 0x28

    iput v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    const/16 v0, 0x2a

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "pEldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/osmdroid/tileprovider/MapTile;Lorg/osmdroid/tileprovider/MapTileRequestState;>;"
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->size()I

    move-result v4

    iget v5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    if-le v4, v5, :cond_2

    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, "result":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/tileprovider/MapTile;>;"
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/MapTile;

    .line 115
    .local v3, "tile":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    move-object v1, v3

    goto :goto_0

    .line 120
    .end local v3    # "tile":Lorg/osmdroid/tileprovider/MapTile;
    :cond_1
    if-eqz v1, :cond_2

    .line 121
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 122
    .local v2, "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v4, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(Lorg/osmdroid/tileprovider/MapTile;)V

    .line 123
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 126
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/tileprovider/MapTile;>;"
    .end local v1    # "result":Lorg/osmdroid/tileprovider/MapTile;
    .end local v2    # "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method
