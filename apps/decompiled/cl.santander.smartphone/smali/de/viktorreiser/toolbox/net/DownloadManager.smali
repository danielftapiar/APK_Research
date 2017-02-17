.class public Lde/viktorreiser/toolbox/net/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/net/DownloadManager$DB;,
        Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;,
        Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;,
        Lde/viktorreiser/toolbox/net/DownloadManager$DownloadPrioriy;,
        Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;,
        Lde/viktorreiser/toolbox/net/DownloadManager$DownloadStatus;,
        Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;
    }
.end annotation


# instance fields
.field private volatile mCurrentHttpDownloads:I

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;

.field private volatile mDestroy:Z

.field private mDiscardDownloadByAge:J

.field private mDownloadsInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMaxHttpDownloads:I

.field private mMaxSizeForMobileDownload:J

.field private volatile mUpdateRate:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/net/DownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDownloadsInProgress:Ljava/util/List;

    .line 31
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDiscardDownloadByAge:J

    .line 32
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mMaxSizeForMobileDownload:J

    .line 33
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mUpdateRate:J

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mMaxHttpDownloads:I

    .line 35
    iput v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mCurrentHttpDownloads:I

    .line 37
    iput-boolean v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDestroy:Z

    .line 46
    new-instance v0, Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;

    invoke-direct {v0, p1, p2}, Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDbHelper:Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;

    .line 47
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDbHelper:Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    return-void
.end method

.method private processDownload()V
    .locals 6

    .prologue
    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v0, "v":Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    iget-object v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloads"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addTime<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDiscardDownloadByAge:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 239
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDestroy:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDestroy:Z

    .line 101
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDbHelper:Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;->close()V

    .line 103
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDestroy:Z

    .line 231
    return-void
.end method

.method public setDiscardAge(I)V
    .locals 2
    .param p1, "age"    # I

    .prologue
    .line 119
    if-lez p1, :cond_0

    .line 120
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDiscardDownloadByAge:J

    .line 122
    :cond_0
    return-void
.end method

.method public setMaxSizeForMobileDownload(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 113
    if-ltz p1, :cond_0

    .line 114
    int-to-long v0, p1

    iput-wide v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mMaxSizeForMobileDownload:J

    .line 116
    :cond_0
    return-void
.end method

.method public setMaximumHttpDownloads(I)V
    .locals 0
    .param p1, "maxDownloads"    # I

    .prologue
    .line 107
    if-ltz p1, :cond_0

    .line 108
    iput p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mMaxHttpDownloads:I

    .line 110
    :cond_0
    return-void
.end method

.method public setUpdateRate(J)V
    .locals 2
    .param p1, "rate"    # J

    .prologue
    .line 125
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 126
    iput-wide p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mUpdateRate:J

    .line 128
    :cond_0
    return-void
.end method

.method public startDownload(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;)J
    .locals 13
    .param p1, "download"    # Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v8, -0x1

    .line 52
    iget-object v7, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "scheme":Ljava/lang/String;
    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move-wide v7, v8

    .line 95
    :goto_0
    return-wide v7

    .line 58
    :cond_0
    iget-object v7, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 59
    new-instance v2, Ljava/io/File;

    iget-object v7, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "downloadPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 63
    iget-object v7, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    :cond_1
    iget-object v7, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 65
    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    iput-object v7, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    .line 72
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    .line 75
    .local v0, "currentPath":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "filePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 79
    iput-object v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    .line 82
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_6

    move-wide v7, v8

    .line 83
    goto :goto_0

    .line 66
    .end local v0    # "currentPath":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/io/File;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    move-wide v7, v8

    .line 68
    goto :goto_0

    .line 85
    .restart local v0    # "currentPath":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/io/File;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-wide v7, v8

    .line 86
    goto :goto_0

    .line 90
    .end local v0    # "currentPath":Ljava/lang/String;
    .end local v2    # "downloadPath":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "filePath":Ljava/io/File;
    :cond_6
    new-instance v1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;

    invoke-direct {v1, p1, v12}, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;-><init>(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;)V

    .line 91
    .local v1, "data":Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;
    iget-object v7, p0, Lde/viktorreiser/toolbox/net/DownloadManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "downloads"

    invoke-static {v1}, Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;->createContentValues(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    iput-wide v7, v1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->id:J

    .line 93
    invoke-direct {p0}, Lde/viktorreiser/toolbox/net/DownloadManager;->processDownload()V

    .line 95
    iget-wide v7, v1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->id:J

    goto/16 :goto_0
.end method
