.class public Lnet/veritran/vtuserapplication/core/VersionManager;
.super Ljava/lang/Object;


# static fields
.field public static final FLD_CONF_CURRENT_VERSION:I = 0x0

.field public static final FLD_CONF_NXT_VERSION:I = 0x1

.field public static final FLD_CONNECTION_TIMEOUT:I = 0xb

.field public static final FLD_CURRENT_CONF_TYPE:I = 0x7

.field public static final FLD_LAST_SYNCHRO_SUCCESS:I = 0x15

.field public static final FLD_LAST_SYNCHRO_TRIED:I = 0x14

.field public static final FLD_LAST_UPDT_BANNER_GROUP:I = 0x5

.field public static final FLD_LAST_UPDT_BANNER_ID:I = 0x4

.field public static final FLD_LAST_UPDT_IMAGE_ID:I = 0x6

.field public static final FLD_LAST_UPDT_STATE_GROUP:I = 0x3

.field public static final FLD_LAST_UPDT_STATE_ID:I = 0x2

.field public static final FLD_NEXT_CONF_TYPE:I = 0x8

.field public static final FLD_NEXT_CONNECTION_TIMEOUT:I = 0xe

.field public static final FLD_NEXT_SESSION_TIMEOUT:I = 0xd

.field public static final FLD_NEXT_START_STATE:I = 0xc

.field public static final FLD_SESSION_TIMEOUT:I = 0xa

.field public static final FLD_START_STATE:I = 0x9


# instance fields
.field private a:I

.field private b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

.field private c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/persistence/VersionRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    iput v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->c:Ljava/util/Hashtable;

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/VersionManager;->init()V

    return-void
.end method


# virtual methods
.method public getField(I)Ljava/lang/String;
    .locals 4

    const-string v0, "VersionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getField("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->c:Ljava/util/Hashtable;

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
    const-string v1, "VersionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getField("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/VersionRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->a:I

    if-ge v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v2, "0"

    :goto_1
    iget-object v3, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    invoke-virtual {v3, v0, v2}, Lnet/veritran/vtuserapplication/persistence/VersionRepository;->setField(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v2, " "

    goto :goto_1

    :pswitch_1
    const-string v2, "1"

    goto :goto_1

    :pswitch_2
    const-string v2, "60000"

    goto :goto_1

    :pswitch_3
    const-string v2, "90"

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :goto_2
    iget v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->a:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/persistence/VersionRepository;->getField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0xe

    if-le v1, v0, :cond_2

    const/16 v0, 0x15

    if-gt v1, v0, :cond_2

    const-string v0, "0"

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    invoke-virtual {v2, v1, v0}, Lnet/veritran/vtuserapplication/persistence/VersionRepository;->setField(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->c:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/InconsistentManagerRepositoryException;-><init>()V

    throw v0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setField(ILjava/lang/String;)V
    .locals 3

    const-string v0, "VersionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setField("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->c:Ljava/util/Hashtable;

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
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->b:Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/persistence/VersionRepository;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/VersionManager;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
