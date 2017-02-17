.class final Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;
.super Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;
.source "DexLibLoader.java"


# instance fields
.field private a:Ljava/util/zip/ZipFile;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;-><init>(B)V

    .line 330
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;->a:Ljava/util/zip/ZipFile;

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;->a:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 340
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;->a:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;->a:Ljava/util/zip/ZipFile;

    .line 349
    :cond_0
    return-void
.end method
