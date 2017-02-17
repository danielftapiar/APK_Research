.class public Lnet/veritran/vtuserapplication/core/LocalPasswordManager;
.super Ljava/lang/Object;


# static fields
.field public static final FLD_LP_PASSWORD:I = 0x0

.field public static final FLD_LP_SALT:I = 0x1


# instance fields
.field private a:I

.field private b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

.field private c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->init()V

    return-void
.end method


# virtual methods
.method public cleanAllFields()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->delete()V

    return-void
.end method

.method public getField(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->a:I

    if-ge v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v2, "0"

    :goto_1
    iget-object v3, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-virtual {v3, v0, v2}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->setField(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v2, ""

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :goto_2
    iget v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->a:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setField(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->b:Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
