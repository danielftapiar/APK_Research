.class public abstract Lnet/veritran/vtuserapplication/core/StorageManager;
.super Ljava/lang/Object;


# instance fields
.field protected _storageElement:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/StorageManager;->_storageElement:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method protected addStorageElement(Lnet/veritran/vtuserapplication/core/elements/StorageElement;)V
    .locals 3

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;->getId()I

    move-result v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/StorageManager;->_storageElement:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteAll()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/StorageManager;->_storageElement:Ljava/util/Hashtable;

    return-void
.end method

.method public deleteStorageElement(I)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/StorageManager;->_storageElement:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getStorageElement(I)Lnet/veritran/vtuserapplication/core/elements/StorageElement;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/StorageManager;->_storageElement:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/StorageManager;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
