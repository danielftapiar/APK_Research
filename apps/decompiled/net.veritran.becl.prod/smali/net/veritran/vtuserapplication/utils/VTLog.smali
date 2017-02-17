.class public Lnet/veritran/vtuserapplication/utils/VTLog;
.super Ljava/lang/Object;


# static fields
.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DEBUG:I

.field public static LOG_LEVEL_ERROR:I

.field public static LOG_LEVEL_INFO:I

.field public static LOG_LEVEL_NONE:I

.field public static logLevel:I

.field public static logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_NONE:I

    sput v1, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_ERROR:I

    const/4 v0, 0x2

    sput v0, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_INFO:I

    const/4 v0, 0x3

    sput v0, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_DEBUG:I

    const/4 v0, 0x4

    sput v0, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_ALL:I

    sput v1, Lnet/veritran/vtuserapplication/utils/VTLog;->logLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logLevel:I

    sget v1, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_DEBUG:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    invoke-interface {v0, p0, p1}, Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logLevel:I

    sget v1, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_ERROR:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    invoke-interface {v0, p0, p1}, Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logLevel:I

    sget v1, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_INFO:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    invoke-interface {v0, p0, p1}, Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
