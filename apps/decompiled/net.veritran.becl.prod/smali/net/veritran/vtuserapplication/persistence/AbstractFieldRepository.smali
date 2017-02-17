.class public abstract Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;->getPersistenceInterface()Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    move-result-object v1

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

.method protected abstract getPersistenceInterface()Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;
.end method

.method public setField(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/persistence/AbstractFieldRepository;->getPersistenceInterface()Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;->putValue(Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method
