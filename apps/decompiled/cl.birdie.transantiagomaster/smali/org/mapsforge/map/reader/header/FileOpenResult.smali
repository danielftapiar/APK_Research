.class public final Lorg/mapsforge/map/reader/header/FileOpenResult;
.super Ljava/lang/Object;
.source "FileOpenResult.java"


# static fields
.field public static final SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    invoke-direct {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>()V

    sput-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->success:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->errorMessage:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error message must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->success:Z

    .line 43
    iput-object p1, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->errorMessage:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final isSuccess()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->success:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "FileOpenResult [success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-boolean v1, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lorg/mapsforge/map/reader/header/FileOpenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
