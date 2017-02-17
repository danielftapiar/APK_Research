.class Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;
.super Ljava/lang/Object;
.source "DexLibLoader.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a:Ljava/lang/String;

    .line 413
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->b:Ljava/lang/String;

    .line 414
    iput-object p3, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->c:Ljava/lang/String;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 418
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "program-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dex.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->c:Ljava/lang/String;

    return-object v0
.end method
