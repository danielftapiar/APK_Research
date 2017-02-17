.class public Lorg/microemu/util/RecordStoreImpl;
.super Ljavax/microedition/rms/RecordStore;
.source "RecordStoreImpl.java"


# static fields
.field private static final fileIdentifier:[B

.field private static final versionMajor:B = 0x3t

.field private static final versionMinor:B


# instance fields
.field private lastModified:J

.field private lastRecordId:I

.field private transient open:Z

.field private transient recordListeners:Ljava/util/Vector;

.field private transient recordStoreManager:Lorg/microemu/RecordStoreManager;

.field private recordStoreName:Ljava/lang/String;

.field private records:Ljava/util/Hashtable;

.field private size:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/microemu/util/RecordStoreImpl;->fileIdentifier:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x49t
        0x44t
        0x52t
        0x4dt
        0x53t
    .end array-data
.end method

.method public constructor <init>(Lorg/microemu/RecordStoreManager;)V
    .locals 2
    .param p1, "recordStoreManager"    # Lorg/microemu/RecordStoreManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljavax/microedition/rms/RecordStore;-><init>()V

    .line 55
    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    .line 57
    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    .line 63
    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    .line 89
    iput-object p1, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/microemu/RecordStoreManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "recordStoreManager"    # Lorg/microemu/RecordStoreManager;
    .param p2, "recordStoreName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljavax/microedition/rms/RecordStore;-><init>()V

    .line 55
    iput v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    .line 57
    iput v2, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    .line 63
    iput v2, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    .line 76
    iput-object p1, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 78
    iput-object p2, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreName:Ljava/lang/String;

    .line 82
    :goto_0
    iput-boolean v2, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreName:Ljava/lang/String;

    goto :goto_0
.end method

.method private fireRecordListener(II)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "recordId"    # I

    .prologue
    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 479
    .local v2, "timestamp":J
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/microedition/rms/RecordListener;

    .line 482
    .local v7, "l":Ljavax/microedition/rms/RecordListener;
    instance-of v0, v7, Lorg/microemu/util/ExtendedRecordListener;

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 483
    check-cast v0, Lorg/microemu/util/ExtendedRecordListener;

    move v1, p1

    move-object v4, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/microemu/util/ExtendedRecordListener;->recordEvent(IJLjavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 485
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 487
    :pswitch_1
    invoke-interface {v7, p0, p2}, Ljavax/microedition/rms/RecordListener;->recordAdded(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 490
    :pswitch_2
    invoke-interface {v7, p0, p2}, Ljavax/microedition/rms/RecordListener;->recordChanged(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 493
    :pswitch_3
    invoke-interface {v7, p0, p2}, Ljavax/microedition/rms/RecordListener;->recordDeleted(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 498
    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v7    # "l":Ljavax/microedition/rms/RecordListener;
    :cond_1
    return-void

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    iget-boolean v2, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v2, :cond_0

    .line 311
    new-instance v2, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v2}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v2

    .line 313
    :cond_0
    if-nez p1, :cond_1

    if-lez p3, :cond_1

    .line 314
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 316
    :cond_1
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v2, p0}, Lorg/microemu/RecordStoreManager;->getSizeAvailable(Lorg/microemu/util/RecordStoreImpl;)I

    move-result v2

    if-le p3, v2, :cond_2

    .line 317
    new-instance v2, Ljavax/microedition/rms/RecordStoreFullException;

    invoke-direct {v2}, Ljavax/microedition/rms/RecordStoreFullException;-><init>()V

    throw v2

    .line 321
    :cond_2
    invoke-virtual {p0, v4, v4, v3}, Lorg/microemu/util/RecordStoreImpl;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    .line 323
    new-array v1, p3, [B

    .line 324
    .local v1, "recordData":[B
    if-eqz p1, :cond_3

    .line 325
    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    :cond_3
    invoke-virtual {p0}, Lorg/microemu/util/RecordStoreImpl;->getNextRecordID()I

    move-result v0

    .line 329
    .local v0, "nextRecordID":I
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget v2, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    .line 333
    iget v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    .line 334
    iget v2, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v2, p0, v0}, Lorg/microemu/RecordStoreManager;->saveRecord(Lorg/microemu/util/RecordStoreImpl;I)V

    .line 339
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lorg/microemu/util/RecordStoreImpl;->fireRecordListener(II)V

    .line 341
    return v0

    .line 335
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/microedition/rms/RecordListener;

    .prologue
    .line 279
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 282
    :cond_0
    return-void
.end method

.method public closeRecordStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    const/16 v1, 0x9

    invoke-virtual {p0}, Lorg/microemu/util/RecordStoreImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/microemu/RecordStoreManager;->fireRecordStoreListener(ILjava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    .line 191
    return-void
.end method

.method public deleteRecord(I)V
    .locals 2
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 352
    :cond_0
    monitor-enter p0

    .line 354
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/microemu/util/RecordStoreImpl;->getRecord(I)[B

    .line 355
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    .line 358
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    .line 359
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v0, p0, p1}, Lorg/microemu/RecordStoreManager;->deleteRecord(Lorg/microemu/util/RecordStoreImpl;I)V

    .line 363
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/microemu/util/RecordStoreImpl;->fireRecordListener(II)V

    .line 364
    return-void

    .line 359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;
    .locals 1
    .param p1, "filter"    # Ljavax/microedition/rms/RecordFilter;
    .param p2, "comparator"    # Ljavax/microedition/rms/RecordComparator;
    .param p3, "keepUpdated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 454
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 458
    :cond_0
    new-instance v0, Lorg/microemu/util/RecordEnumerationImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/microemu/util/RecordEnumerationImpl;-><init>(Lorg/microemu/util/RecordStoreImpl;Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)V

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getLastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 271
    :cond_0
    monitor-enter p0

    .line 272
    :try_start_0
    iget-wide v0, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    monitor-exit p0

    return-wide v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRecordID()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/microemu/util/RecordStoreImpl;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumRecords()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 225
    :cond_0
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    return v0
.end method

.method public getRecord(I[BI)I
    .locals 3
    .param p1, "recordId"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/microemu/util/RecordStoreImpl;->getRecordSize(I)I

    move-result v0

    .line 395
    .local v0, "recordSize":I
    iget-object v1, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lorg/microemu/util/RecordStoreImpl;->fireRecordListener(II)V

    .line 400
    return v0

    .line 396
    .end local v0    # "recordSize":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRecord(I)[B
    .locals 3
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 407
    iget-boolean v1, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v1, :cond_0

    .line 408
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v1

    .line 413
    :cond_0
    monitor-enter p0

    .line 414
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/microemu/util/RecordStoreImpl;->getRecordSize(I)I

    move-result v1

    new-array v0, v1, [B

    .line 415
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/microemu/util/RecordStoreImpl;->getRecord(I[BI)I

    .line 416
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/4 v0, 0x0

    .end local v0    # "data":[B
    :cond_1
    return-object v0

    .line 416
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRecordHeaderSize()I
    .locals 1

    .prologue
    .line 471
    const/16 v0, 0x8

    return v0
.end method

.method public getRecordSize(I)I
    .locals 4
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 370
    iget-boolean v2, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v2, :cond_0

    .line 371
    new-instance v2, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v2}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v2

    .line 374
    :cond_0
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 376
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 377
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v2, p0, p1}, Lorg/microemu/RecordStoreManager;->loadRecord(Lorg/microemu/util/RecordStoreImpl;I)V

    .line 378
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 379
    if-nez v1, :cond_1

    .line 380
    new-instance v2, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v2}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v2

    .line 385
    .end local v1    # "data":[B
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 384
    .restart local v1    # "data":[B
    :cond_1
    :try_start_1
    array-length v2, v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public getSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 232
    iget-boolean v4, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v4, :cond_0

    .line 233
    new-instance v4, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v4}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v4

    .line 237
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v5, v4}, Lorg/microemu/util/RecordStoreImpl;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "result":I
    iget-object v4, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 241
    .local v2, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 244
    .local v1, "key":I
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/microemu/util/RecordStoreImpl;->getRecord(I)[B

    move-result-object v4

    array-length v4, v4
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljavax/microedition/rms/RecordStoreException;
    .end local v1    # "key":I
    :cond_1
    return v3
.end method

.method public getSizeAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v0, p0}, Lorg/microemu/RecordStoreManager;->getSizeAvailable(Lorg/microemu/util/RecordStoreImpl;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    .line 212
    :cond_0
    monitor-enter p0

    .line 213
    :try_start_0
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    monitor-exit p0

    return v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    return v0
.end method

.method public readHeader(Ljava/io/DataInputStream;)I
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/microemu/util/RecordStoreImpl;->fileIdentifier:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    sget-object v2, Lorg/microemu/util/RecordStoreImpl;->fileIdentifier:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 98
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    .line 102
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    .line 103
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    .line 105
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    .line 107
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    .line 108
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 109
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    .line 110
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    .line 112
    iget v1, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    return v1
.end method

.method public readRecord(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 120
    .local v1, "recordId":I
    iget v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    if-le v1, v2, :cond_0

    .line 121
    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->lastRecordId:I

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 124
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v0, v2, [B

    .line 125
    .local v0, "data":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 126
    iget-object v2, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public removeRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/microedition/rms/RecordListener;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    .line 175
    return-void
.end method

.method public setRecord(I[BII)V
    .locals 4
    .param p1, "recordId"    # I
    .param p2, "newData"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;
        }
    .end annotation

    .prologue
    .line 425
    iget-boolean v1, p0, Lorg/microemu/util/RecordStoreImpl;->open:Z

    if-nez v1, :cond_0

    .line 426
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v1

    .line 430
    :cond_0
    iget-object v1, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v1, p0}, Lorg/microemu/RecordStoreManager;->getSizeAvailable(Lorg/microemu/util/RecordStoreImpl;)I

    move-result v1

    if-le p4, v1, :cond_1

    .line 431
    new-instance v1, Ljavax/microedition/rms/RecordStoreFullException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreFullException;-><init>()V

    throw v1

    .line 434
    :cond_1
    new-array v0, p4, [B

    .line 435
    .local v0, "recordData":[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    monitor-enter p0

    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/microemu/util/RecordStoreImpl;->getRecord(I)[B

    .line 440
    iget-object v1, p0, Lorg/microemu/util/RecordStoreImpl;->records:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget v1, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    .line 443
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v1, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreManager:Lorg/microemu/RecordStoreManager;

    invoke-interface {v1, p0, p1}, Lorg/microemu/RecordStoreManager;->saveRecord(Lorg/microemu/util/RecordStoreImpl;I)V

    .line 447
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lorg/microemu/util/RecordStoreImpl;->fireRecordListener(II)V

    .line 448
    return-void

    .line 443
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeHeader(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    sget-object v0, Lorg/microemu/util/RecordStoreImpl;->fileIdentifier:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 134
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 135
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 136
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 138
    iget-object v0, p0, Lorg/microemu/util/RecordStoreImpl;->recordStoreName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 139
    iget-wide v0, p0, Lorg/microemu/util/RecordStoreImpl;->lastModified:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 140
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->version:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    iget v0, p0, Lorg/microemu/util/RecordStoreImpl;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    return-void
.end method

.method public writeRecord(Ljava/io/DataOutputStream;I)V
    .locals 3
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .param p2, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 153
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/microemu/util/RecordStoreImpl;->getRecord(I)[B

    move-result-object v0

    .line 154
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 155
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljavax/microedition/rms/RecordStoreException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method
