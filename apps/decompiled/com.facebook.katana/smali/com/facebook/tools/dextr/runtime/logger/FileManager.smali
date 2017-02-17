.class public Lcom/facebook/tools/dextr/runtime/logger/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static final c:Ljava/io/FilenameFilter;

.field private static final d:Ljava/io/FilenameFilter;


# instance fields
.field private a:I

.field private b:J

.field private final e:Ljava/io/File;

.field private f:Lcom/facebook/analytics/logger/AnalyticsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$1;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$1;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->c:Ljava/io/FilenameFilter;

    .line 57
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$2;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$2;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->d:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->b:J

    .line 68
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)Lcom/facebook/analytics/logger/AnalyticsLogger;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->f:Lcom/facebook/analytics/logger/AnalyticsLogger;

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 246
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/File;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    return-void

    .line 187
    :cond_1
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 191
    new-instance v1, Lcom/facebook/tools/dextr/runtime/logger/FileManager$5;

    invoke-direct {v1, p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$5;-><init>(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    const-string v2, "Dextr"

    const-string v3, "Can\'t delete cache file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;J)V
    .locals 7

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p3

    .line 216
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 219
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 222
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;-><init>(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$6;->run()V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    :goto_0
    return v0

    .line 161
    :cond_0
    const-string v2, "Dextr"

    const-string v3, "Can\'t move file: %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const-string v2, "Dextr"

    const-string v3, "Can\'t delete file: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method private d()Ljava/io/File;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    const-string v2, "upload"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->d()Ljava/io/File;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    iget-wide v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;J)V

    .line 126
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/facebook/tools/dextr/runtime/logger/FileManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$3;-><init>(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a:I

    .line 77
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 80
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->b:J

    .line 81
    return-void
.end method

.method public final a(Lcom/facebook/analytics/logger/AnalyticsLogger;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->f:Lcom/facebook/analytics/logger/AnalyticsLogger;

    .line 73
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;I)V

    .line 120
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/File;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 92
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 93
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez p2, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "override-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->d()Ljava/io/File;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    const-string v0, "Dextr"

    const-string v2, "Can\'t move file to upload folder: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    iget-wide v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->b:J

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;J)V

    .line 109
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;I)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_4
    const-string v0, "Dextr"

    const-string v1, "Couldn\'t create upload directory"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->d()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->d:Ljava/io/FilenameFilter;

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/facebook/tools/dextr/runtime/logger/FileManager$4;

    invoke-direct {v1, p0}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$4;-><init>(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    return-object v0
.end method

.method public final c()Ljava/io/File;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;->e:Ljava/io/File;

    return-object v0
.end method
