.class public Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;
.super Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;


# instance fields
.field private b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;-><init>()V

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

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->a:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-direct {v0, p0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->a:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->removeAll()V

    return-void
.end method

.method public deleteOnHardClean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPersistenceInterface()Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->b:Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    return-object v0
.end method
