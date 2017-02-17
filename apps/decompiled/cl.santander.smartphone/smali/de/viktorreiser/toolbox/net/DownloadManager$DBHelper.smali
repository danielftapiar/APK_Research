.class Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBHelper"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final DB_NAME:Ljava/lang/String; = "downloadmanager.db"

.field private static final DB_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 310
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 311
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 312
    const-string v2, "bypass"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "persistPath"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "persistDelete"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "addTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 313
    const-string v2, "finishTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "downloadStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "changeAttempts"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 314
    const-string v2, "changeAttemptCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "restrictToWifi"

    aput-object v2, v0, v1

    .line 310
    sput-object v0, Lde/viktorreiser/toolbox/net/DownloadManager$DBHelper;->ALL_COLUMNS:[Ljava/lang/String;

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 319
    if-nez p2, :cond_0

    const-string p2, "downloadmanager.db"

    .end local p2    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 320
    return-void
.end method

.method public static createContentValues(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "data"    # Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;

    .prologue
    .line 323
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v0, "v":Landroid/content/ContentValues;
    const-string v1, "uri"

    iget-object v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "status"

    iget v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v1, "priority"

    iget v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v1, "bypass"

    iget-boolean v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->bypassMobileSizeRestriction:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 329
    const-string v1, "persistDelete"

    iget-boolean v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->deleteAfterPersist:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
    const-string v1, "persistPath"

    iget-object v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->persistPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "size"

    iget v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v1, "mime"

    iget-object v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "rate"

    iget v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v1, "addTime"

    iget-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->addTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const-string v1, "downloadStartTime"

    iget-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v1, "finishTime"

    iget-wide v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->finishTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    const-string v1, "changeAttempts"

    iget v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "changeAttemptCount"

    iget v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttemptCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v1, "restrictToWifi"

    iget-boolean v2, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->restrictToWifi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 341
    return-object v0
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    new-instance v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;-><init>(Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;)V

    .line 347
    .local v0, "data":Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->id:J

    .line 348
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->uri:Landroid/net/Uri;

    .line 349
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->size:I

    .line 350
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->mime:Ljava/lang/String;

    .line 351
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->status:I

    .line 352
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadRate:I

    .line 353
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->priority:I

    .line 354
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->bypassMobileSizeRestriction:Z

    .line 355
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->persistPath:Ljava/lang/String;

    .line 356
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->deleteAfterPersist:Z

    .line 357
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->addTime:J

    .line 358
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->finishTime:J

    .line 359
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->downloadStartTime:J

    .line 360
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttempts:I

    .line 361
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->networkChangeAttemptCount:I

    .line 362
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;->restrictToWifi:Z

    .line 364
    return-object v0

    :cond_0
    move v1, v3

    .line 354
    goto :goto_0

    :cond_1
    move v1, v3

    .line 356
    goto :goto_1

    :cond_2
    move v2, v3

    .line 362
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 369
    const-string v0, "CREATE TABLE downloads (\n_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,\nuri TEXT NOT NULL,\nsize INTEGER NOT NULL,\nmime TEXT DEFUALT NULL,\nstatus INTEGER NOT NULL,\nrate INTEGER NOT NULL,\npriority INTEGER NOT NULL,\nbypass INTEGER NOT NULL,\npersistPath TEXT,\npersistDelete INTEGER NOT NULL,\naddTime INTEGER NOT NULL,\ndownloadStartTime INTEGER NOT NULL,\nfinishTime INTEGER NOT NULL,\nchangeAttempts INTEGER NOT NULL,\nchangeAttemptCount INTEGER NOT NULL,\nrestrictToWifi INTEGER NOT NULL\n);"

    .line 386
    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 387
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 392
    return-void
.end method
