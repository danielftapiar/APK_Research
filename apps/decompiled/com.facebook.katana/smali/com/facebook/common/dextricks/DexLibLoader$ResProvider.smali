.class abstract Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;
.super Ljava/lang/Object;
.source "DexLibLoader.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 208
    .line 212
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 213
    :try_start_1
    const-string v0, ".xz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    new-instance v4, Lcom/facebook/xzdecoder/XzInputStream;

    invoke-direct {v4, v2}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 217
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :try_start_3
    const-string v0, ".dex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 224
    :try_start_4
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 226
    :try_start_5
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v2, "classes.dex"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 232
    :goto_1
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 234
    :goto_2
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {v4, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 239
    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_3
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/Closeable;)V

    throw v0

    .line 236
    :cond_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 237
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    invoke-static {v4}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/Closeable;)V

    .line 241
    return-void

    .line 239
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_3

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v4, v2

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
