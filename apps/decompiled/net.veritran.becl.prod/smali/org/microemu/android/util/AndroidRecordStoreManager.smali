.class public Lorg/microemu/android/util/AndroidRecordStoreManager;
.super Ljava/lang/Object;
.source "AndroidRecordStoreManager.java"

# interfaces
.implements Lorg/microemu/RecordStoreManager;


# static fields
.field private static final NULL_STORE:Ljava/lang/Object;

.field private static final RECORD_STORE_HEADER_SUFFIX:Ljava/lang/String; = ".rsh"

.field private static final RECORD_STORE_RECORD_SUFFIX:Ljava/lang/String; = ".rsr"


# instance fields
.field private activity:Landroid/app/Activity;

.field private recordListener:Lorg/microemu/util/ExtendedRecordListener;

.field private recordStores:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/microemu/android/util/AndroidRecordStoreManager;->NULL_STORE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    iput-object v0, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordListener:Lorg/microemu/util/ExtendedRecordListener;

    .line 65
    iput-object p1, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    .line 66
    return-void
.end method

.method private declared-synchronized deleteFromDisk(Lorg/microemu/util/RecordStoreImpl;I)V
    .locals 5
    .param p1, "recordStore"    # Lorg/microemu/util/RecordStoreImpl;
    .param p2, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    .line 225
    invoke-virtual {p1}, Lorg/microemu/util/RecordStoreImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getHeaderFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p1, v0}, Lorg/microemu/util/RecordStoreImpl;->writeHeader(Ljava/io/DataOutputStream;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    iget-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/microemu/util/RecordStoreImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getRecordFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 228
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getHeaderFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "recordStoreName"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".rsh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRecordFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "recordStoreName"    # Ljava/lang/String;
    .param p2, "recordId"    # I

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".rsr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initializeIfNecessary()V
    .locals 7

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 78
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    iget-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "list":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 82
    aget-object v2, v1, v0

    const-string v3, ".rsh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v3, v1, v0

    const/4 v4, 0x0

    aget-object v5, v1, v0

    .line 84
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".rsh"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/microemu/android/util/AndroidRecordStoreManager;->NULL_STORE:Ljava/lang/Object;

    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    .end local v1    # "list":[Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized saveToDisk(Lorg/microemu/util/RecordStoreImpl;I)V
    .locals 6
    .param p1, "recordStore"    # Lorg/microemu/util/RecordStoreImpl;
    .param p2, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    .line 244
    invoke-virtual {p1}, Lorg/microemu/util/RecordStoreImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getHeaderFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 245
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p1, v0}, Lorg/microemu/util/RecordStoreImpl;->writeHeader(Ljava/io/DataOutputStream;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 254
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    .line 255
    invoke-virtual {p1}, Lorg/microemu/util/RecordStoreImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getRecordFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {p1, v1, p2}, Lorg/microemu/util/RecordStoreImpl;->writeRecord(Ljava/io/DataOutputStream;I)V

    .line 257
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 263
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 247
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 258
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    .line 260
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_4
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public deleteRecord(Lorg/microemu/util/RecordStoreImpl;I)V
    .locals 0
    .param p1, "recordStoreImpl"    # Lorg/microemu/util/RecordStoreImpl;
    .param p2, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lorg/microemu/android/util/AndroidRecordStoreManager;->deleteFromDisk(Lorg/microemu/util/RecordStoreImpl;I)V

    .line 179
    return-void
.end method

.method public deleteRecordStore(Ljava/lang/String;)V
    .locals 9
    .param p1, "recordStoreName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotFoundException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 95
    invoke-direct {p0}, Lorg/microemu/android/util/AndroidRecordStoreManager;->initializeIfNecessary()V

    .line 97
    iget-object v5, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 99
    new-instance v5, Ljavax/microedition/rms/RecordStoreNotFoundException;

    invoke-direct {v5, p1}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_0
    instance-of v5, v4, Lorg/microemu/util/RecordStoreImpl;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/microemu/util/RecordStoreImpl;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/microemu/util/RecordStoreImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v5}, Ljavax/microedition/rms/RecordStoreException;-><init>()V

    throw v5

    .line 107
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v5, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getHeaderFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v0, "dis":Ljava/io/DataInputStream;
    new-instance v3, Lorg/microemu/util/RecordStoreImpl;

    invoke-direct {v3, p0}, Lorg/microemu/util/RecordStoreImpl;-><init>(Lorg/microemu/RecordStoreManager;)V

    .line 109
    .local v3, "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    invoke-virtual {v3, v0}, Lorg/microemu/util/RecordStoreImpl;->readHeader(Ljava/io/DataInputStream;)I

    .line 110
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/microemu/util/RecordStoreImpl;->setOpen(Z)V

    .line 117
    invoke-virtual {v3, v8, v8, v7}, Lorg/microemu/util/RecordStoreImpl;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    move-result-object v2

    .line 118
    .local v2, "re":Ljavax/microedition/rms/RecordEnumeration;
    :goto_0
    invoke-interface {v2}, Ljavax/microedition/rms/RecordEnumeration;->hasNextElement()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    iget-object v5, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    invoke-interface {v2}, Ljavax/microedition/rms/RecordEnumeration;->nextRecordId()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getRecordFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 111
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "re":Ljavax/microedition/rms/RecordEnumeration;
    .end local v3    # "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v5}, Ljavax/microedition/rms/RecordStoreException;-><init>()V

    throw v5

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "re":Ljavax/microedition/rms/RecordEnumeration;
    .restart local v3    # "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    :cond_2
    invoke-virtual {v3, v7}, Lorg/microemu/util/RecordStoreImpl;->setOpen(Z)V

    .line 122
    iget-object v5, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getHeaderFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 124
    iget-object v5, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v5, 0xa

    invoke-virtual {p0, v5, p1}, Lorg/microemu/android/util/AndroidRecordStoreManager;->fireRecordStoreListener(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public deleteStores()V
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/microemu/android/util/AndroidRecordStoreManager;->listRecordStores()[Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "stores":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 210
    aget-object v2, v3, v1

    .line 212
    .local v2, "store":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/microemu/android/util/AndroidRecordStoreManager;->deleteRecordStore(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 218
    .end local v2    # "store":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public fireRecordStoreListener(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "recordStoreName"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordListener:Lorg/microemu/util/ExtendedRecordListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordListener:Lorg/microemu/util/ExtendedRecordListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3, p2}, Lorg/microemu/util/ExtendedRecordListener;->recordStoreEvent(IJLjava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Android record store"

    return-object v0
.end method

.method public getSizeAvailable(Lorg/microemu/util/RecordStoreImpl;)I
    .locals 1
    .param p1, "recordStoreImpl"    # Lorg/microemu/util/RecordStoreImpl;

    .prologue
    .line 267
    const/high16 v0, 0x100000

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public init(Lorg/microemu/MicroEmulator;)V
    .locals 0
    .param p1, "emulator"    # Lorg/microemu/MicroEmulator;

    .prologue
    .line 69
    return-void
.end method

.method public listRecordStores()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/microemu/android/util/AndroidRecordStoreManager;->initializeIfNecessary()V

    .line 166
    iget-object v1, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 168
    .local v0, "result":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 171
    .end local v0    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRecord(Lorg/microemu/util/RecordStoreImpl;I)V
    .locals 4
    .param p1, "recordStoreImpl"    # Lorg/microemu/util/RecordStoreImpl;
    .param p2, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    .line 186
    invoke-virtual {p1}, Lorg/microemu/util/RecordStoreImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getRecordFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {p1, v0}, Lorg/microemu/util/RecordStoreImpl;->readRecord(Ljava/io/DataInputStream;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v2}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v2

    .line 191
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .locals 6
    .param p1, "recordStoreName"    # Ljava/lang/String;
    .param p2, "createIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 132
    invoke-direct {p0}, Lorg/microemu/android/util/AndroidRecordStoreManager;->initializeIfNecessary()V

    .line 136
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->activity:Landroid/app/Activity;

    .line 137
    invoke-direct {p0, p1}, Lorg/microemu/android/util/AndroidRecordStoreManager;->getHeaderFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    .local v0, "dis":Ljava/io/DataInputStream;
    new-instance v2, Lorg/microemu/util/RecordStoreImpl;

    invoke-direct {v2, p0}, Lorg/microemu/util/RecordStoreImpl;-><init>(Lorg/microemu/RecordStoreManager;)V

    .line 139
    .local v2, "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    invoke-virtual {v2, v0}, Lorg/microemu/util/RecordStoreImpl;->readHeader(Ljava/io/DataInputStream;)I

    .line 140
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/microemu/util/RecordStoreImpl;->setOpen(Z)V

    .line 141
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    iget-object v3, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordListener:Lorg/microemu/util/ExtendedRecordListener;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordListener:Lorg/microemu/util/ExtendedRecordListener;

    invoke-virtual {v2, v3}, Lorg/microemu/util/RecordStoreImpl;->addRecordListener(Ljavax/microedition/rms/RecordListener;)V

    .line 156
    :cond_0
    iget-object v3, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordStores:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1}, Lorg/microemu/android/util/AndroidRecordStoreManager;->fireRecordStoreListener(ILjava/lang/String;)V

    .line 160
    return-object v2

    .line 142
    .end local v2    # "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-nez p2, :cond_1

    .line 144
    new-instance v3, Ljavax/microedition/rms/RecordStoreNotFoundException;

    invoke-direct {v3, p1}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_1
    new-instance v2, Lorg/microemu/util/RecordStoreImpl;

    invoke-direct {v2, p0, p1}, Lorg/microemu/util/RecordStoreImpl;-><init>(Lorg/microemu/RecordStoreManager;Ljava/lang/String;)V

    .line 147
    .restart local v2    # "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    invoke-virtual {v2, v5}, Lorg/microemu/util/RecordStoreImpl;->setOpen(Z)V

    .line 148
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lorg/microemu/android/util/AndroidRecordStoreManager;->saveToDisk(Lorg/microemu/util/RecordStoreImpl;I)V

    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "recordStoreImpl":Lorg/microemu/util/RecordStoreImpl;
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    invoke-direct {v3}, Ljavax/microedition/rms/RecordStoreException;-><init>()V

    throw v3
.end method

.method public saveRecord(Lorg/microemu/util/RecordStoreImpl;I)V
    .locals 0
    .param p1, "recordStoreImpl"    # Lorg/microemu/util/RecordStoreImpl;
    .param p2, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lorg/microemu/android/util/AndroidRecordStoreManager;->saveToDisk(Lorg/microemu/util/RecordStoreImpl;I)V

    .line 202
    return-void
.end method

.method public setRecordListener(Lorg/microemu/util/ExtendedRecordListener;)V
    .locals 0
    .param p1, "recordListener"    # Lorg/microemu/util/ExtendedRecordListener;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/microemu/android/util/AndroidRecordStoreManager;->recordListener:Lorg/microemu/util/ExtendedRecordListener;

    .line 272
    return-void
.end method
