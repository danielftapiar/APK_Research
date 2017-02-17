.class public Lnet/veritran/vtuserapplication/core/ApplicationManager;
.super Ljava/lang/Object;


# static fields
.field public static final FLD_APP_ADMIN_MODE:I = 0x3

.field public static final FLD_APP_DH_KEY:I = 0x6

.field public static final FLD_APP_KEY:I = 0x5

.field public static final FLD_APP_SEED:I = 0x4

.field public static final FLD_APP_SERIALNUMBER:I = 0x8

.field public static final FLD_APP_VERSION:I = 0x7

.field public static final FLD_LAST_RSP_SEQ_NUMBER:I = 0x2

.field public static final FLD_SEQ_NUMBER:I = 0x1

.field public static final FLD_TERM_ID:I


# instance fields
.field private a:I

.field private b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

.field private c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->c:Ljava/util/Hashtable;

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->init()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->getField(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AM:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->c:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getField(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AM:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->getField(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->a:I

    if-ge v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "0"

    :goto_1
    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {v2, v0, v1}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->setField(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v1, ""

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->getHashedRepoKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/Model;->getSoftwareVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v1

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationSerialNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    const-string v1, "0"

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->a()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->getHashedRepoKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    const-string v1, "AM:K"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setField(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AM:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->b:Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ApplicationManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
