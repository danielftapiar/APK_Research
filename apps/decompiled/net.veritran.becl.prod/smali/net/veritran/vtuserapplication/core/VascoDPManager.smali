.class public Lnet/veritran/vtuserapplication/core/VascoDPManager;
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
.field private a:Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;

.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/VascoDPManager;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/VascoDPManager;->a:Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;

    return-void
.end method


# virtual methods
.method public getField(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VascoDPManager;->b:Ljava/util/Hashtable;

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
    .locals 0

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VascoDPManager;->b:Ljava/util/Hashtable;

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

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/VascoDPManager;->a:Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;

    invoke-virtual {v1, p1, p2}, Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;->setField(ILjava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/VascoDPManager;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
