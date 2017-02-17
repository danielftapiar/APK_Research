.class public Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;
.super Lcom/facebook/tools/dextr/runtime/logger/LogWriter;
.source "FileLogWriter.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/StringBuilder;

.field private g:[B

.field private final h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

.field private i:Z

.field private j:Ljava/io/OutputStream;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->a:Ljava/nio/charset/Charset;

    .line 32
    const/16 v0, 0x3e8

    sput v0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->b:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x40

    .line 52
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/LogWriter;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->g:[B

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->i:Z

    .line 53
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->c:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->d:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->e:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->UNKNOWN_TYPE:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;-><init>(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    .line 57
    return-void
.end method

.method private static a(J)J
    .locals 4

    .prologue
    .line 184
    sget v0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->b:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, p0

    sget v2, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 149
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 150
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    const-string v1, "dt\nver|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cmap|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "prec|6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    const-string v1, "tag|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .locals 6

    .prologue
    .line 188
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 190
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->g:[B

    array-length v0, v0

    if-le v2, v0, :cond_0

    .line 192
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->g:[B

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->g:[B

    .line 197
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 199
    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 200
    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 197
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/16 v4, 0x2e

    aput-byte v4, v3, v0

    goto :goto_1

    .line 206
    :cond_2
    return v2
.end method

.method private b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->i:Z

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->k:J

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    .line 134
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->i:Z

    .line 146
    :cond_1
    return-void

    .line 139
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 141
    iput-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    goto :goto_0

    .line 139
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)J
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7c

    .line 60
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->i:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 65
    const-wide/16 v0, -0x1

    .line 115
    :goto_0
    return-wide v0

    .line 72
    :cond_1
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->k:J

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 73
    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->a(J)J

    move-result-wide v4

    .line 74
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 76
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a()I

    move-result v3

    iget-object v6, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v6}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->d()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->d()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->e()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->f()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->f()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->h()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->h()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->f:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->b()I

    move-result v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->g:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->h:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->d()I

    move-result v6

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->e()I

    move-result v7

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->f()I

    move-result v8

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->h()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;JIIILjava/lang/String;J)Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    .line 115
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->a()I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 102
    iput-object v9, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/FileLogWriter;->j:Ljava/io/OutputStream;

    .line 212
    return-void
.end method
