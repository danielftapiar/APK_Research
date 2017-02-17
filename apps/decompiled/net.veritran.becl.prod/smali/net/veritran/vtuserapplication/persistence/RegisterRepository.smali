.class public Lnet/veritran/vtuserapplication/persistence/RegisterRepository;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;
.implements Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/persistence/RegisterRepository;


# instance fields
.field protected final RMS_NAME_TOKEN_MANAGER:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AAAF"

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->RMS_NAME_TOKEN_MANAGER:Ljava/lang/String;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getPersistenceManager()Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;->buildRepository(Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;Ljava/util/Vector;)Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->c:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AAAF"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->b:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/RegisterRepository;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->a:Lnet/veritran/vtuserapplication/persistence/RegisterRepository;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;

    invoke-direct {v0, p0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->a:Lnet/veritran/vtuserapplication/persistence/RegisterRepository;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeApplicationEvent()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 0

    return-void
.end method

.method public deleteOnHardClean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRegister(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->c:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->getValue(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeRegister(I)V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->c:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->dropKey(Ljava/util/Vector;)V

    return-void
.end method

.method public storageElementChanged(Lnet/veritran/vtuserapplication/core/elements/SerializableElement;)V
    .locals 2

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;->getId()I

    move-result v0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->storeRegister(ILjava/lang/String;)V

    return-void
.end method

.method public storeRegister(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->b:Ljava/lang/String;

    invoke-static {p2, v2}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->c:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v2, v0, v1}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->putValue(Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method
