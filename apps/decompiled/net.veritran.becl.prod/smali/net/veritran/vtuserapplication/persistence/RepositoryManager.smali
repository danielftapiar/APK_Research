.class public Lnet/veritran/vtuserapplication/persistence/RepositoryManager;
.super Ljava/lang/Object;


# static fields
.field public static final COMPONENT_APPLICATION_MANAGER:Ljava/lang/String; = "APM"

.field public static final COMPONENT_ARRAY_MANAGER:Ljava/lang/String; = "ARY"

.field public static final COMPONENT_IMAGE_MANAGER:Ljava/lang/String; = "IMM"

.field public static final COMPONENT_REGISTER_MANAGER:Ljava/lang/String; = "RMA"

.field public static final COMPONENT_STATE_MANAGER:Ljava/lang/String; = "STM"

.field public static final COMPONENT_VASCOTOKEN_MANAGER:Ljava/lang/String; = "VTM"

.field public static final COMPONENT_VERSION_MANAGER:Ljava/lang/String; = "VEM"

.field public static final COMPONENT_VTLOCALPW_MANAGER:Ljava/lang/String; = "LPM"

.field public static final COMPONENT_VTTOKEN_MANAGER:Ljava/lang/String; = "TOM"

.field private static a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

.field private static final c:[C

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private b:I

.field private f:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4f

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->c:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->c:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->d:Ljava/lang/String;

    const-string v0, "UD"

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->e:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0xf1s
        0x6bs
        0x33s
        0x26s
        0x28s
        0x36s
        0x35s
        0x37s
        0x33s
        0x66s
        0x61s
        0x72s
        0x75s
        0x68s
        0x24s
        0x26s
        0x24s
        0x25s
        0x36s
        0x61s
        0x76s
        0x6fs
        0x65s
        0x72s
        0x6as
        0xb7s
        0x26s
        0x25s
        0xb7s
        0x25s
        0x24s
        0x28s
        0x26s
        0x6fs
        0x75s
        0xf1s
        0x65s
        0x68s
        0x6as
        0x32s
        0x34s
        0x36s
        0x61s
        0x6as
        0x73s
        0x61s
        0x73s
        0x6bs
        0x6cs
        0x35s
        0x64s
        0x66s
        0x61s
        0x69s
        0x6cs
        0x6bs
        0xf1s
        0x6fs
        0x72s
        0x68s
        0x67s
        0x79s
        0x33s
        0x72s
        0x65s
        0x75s
        0x36s
        0x37s
        0x65s
        0x72s
        0x79s
        0x70s
        0x67s
        0x6bs
        0x73s
        0x64s
        0x66s
        0x67s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDynKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->e:Ljava/lang/String;

    :cond_0
    const-string v0, "STM"

    iget v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v3, v1}, Lnet/veritran/vtuserapplication/persistence/StateRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/StateRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "STM"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VEM"

    iget v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v3, v1}, Lnet/veritran/vtuserapplication/persistence/VersionRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "VEM"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v1, v2}, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "APM"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TOM"

    iget v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v3, v1}, Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "TOM"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VTM"

    iget v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v3, v1}, Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "VTM"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ARY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v1, v2}, Lnet/veritran/vtuserapplication/persistence/ArrayRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "ARY"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v1, v2}, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/RegisterRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "RMA"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LPM"

    sget-object v1, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->d:Ljava/lang/String;

    iget v2, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->b:I

    invoke-static {v0, v1, v2}, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    const-string v2, "LPM"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/persistence/RepositoryManager;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    goto :goto_0
.end method


# virtual methods
.method public getRepositories()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRepository(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyCloseApplication()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;->closeApplicationEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method
