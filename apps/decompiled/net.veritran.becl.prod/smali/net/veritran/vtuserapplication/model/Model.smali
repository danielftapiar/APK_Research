.class public Lnet/veritran/vtuserapplication/model/Model;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lnet/veritran/vtuserapplication/timeout/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/model/Model$2;,
        Lnet/veritran/vtuserapplication/model/Model$a;,
        Lnet/veritran/vtuserapplication/model/Model$b;
    }
.end annotation


# static fields
.field public static final SYSTEM_STATUS_ADMIN_MODE_NEW_APPLICATION_TO_DOWNLOAD:I = 0x1

.field public static final SYSTEM_STATUS_ADMIN_MODE_NEW_CONFIGURATION_TO_DOWNLOAD:I = 0x5

.field public static final SYSTEM_STATUS_ADMIN_MODE_NORMAL_STARTUP:I = 0x0

.field public static final SYSTEM_STATUS_ADMIN_MODE_RESTORE_PENDING:I = 0x2

.field public static final SYSTEM_STATUS_RUNNING_INTERNAL_STATES:I = 0x4

.field public static final SYSTEM_STATUS_RUNNING_USER_STATES:I = 0x3

.field private static a:I

.field public static states_back:[I

.field private static u:Lnet/veritran/vtuserapplication/model/Model;

.field private static v:Z


# instance fields
.field protected _currentState:Lnet/veritran/vtuserapplication/states/State;

.field private b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

.field private c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

.field private d:Lnet/veritran/vtuserapplication/comm/MessageManager;

.field private e:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

.field private f:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

.field private g:Lnet/veritran/vtuserapplication/model/StateChangedListener;

.field private h:Lnet/veritran/vtuserapplication/timeout/Timeout;

.field private i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

.field private j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

.field private k:Ljava/lang/String;

.field private l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

.field private m:Ljava/util/Hashtable;

.field private n:[I

.field private o:[I

.field private final p:[B

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lnet/veritran/vtuserapplication/model/Model;->a:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model;->states_back:[I

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model;->u:Lnet/veritran/vtuserapplication/model/Model;

    const/4 v0, 0x1

    sput-boolean v0, Lnet/veritran/vtuserapplication/model/Model;->v:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->m:Ljava/util/Hashtable;

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->n:[I

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->o:[I

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->p:[B

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->s:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x76t
        0x65t
        0x72t
        0x69t
        0x66t
        0x69t
        0x6et
        0x61t
        0x6et
        0x30t
        0x33t
        0x30t
        0x33t
        0x74t
        0x72t
        0x61t
        0x6et
    .end array-data
.end method

.method private a()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->p:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->p:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SESSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SESSION"

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/VTTimeUtils;->parseExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SESSION"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    const-string v0, "_CACHED"

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ARRAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_EXPIRATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_REGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;ZZZ)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveToken("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x71

    if-eq p1, v1, :cond_0

    const/16 v1, 0x72

    if-eq p1, v1, :cond_0

    const/16 v1, 0x73

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p5, 0x1

    move p4, v0

    move p3, v0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->transKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;-><init>()V

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setId(I)V

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setPersistent(Z)V

    invoke-virtual {v0, p4}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setEncryted(Z)V

    invoke-virtual {v0, p5}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setSecret(Z)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addRegister(Lnet/veritran/vtuserapplication/core/elements/TokenElement;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->debugRegisters()V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getTerminalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->pinKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^~VTCRYPTO~^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->transKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%vt$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%vt$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_2

    invoke-static {p2}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->transKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getAllPreferencesKeys()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "_CACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "_EXPIRATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SESSION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_EXPIRATION"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v3, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->n:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->n:[I

    array-length v0, v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->n:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->n:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->o:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->o:[I

    array-length v0, v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->o:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->o:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getSoftwareVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->setEncKey([B)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setAESWorkingKey(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/model/Model;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/Model;->u:Lnet/veritran/vtuserapplication/model/Model;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/Model;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/Model;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model;->u:Lnet/veritran/vtuserapplication/model/Model;

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Model;->u:Lnet/veritran/vtuserapplication/model/Model;

    return-object v0
.end method

.method public static isStarting()Z
    .locals 1

    sget-boolean v0, Lnet/veritran/vtuserapplication/model/Model;->v:Z

    return v0
.end method


# virtual methods
.method public addArray(III[I[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v4, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-direct {v4, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>(III[I)V

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, p2, :cond_1

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_0

    aget-object v5, p5, v2

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    return-void
.end method

.method public addArray(III[I[[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    new-instance v3, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-direct {v3, p1, p2, p3, p4}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>(III[I)V

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_0

    aget-object v4, p5, v2

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    return-void
.end method

.method public addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    return-void
.end method

.method public addInternalRegister(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->a(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method public addInternalRegister(ILjava/lang/String;ZZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method public addInternalRegister(ILjava/lang/String;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/veritran/vtuserapplication/model/Model;->a(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method public addMessageBuffer(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;-><init>()V

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->setId(I)V

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->add(Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;)V

    return-void
.end method

.method public addRegister(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method public addRegister(ILjava/lang/String;ZZZ)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xc7

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18f

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_3

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p5}, Lnet/veritran/vtuserapplication/model/Model;->a(ILjava/lang/String;ZZZ)V

    :cond_3
    return-void
.end method

.method public addRegisterFromMessage(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/16 v0, 0xc7

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18f

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_2

    const/16 v0, 0x3e7

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x72

    if-eq p1, v0, :cond_3

    const/16 v0, 0x73

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x75

    if-ne p1, v0, :cond_6

    invoke-static {}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->getEncKey()[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v1

    invoke-static {p2, v0, v1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    :cond_6
    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;-><init>()V

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setId(I)V

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setPersistent(Z)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setEncryted(Z)V

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setSecret(Z)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addRegister(Lnet/veritran/vtuserapplication/core/elements/TokenElement;)V

    goto :goto_0
.end method

.method public addRowToArray(I)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v4

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v5

    invoke-direct {v3, p1, v1, v4, v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>(III[I)V

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValues()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v1, ""

    invoke-virtual {v3, v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applicationStartedByGenericLaunch()Z
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->startedByGenericLaunch()Z

    move-result v0

    return v0
.end method

.method public applicationStartedByPushNotification()Z
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->startedByPushNotification()Z

    move-result v0

    return v0
.end method

.method public cacheArray(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->serialize()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-static {p1, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-static {p1, v0, v0}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public cacheClearAll()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->a(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public cacheRegister(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-static {p1, v1, v1}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-static {p1, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public cacheRemove(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {p1, v5, v3}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v3}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v5, v5}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v5}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v4, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v3}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    return v5
.end method

.method public cleanAllArrays([I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->cleanAllArrays([I)V

    return-void
.end method

.method public cleanAllMessageBuffers()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->deleteAll()V

    return-void
.end method

.method public cleanAllRegisters([I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->cleanAllRegisters([I)V

    return-void
.end method

.method public cleanArray(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->cleanArray(I)V

    return-void
.end method

.method public clearAESWorkingKey()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->c(Ljava/lang/String;)V

    return-void
.end method

.method public cloneArray(II)Z
    .locals 6

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v2

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v3

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValues()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addArray(III[I[Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public concatArray(III)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v1

    invoke-virtual {p0, p3}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v3

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v3

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v4

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v5

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v6

    invoke-direct {v3, p1, v4, v5, v6}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>(III[I)V

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValues()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValues()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configurationFinishesLoading()V
    .locals 3

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    const-string v2, "PREF_VERSION_FINGERPRINT"

    invoke-interface {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createArray(II)Z
    .locals 4

    const/4 v1, 0x0

    new-array v2, p2, [I

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-direct {v0, p1, v1, p2, v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>(III[I)V

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v0, 0x1

    return v0
.end method

.method public debugRegisters()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->registersDebug()V

    return-void
.end method

.method public defineCustomizedEncryptedRegisters()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getCustomEncryptedRegistersFromConfiguration()[I

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->n:[I

    return-void
.end method

.method public defineStaticallydEncryptedRegisters()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getStaticallyEncryptedRegistersFromConfiguration()[I

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->o:[I

    return-void
.end method

.method public deleteRowFromArray(II)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    new-instance v6, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v2

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v3

    invoke-direct {v6, p1, v0, v2, v3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>(III[I)V

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValues()[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v3

    if-ge v0, v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-eq v0, p2, :cond_2

    aget-object v4, v7, v2

    invoke-virtual {v6, v4}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->addCell(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRowSelected()I

    move-result v0

    if-ne p2, v0, :cond_5

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->unselectRow()V

    :goto_3
    invoke-virtual {p0, v6}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRowSelected()I

    move-result v0

    if-ge p2, v0, :cond_6

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRowSelected()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRowSelected(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRowSelected()I

    move-result v0

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRowSelected(I)V

    goto :goto_3
.end method

.method public didChangeVersion()Z
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    const-string v1, "PREF_VERSION_FINGERPRINT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpArrayToBuffer(IIII)V
    .locals 2

    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;-><init>()V

    invoke-virtual {v0, p4}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->setId(I)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValue(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->add(Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;)V

    return-void
.end method

.method public dumpArrayToRegister(IIII)V
    .locals 2

    new-instance v0, Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;-><init>()V

    invoke-virtual {v0, p4}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setId(I)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValue(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addRegister(Lnet/veritran/vtuserapplication/core/elements/TokenElement;)V

    return-void
.end method

.method public dumpTokenToBuffer(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addMessageBuffer(ILjava/lang/String;)V

    return-void
.end method

.method public existsArray(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAESWorkingKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getAESWorkingKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    return-object v0
.end method

.method public getApplicationModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    return-object v0
.end method

.method public getArrayFieldNames(I)[I
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getArrayFieldValues(I)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValues()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferArrayID(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getBufferArrayID()I

    move-result v0

    return v0
.end method

.method public getCachedArray(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v3, v2, v6}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1, v0, v0}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v5, v4, v6}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/vtuserapplication/model/Model;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setId(I)V

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v4}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getCachedRegister(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v3, v2, v6}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v5, v4, v6}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/vtuserapplication/model/Model;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, v4}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->removePreference(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurableProductId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectionTimeout()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getConnectionTimeout()I

    move-result v0

    return v0
.end method

.method public getConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8a

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentState()Lnet/veritran/vtuserapplication/states/State;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    return-object v0
.end method

.method public getCurrentStateID()I
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Model;->states_back:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCustomDecryptedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "^~VTCRYPTO~^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Can\'t decrypt data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid data decrypted"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDHPublicKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDiffieHellmanP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v1

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDiffieHellmanG()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v2

    invoke-interface {v2}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getDiffieHellmanImplementation()Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    move-result-object v2

    iput-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    invoke-interface {v2, v1}, Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;->setG(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;->setP(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;->setPrivateKeySize(I)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTheme()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getAvailableThemes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Model"

    const-string v1, "Default theme is null"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "common"

    goto :goto_0
.end method

.method public getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationPlatform()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceInformation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getDeviceInformation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericLaunchParameters()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getGenericLaunchParameters()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getJADTermID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBufferValue(I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3e7

    const/4 v1, 0x0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationBrand()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationModel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x27

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getDeviceInformation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x66

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->get(I)Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getSequenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v2, v0, v1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->transKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/16 v0, 0xe

    if-ne p1, v0, :cond_c

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_1
    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->p:[B

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->p:[B

    aget-byte v1, v1, v0

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->transKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public getMessageBuffersList()[I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->b:Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/MessageBuffersStorage;->getMessageBuffersList()[I

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, p1, p2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->s:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getProduct()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v1

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->usesRepoProduct()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getConfigurableProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->s:Ljava/lang/String;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPushServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getPushNotificationServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSafeRegisterValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSessionImage(I)Lnet/veritran/vtuserapplication/ui/VTImageInterface;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    return-object v0
.end method

.method public getSoftwareVersion()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getSoftwareVersion()I

    move-result v0

    return v0
.end method

.method public getStartState()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getStartState()I

    move-result v0

    goto :goto_0
.end method

.method public getStaticDecryptedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/model/Model;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "%vt$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%vt$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Can\'t decrypt data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid data decrypted"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedEncodings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getSupportedEncodings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemStatus()I
    .locals 1

    sget v0, Lnet/veritran/vtuserapplication/model/Model;->a:I

    return v0
.end method

.method public getVTTokenBackup()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->getVTTokenBackUp()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Model"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public getVTTokenPwdValidation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->e:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVTTokenSecSalt()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->e:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSalt()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Model"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public getVTTrackingUtils()Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->t:Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->t:Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->t:Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;

    return-object v0
.end method

.method public declared-synchronized gotoState(I)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/State;->finalize()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    const/16 v0, 0xc6

    if-gt p1, v0, :cond_1

    const/4 v0, 0x4

    sput v0, Lnet/veritran/vtuserapplication/model/Model;->a:I

    :cond_1
    const-string v0, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GotoState -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Free Mem  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " K systemStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getSystemStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getAppAdministrativeMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->g:Lnet/veritran/vtuserapplication/model/StateChangedListener;

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/StateChangedListener;->newStateCalled(I)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->registersDebug()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getAppAdministrativeMode()I

    move-result v0

    if-ne v0, v9, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 p1, 0x10

    :cond_2
    sparse-switch p1, :sswitch_data_0

    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GotoState -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... sent out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :sswitch_0
    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    :try_start_1
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    :cond_4
    const/16 v0, 0x19

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setAppAdministrativeMode(I)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->isVTTokenActive()Z

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xc8

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->applicationNeedToUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->processSpecialState(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-gez v0, :cond_6

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->handleError(I)V

    goto :goto_0

    :cond_6
    sget-object v3, Lnet/veritran/vtuserapplication/model/Model;->states_back:[I

    const/4 v4, 0x0

    sget-object v5, Lnet/veritran/vtuserapplication/model/Model;->states_back:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    sget-object v3, Lnet/veritran/vtuserapplication/model/Model;->states_back:[I

    const/4 v4, 0x1

    aput v0, v3, v4

    if-ne v0, v8, :cond_7

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->notifyExit()V

    goto :goto_0

    :cond_7
    if-eq v0, v9, :cond_8

    const/16 v3, 0xc

    if-eq v0, v3, :cond_8

    const/16 v3, 0xd

    if-eq v0, v3, :cond_8

    const/16 v3, 0xf

    if-ne v0, v3, :cond_a

    :cond_8
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->setProcessHelperAvailability(Z)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    const/16 v3, 0xc

    if-ne v0, v3, :cond_9

    move v0, v2

    :cond_9
    const/16 v3, 0xf

    if-ne v0, v3, :cond_a

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    const/16 v4, 0xc8

    const-string v5, "0001"

    invoke-virtual {v3, v4, v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :cond_a
    if-ne v0, v2, :cond_c

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->shouldForceSynchro()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->didChangeVersion()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move v0, v1

    :cond_c
    :goto_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_e

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->notifyApplicationUpdate()V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getAppAdministrativeMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getStartState()I

    move-result v0

    const/4 v2, 0x3

    sput v2, Lnet/veritran/vtuserapplication/model/Model;->a:I

    goto :goto_1

    :pswitch_2
    const-string v0, "199"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_e
    const/16 v2, 0x68

    if-ne v0, v2, :cond_16

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getCurrentState()Lnet/veritran/vtuserapplication/states/State;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/states/State;->getId()I

    move-result v0

    move v6, v0

    :goto_2
    if-ne v6, v1, :cond_10

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    const/16 v1, 0x6b

    const-string v2, "1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xb1

    const-string v2, "VTMAP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    const/16 v1, 0xb2

    const-string v2, "VTDIALER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->hasLocationSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v1, 0xc3

    const-string v2, "VTLOC"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getAESWorkingKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->checkForUpdates(Z)Z

    :cond_10
    :goto_4
    const/16 v0, 0x10

    if-ne v6, v0, :cond_11

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->checkForUpdates(Z)Z

    :cond_11
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->notifyStateChanged()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0xc3

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;ZZZ)V

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->shouldForceSynchro()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->didChangeVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->deleteConfigurationFromInternalStorage()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->checkForUpdates(Z)Z

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->shouldTrySynchro()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->sendCheckForSynchro()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->checkForUpdates(Z)Z

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->checkForUpdates(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_16
    move v6, v0

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleError(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->handleError(ILjava/lang/String;Z)V

    return-void
.end method

.method public handleError(ILjava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1}, Lnet/veritran/vtuserapplication/model/Errors;->getErrorLevel(I)I

    move-result v3

    invoke-static {p1}, Lnet/veritran/vtuserapplication/model/Errors;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    const/16 v1, 0xc8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v4}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0xca

    invoke-virtual {p0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    if-nez p3, :cond_1

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    :cond_1
    return-void

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v3, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->hardClean(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->hardClean(Z)V

    const/16 v0, 0x14

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public isLanguageSupported(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVTTokenActive()Z
    .locals 2

    const/16 v0, 0xce

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "Model"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markRow(II)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRowSelected(I)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyApplicationUpdate()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->stop()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->applicationUpdate()V

    return-void
.end method

.method public notifyCloseApplication()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->notifyCloseApplication()V

    :cond_0
    return-void
.end method

.method public notifyConfigurationUpdateFinished()V
    .locals 2

    const-string v0, "Model"

    const-string v1, "notifyConfigurationUpdateFinished"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getAppAdministrativeMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->downloadXMLConfigurationFromModel()V

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setAppAdministrativeMode(I)V

    return-void
.end method

.method public notifyExit()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->stop()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/timeout/Timeout;->setListener(Lnet/veritran/vtuserapplication/timeout/TimeoutListener;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->exitApp()V

    return-void
.end method

.method public notifyStateChanged()V
    .locals 2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getCurrentState()Lnet/veritran/vtuserapplication/states/State;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->g:Lnet/veritran/vtuserapplication/model/StateChangedListener;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getCurrentState()Lnet/veritran/vtuserapplication/states/State;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/StateChangedListener;->stateChanged(Lnet/veritran/vtuserapplication/states/State;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Model"

    const-string v1, "getCurrentState()==null!!!"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyTimedOut()V
    .locals 2

    const-string v0, "Model"

    const-string v1, "notifyTimedOut!!!"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    const/16 v0, 0xb

    const-string v1, "Ha expirado su sesion"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->sessionTimedOut()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->noSessionTimedOut()V

    goto :goto_1
.end method

.method public printCardData()V
    .locals 0

    return-void
.end method

.method public printLocalPasswordData()V
    .locals 0

    return-void
.end method

.method public processState(Lnet/veritran/vtuserapplication/states/State;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/Model;->_currentState:Lnet/veritran/vtuserapplication/states/State;

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->notifyStateChanged()V

    return-void
.end method

.method public restartSessionTimeout()V
    .locals 3

    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartSessionTimeout BEGIN ---> Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->setSessionTimeout()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->restart()V

    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartSessionTimeout END ---> Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getInstance()Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-static {}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getInstance()Lnet/veritran/vtuserapplication/comm/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->init(Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getVTTokenHelper()Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->e:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getVTLocalPasswordHelper()Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->f:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/State;->setMessageManager(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->updateStartUp(I)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->updateStartUp(I)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->setCurrentLanguage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->setSessionTimeout()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->updateStartUp(I)V

    const/16 v0, 0x161

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x161

    const-string v1, "31536000"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->start()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->getAESWorkingKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->setEncKey([B)V

    const/4 v0, 0x1

    sput-boolean v0, Lnet/veritran/vtuserapplication/model/Model;->v:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lnet/veritran/vtuserapplication/model/Model;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->i:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " SAE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1c9

    invoke-interface {v1, v2, v0, v3}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->errorForInvalidApplication(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public sendCompletion()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->sendCompletion()V

    return-void
.end method

.method public sendTransaction()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/comm/MessageManager;->sendTransaction()V

    return-void
.end method

.method public sendVTTokenBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-virtual {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/comm/MessageManager;->sendVTTokenBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendVTTokenRestoreRequest(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->d:Lnet/veritran/vtuserapplication/comm/MessageManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->sendVTTokenRestoreRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sessionClean()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->a(Z)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->cleanAllRegistersUnconditionlly()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->cleanAllArrays([I)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->cleanAllMessageBuffers()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->m:Ljava/util/Hashtable;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->e:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTTokenState;->startUp(Lnet/veritran/vtuserapplication/model/VTTokenHelper;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->f:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->startUp(Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;)V

    new-instance v0, Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->t:Lnet/veritran/vtuserapplication/tracking/VTTrackingUtils;

    return-void
.end method

.method public setArrayForSending(IZI)V
    .locals 2

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setForSending(ZI)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    return-void
.end method

.method public setDHPublicKeyPeer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;->getFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->l:Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    return-void
.end method

.method public setGatewayURL(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/Model;->k:Ljava/lang/String;

    invoke-static {}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getInstance()Lnet/veritran/vtuserapplication/comm/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setGateway(Ljava/lang/String;)V

    return-void
.end method

.method public setJADTermID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/Model;->q:Ljava/lang/String;

    return-void
.end method

.method public setModeNewConfigurationToDownload()V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->deleteConfigurationFromInternalStorage()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setAppAdministrativeMode(I)V

    return-void
.end method

.method public setNormalStartUpMode()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setAppAdministrativeMode(I)V

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/Model;->r:Ljava/lang/String;

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->j:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    invoke-interface {v0, p1, p2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->hardClean(Z)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setProduct(Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->usesRepoProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/Model;->s:Ljava/lang/String;

    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->startingApplication()V

    return-void
.end method

.method public setSessionImage(ILnet/veritran/vtuserapplication/ui/VTImageInterface;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSessionTimeout()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/timeout/Timeout;->setListener(Lnet/veritran/vtuserapplication/timeout/TimeoutListener;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getSessionTimeout()I

    move-result v0

    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    new-instance v1, Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;-><init>(I)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->h:Lnet/veritran/vtuserapplication/timeout/Timeout;

    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->setListener(Lnet/veritran/vtuserapplication/timeout/TimeoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Model"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSoftwareVersion(I)V
    .locals 0

    return-void
.end method

.method public setStateChangedListener(Lnet/veritran/vtuserapplication/model/StateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/Model;->g:Lnet/veritran/vtuserapplication/model/StateChangedListener;

    return-void
.end method

.method public shouldForceSynchro()Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x161

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastSynchroSuccess()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gtz v1, :cond_2

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setLastSynchroSuccess()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastSynchroSuccess()J

    move-result-wide v2

    :cond_2
    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shouldTrySynchro()Z
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x160

    invoke-virtual {p0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastSynchroTried()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    add-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sortArray(ILjava/lang/String;)Z
    .locals 15

    invoke-virtual/range {p0 .. p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "|"

    const-string v4, ";"

    const-string v6, "_"

    sget-object v7, Lnet/veritran/vtuserapplication/model/Model$b;->a:Lnet/veritran/vtuserapplication/model/Model$b;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v1, v8

    new-array v9, v1, [Lnet/veritran/vtuserapplication/model/Model$a;

    const/4 v1, 0x0

    :goto_1
    array-length v2, v8

    if-ge v1, v2, :cond_c

    new-instance v10, Lnet/veritran/vtuserapplication/model/Model$a;

    const/4 v2, 0x0

    invoke-direct {v10, p0, v2}, Lnet/veritran/vtuserapplication/model/Model$a;-><init>(Lnet/veritran/vtuserapplication/model/Model;B)V

    iput-object v6, v10, Lnet/veritran/vtuserapplication/model/Model$a;->b:Ljava/lang/String;

    iput-object v7, v10, Lnet/veritran/vtuserapplication/model/Model$a;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    aget-object v2, v8, v1

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x0

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v13

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v14

    :goto_2
    if-ge v2, v13, :cond_3

    aget v3, v14, v2

    if-ne v12, v3, :cond_1

    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_2

    :goto_4
    iput v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->a:I

    iget v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->a:I

    if-gez v2, :cond_4

    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Column "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a valid column, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    goto :goto_4

    :catch_0
    move-exception v2

    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Column "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a number, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    array-length v2, v11

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sort Format "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a valid value, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    aget-object v2, v11, v2

    iput-object v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->b:Ljava/lang/String;

    :cond_6
    array-length v2, v11

    const/4 v3, 0x3

    if-lt v2, v3, :cond_7

    const/4 v2, 0x2

    aget-object v2, v11, v2

    const-string v3, "ASC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lnet/veritran/vtuserapplication/model/Model$b;->a:Lnet/veritran/vtuserapplication/model/Model$b;

    iput-object v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    :cond_7
    :goto_5
    aput-object v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x2

    aget-object v2, v11, v2

    const-string v3, "DESC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lnet/veritran/vtuserapplication/model/Model$b;->b:Lnet/veritran/vtuserapplication/model/Model$b;

    iput-object v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    goto :goto_5

    :cond_9
    const/4 v2, 0x2

    aget-object v2, v11, v2

    const-string v3, "ASCNUM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lnet/veritran/vtuserapplication/model/Model$b;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    iput-object v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    goto :goto_5

    :cond_a
    const/4 v2, 0x2

    aget-object v2, v11, v2

    const-string v3, "DESCNUM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lnet/veritran/vtuserapplication/model/Model$b;->d:Lnet/veritran/vtuserapplication/model/Model$b;

    iput-object v2, v10, Lnet/veritran/vtuserapplication/model/Model$a;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    goto :goto_5

    :cond_b
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sort Kind "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a valid value, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValuesPerRow()[[Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lnet/veritran/vtuserapplication/model/Model$1;

    invoke-direct {v1, p0, v9}, Lnet/veritran/vtuserapplication/model/Model$1;-><init>(Lnet/veritran/vtuserapplication/model/Model;[Lnet/veritran/vtuserapplication/model/Model$a;)V

    invoke-static {v6, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v3

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v4

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getTitles()[I

    move-result-object v5

    move-object v1, p0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lnet/veritran/vtuserapplication/model/Model;->addArray(III[I[[Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public testCardData()V
    .locals 2

    const/16 v0, 0x6d

    const-string v1, "120"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6f

    const-string v1, "500"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x136

    const-string v1, "506340"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x137

    const-string v1, "0000011"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x138

    const-string v1, "12345"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x139

    const-string v1, "01"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->printCardData()V

    invoke-static {}, Lnet/veritran/callapi/VTCardGeneratorAPIManager;->process()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->printCardData()V

    return-void
.end method

.method public testChangeProduct()V
    .locals 1

    const-string v0, "B2"

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->setProduct(Ljava/lang/String;)V

    return-void
.end method

.method public testLocalPassword()V
    .locals 5

    const/16 v4, 0x6f

    const/16 v3, 0x6e

    const/16 v2, 0x6d

    const/16 v0, 0x294

    const-string v1, "660"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x295

    const-string v1, "661"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->printLocalPasswordData()V

    const/16 v0, 0xdf

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "119"

    invoke-virtual {p0, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p0, v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "500"

    invoke-virtual {p0, v4, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x12d

    const-string v1, "apapapa"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x12e

    const-string v1, "apapapa"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->process()V

    :goto_0
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/Model;->printLocalPasswordData()V

    return-void

    :cond_0
    const-string v0, "119"

    invoke-virtual {p0, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "4"

    invoke-virtual {p0, v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "500"

    invoke-virtual {p0, v4, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x12c

    const-string v1, "bbbbbbbbbb"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x130

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x133

    const-string v1, "660;661"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->process()V

    goto :goto_0
.end method

.method public unmarkRow(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->unselectRow()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/model/Model;->c:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRowFromArray(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v0, "|"

    if-eqz p3, :cond_2

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object p3, v0

    :cond_3
    invoke-static {p3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v3

    array-length v5, v4

    if-ne v0, v5, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    array-length v0, v3

    new-array v5, v0, [I

    move v0, v1

    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_4

    :try_start_0
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v2, "Model"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Column "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a number. Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_2
    array-length v0, v5

    if-ge v1, v0, :cond_5

    aget v0, v5, v1

    aget-object v3, v4, v1

    invoke-virtual {v2, p2, v0, v3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setValue(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateStartUp(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->g:Lnet/veritran/vtuserapplication/model/StateChangedListener;

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/StateChangedListener;->updateStartUp(I)V

    return-void
.end method

.method public vtlocalpasswordStartUp()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->f:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->startUp(Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;)V

    return-void
.end method

.method public vttokenStartUp()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/Model;->e:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/VTTokenState;->startUp(Lnet/veritran/vtuserapplication/model/VTTokenHelper;)V

    return-void
.end method
