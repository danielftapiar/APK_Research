.class public Lnet/veritran/vtuserapplication/persistence/StateRepository;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/persistence/StateRepository;


# instance fields
.field private b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Integer;

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/StateRepository;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->a:Lnet/veritran/vtuserapplication/persistence/StateRepository;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/persistence/StateRepository;

    invoke-direct {v0, p0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/StateRepository;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->a:Lnet/veritran/vtuserapplication/persistence/StateRepository;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->removeAll()V

    return-void
.end method

.method public deleteOnHardClean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getState(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->getValue(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeState(II)V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->dropKey(Ljava/util/Vector;)V

    return-void
.end method

.method public storeState(IILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/persistence/StateRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v2, v0, v1}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->putValue(Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method
