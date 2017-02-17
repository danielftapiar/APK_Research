.class public Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;
.super Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;


# instance fields
.field protected final RMS_NAME_APPLICATION_MANAGER:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;-><init>()V

    const-string v0, "AAAA"

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->RMS_NAME_APPLICATION_MANAGER:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->d:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    iput-object p2, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AAAA"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->c:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->a:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-direct {v0, p0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->a:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

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
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->d:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->removeAll()V

    return-void
.end method

.method public deleteOnHardClean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHashedRepoKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->b:Ljava/lang/String;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPersistenceInterface()Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->d:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    return-object v0
.end method

.method public setField(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;->setField(ILjava/lang/String;)V

    return-void
.end method
