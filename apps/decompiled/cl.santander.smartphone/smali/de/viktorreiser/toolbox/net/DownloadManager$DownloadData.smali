.class Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadData"
.end annotation


# instance fields
.field public addTime:J

.field public bypassMobileSizeRestriction:Z

.field public deleteAfterPersist:Z

.field public downloadRate:I

.field public downloadStartTime:J

.field public finishTime:J

.field public id:J

.field public mime:Ljava/lang/String;

.field public networkChangeAttemptCount:I

.field public networkChangeAttempts:I

.field public persistPath:Ljava/lang/String;

.field public priority:I

.field public restrictToWifi:Z

.field public size:I

.field public status:I

.field public task:Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->task:Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;

    .line 251
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->uri:Landroid/net/Uri;

    .line 252
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->persistPath:Ljava/lang/String;

    .line 253
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->size:I

    .line 254
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->mime:Ljava/lang/String;

    .line 255
    iput-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->addTime:J

    .line 256
    iput-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadStartTime:J

    .line 257
    iput-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->finishTime:J

    .line 258
    const/4 v0, 0x2

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->status:I

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->deleteAfterPersist:Z

    .line 261
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->bypassMobileSizeRestriction:Z

    .line 262
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadRate:I

    .line 263
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttempts:I

    .line 264
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttemptCount:I

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;-><init>()V

    return-void
.end method

.method private constructor <init>(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;)V
    .locals 4
    .param p1, "download"    # Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->task:Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;

    .line 251
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->uri:Landroid/net/Uri;

    .line 252
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->persistPath:Ljava/lang/String;

    .line 253
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->size:I

    .line 254
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->mime:Ljava/lang/String;

    .line 255
    iput-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->addTime:J

    .line 256
    iput-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadStartTime:J

    .line 257
    iput-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->finishTime:J

    .line 258
    const/4 v0, 0x2

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->status:I

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->deleteAfterPersist:Z

    .line 261
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->bypassMobileSizeRestriction:Z

    .line 262
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadRate:I

    .line 263
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttempts:I

    .line 264
    iput v1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttemptCount:I

    .line 269
    iget-object v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->uri:Landroid/net/Uri;

    .line 270
    iget-object v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->persistPath:Ljava/lang/String;

    .line 271
    iget-boolean v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->deleteAfterPersist:Z

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->deleteAfterPersist:Z

    .line 272
    iget-boolean v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->bypassMobileSizeRestriction:Z

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->bypassMobileSizeRestriction:Z

    .line 273
    iget v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->networkChangeAttempts:I

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttempts:I

    .line 274
    iget v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->priority:I

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->priority:I

    .line 275
    iget-boolean v0, p1, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->restrictToWifi:Z

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->restrictToWifi:Z

    .line 276
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->addTime:J

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;-><init>(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;)V

    return-void
.end method
