.class public Lnet/veritran/vtuserapplication/core/ArraysManager;
.super Lnet/veritran/vtuserapplication/core/LongTermPersistentData;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/persistence/ArrayRepository;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/persistence/ArrayRepository;)V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;-><init>()V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->a:Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    return-void
.end method


# virtual methods
.method public add(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V
    .locals 3

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/core/ArraysManager;->isLongTermPersistent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/core/ArraysManager;->deleteStorageElement(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->a:Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRepositoryInterfaceListener(Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->a:Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v1

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/persistence/ArrayRepository;->storeArray(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->addStorageElement(Lnet/veritran/vtuserapplication/core/elements/StorageElement;)V

    goto :goto_0
.end method

.method public deleteAll([I)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/ArraysManager;->deleteAll()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->_storageElement:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    aget v4, p1, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/veritran/vtuserapplication/core/ArraysManager;->isLongTermPersistent(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iput-object v2, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->_storageElement:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public deleteStorageElement(I)V
    .locals 1

    invoke-super {p0, p1}, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;->deleteStorageElement(I)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->isLongTermPersistent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->a:Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/persistence/ArrayRepository;->removeArray(I)V

    :cond_0
    return-void
.end method

.method public get(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;
    .locals 2

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->getStorageElement(I)Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->isLongTermPersistent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->a:Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/persistence/ArrayRepository;->getArray(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/core/ArraysManager;->addStorageElement(Lnet/veritran/vtuserapplication/core/elements/StorageElement;)V

    goto :goto_0
.end method

.method public getArraysList(Z)[I
    .locals 4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ArraysManager;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->isForSending()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method protected longTermPersistentFromRange()I
    .locals 1

    const/16 v0, 0x384

    return v0
.end method

.method protected longTermPersistentToRange()I
    .locals 1

    const/16 v0, 0x3e7

    return v0
.end method
