.class public abstract Lnet/veritran/vtuserapplication/core/elements/SerializableElement;
.super Lnet/veritran/vtuserapplication/core/elements/StorageElement;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInternalStateChanged()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;->a:Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;->storageElementChanged(Lnet/veritran/vtuserapplication/core/elements/SerializableElement;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract serialize()Ljava/lang/String;
.end method

.method public setRepositoryInterfaceListener(Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;->a:Lnet/veritran/vtuserapplication/persistence/SerializableRepositoryElementInterface;

    return-void
.end method
