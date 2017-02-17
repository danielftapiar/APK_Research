.class public Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;
.super Lnet/veritran/vtuserapplication/core/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/StorageManager;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->addStorageElement(Lnet/veritran/vtuserapplication/core/elements/StorageElement;)V

    return-void
.end method

.method public get(I)Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->getStorageElement(I)Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;

    return-object v0
.end method

.method public getMessageBuffersList()[I
    .locals 5

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method
