.class public Ljavax/microedition/rms/RecordStore;
.super Ljava/lang/Object;
.source "RecordStore.java"


# static fields
.field public static final AUTHMODE_ANY:I = 0x1

.field public static final AUTHMODE_PRIVATE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lorg/microemu/MIDletBridge;->getRecordStoreManager()Lorg/microemu/RecordStoreManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/RecordStoreManager;->deleteRecordStore(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static listRecordStores()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/microemu/MIDletBridge;->getRecordStoreManager()Lorg/microemu/RecordStoreManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/RecordStoreManager;->listRecordStores()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "suiteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "createIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lorg/microemu/MIDletBridge;->getRecordStoreManager()Lorg/microemu/RecordStoreManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/microemu/RecordStoreManager;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;ZIZ)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "createIfNecessary"    # Z
    .param p2, "authmode"    # I
    .param p3, "writable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 1
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
    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public addRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 0
    .param p1, "listener"    # Ljavax/microedition/rms/RecordListener;

    .prologue
    .line 141
    return-void
.end method

.method public closeRecordStore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public deleteRecord(I)V
    .locals 0
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
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
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 134
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextRecordID()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, -0x1

    return v0
.end method

.method public getNumRecords()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, -0x1

    return v0
.end method

.method public getRecord(I[BI)I
    .locals 1
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
    .line 189
    const/4 v0, -0x1

    return v0
.end method

.method public getRecord(I)[B
    .locals 1
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordSize(I)I
    .locals 1
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, -0x1

    return v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public getSizeAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, -0x1

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
    .line 98
    const/4 v0, -0x1

    return v0
.end method

.method public removeRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 0
    .param p1, "listener"    # Ljavax/microedition/rms/RecordListener;

    .prologue
    .line 147
    return-void
.end method

.method public setMode(IZ)V
    .locals 0
    .param p1, "authmode"    # I
    .param p2, "writable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 206
    return-void
.end method

.method public setRecord(I[BII)V
    .locals 0
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
    .line 212
    return-void
.end method
