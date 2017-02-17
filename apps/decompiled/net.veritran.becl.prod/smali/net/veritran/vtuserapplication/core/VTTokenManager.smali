.class public Lnet/veritran/vtuserapplication/core/VTTokenManager;
.super Ljava/lang/Object;


# static fields
.field public static final FLD_GENERATION_CNT:I = 0x3

.field public static final FLD_HASH:I = 0x4

.field public static final FLD_REP_VERSION:I = 0x5

.field public static final FLD_SALT:I = 0x0

.field public static final FLD_SEED:I = 0x2

.field public static final FLD_SERIALNUMBER:I = 0x1

.field public static final FLD_TOKEN_LAST_USED_TIME:I = 0x6

.field public static final FLD_VALIDATION_CNT:I = 0x7

.field public static final FLD_VALIDATION_WRONG_COUNTER:I = 0x8


# instance fields
.field private a:I

.field private b:Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

.field private c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->c:Ljava/util/Hashtable;

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->b:Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->init()V

    return-void
.end method


# virtual methods
.method public getField(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->c:Ljava/util/Hashtable;

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

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->b:Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->a:I

    if-ge v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v2, ""

    :goto_1
    iget-object v3, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->b:Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    invoke-virtual {v3, v0, v2}, Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;->setField(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v2, "0"

    goto :goto_1

    :pswitch_2
    const-string v2, "0"

    goto :goto_1

    :pswitch_3
    const-string v2, "4"

    goto :goto_1

    :pswitch_4
    const-string v2, "-9223372036854775808"

    goto :goto_1

    :pswitch_5
    const-string v2, "999999"

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :goto_2
    iget v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->a:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->b:Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->c:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public setField(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->c:Ljava/util/Hashtable;

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
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->b:Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VTTokenManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
