.class public Lnet/veritran/vtuserapplication/core/MessageBufferManager;
.super Lnet/veritran/vtuserapplication/core/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/StorageManager;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->addStorageElement(Lnet/veritran/vtuserapplication/core/elements/StorageElement;)V

    return-void
.end method

.method public debug()V
    .locals 0

    return-void
.end method

.method public deleteAll()V
    .locals 0

    return-void
.end method

.method public deleteAll(Z)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->deleteStorageElement(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteAll([I)V
    .locals 5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->_storageElement:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    aget v4, p1, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->_storageElement:Ljava/util/Hashtable;

    return-void
.end method

.method public get(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->getStorageElement(I)Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    return-object v0
.end method

.method public getMessageBuffersList()[I
    .locals 5

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/MessageBufferManager;->_storageElement:Ljava/util/Hashtable;

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

.method public init()V
    .locals 0

    return-void
.end method
