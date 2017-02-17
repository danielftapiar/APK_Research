.class public Lcom/facebook/sosource/DirectorySoSourceWithAssets;
.super Lcom/facebook/soloader/DirectorySoSource;
.source "DirectorySoSourceWithAssets.java"


# instance fields
.field private final c:Ljava/io/File;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 49
    iput-object p1, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->d:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/facebook/soloader/SysUtil;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->c:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->e:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->f:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->g:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->a:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->a(Ljava/lang/String;ILjava/io/File;)I

    move-result v0

    .line 95
    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->c:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->a(Ljava/lang/String;ILjava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/facebook/soloader/DirectorySoSource;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->c:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->f:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/facebook/sosource/ApkXzsTools;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/sosource/ApkXzsTools;->a(Ljava/io/File;Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->a(Landroid/content/Context;)Lcom/facebook/soloader/FileLocker;

    move-result-object v2

    .line 70
    const/4 v1, 0x1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->c:Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->g:Ljava/util/Map;

    invoke-static {v0, v3, v4}, Lcom/facebook/sosource/ApkXzsTools;->a(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;)V

    .line 78
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->c:Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->f:Ljava/util/Map;

    invoke-static {v0, v3, v4, v5, v2}, Lcom/facebook/sosource/ApkXzsTools;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/facebook/soloader/FileLocker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/facebook/soloader/FileLocker;->close()V

    :cond_0
    throw v0
.end method
