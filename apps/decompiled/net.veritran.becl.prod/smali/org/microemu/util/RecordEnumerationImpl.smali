.class public Lorg/microemu/util/RecordEnumerationImpl;
.super Ljava/lang/Object;
.source "RecordEnumerationImpl.java"

# interfaces
.implements Ljavax/microedition/rms/RecordEnumeration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;
    }
.end annotation


# instance fields
.field private comparator:Ljavax/microedition/rms/RecordComparator;

.field private currentRecord:I

.field private enumerationRecords:Ljava/util/Vector;

.field private filter:Ljavax/microedition/rms/RecordFilter;

.field private keepUpdated:Z

.field private recordListener:Ljavax/microedition/rms/RecordListener;

.field private recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;


# direct methods
.method public constructor <init>(Lorg/microemu/util/RecordStoreImpl;Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)V
    .locals 1
    .param p1, "recordStoreImpl"    # Lorg/microemu/util/RecordStoreImpl;
    .param p2, "filter"    # Ljavax/microedition/rms/RecordFilter;
    .param p3, "comparator"    # Ljavax/microedition/rms/RecordComparator;
    .param p4, "keepUpdated"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    .line 51
    new-instance v0, Lorg/microemu/util/RecordEnumerationImpl$1;

    invoke-direct {v0, p0}, Lorg/microemu/util/RecordEnumerationImpl$1;-><init>(Lorg/microemu/util/RecordEnumerationImpl;)V

    iput-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordListener:Ljavax/microedition/rms/RecordListener;

    .line 71
    iput-object p1, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    .line 72
    iput-object p2, p0, Lorg/microemu/util/RecordEnumerationImpl;->filter:Ljavax/microedition/rms/RecordFilter;

    .line 73
    iput-object p3, p0, Lorg/microemu/util/RecordEnumerationImpl;->comparator:Ljavax/microedition/rms/RecordComparator;

    .line 74
    iput-boolean p4, p0, Lorg/microemu/util/RecordEnumerationImpl;->keepUpdated:Z

    .line 76
    invoke-virtual {p0}, Lorg/microemu/util/RecordEnumerationImpl;->rebuild()V

    .line 78
    if-eqz p4, :cond_0

    .line 79
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordListener:Ljavax/microedition/rms/RecordListener;

    invoke-virtual {p1, v0}, Lorg/microemu/util/RecordStoreImpl;->addRecordListener(Ljavax/microedition/rms/RecordListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method static access$000(Lorg/microemu/util/RecordEnumerationImpl;)Ljavax/microedition/rms/RecordComparator;
    .locals 1
    .param p0, "x0"    # Lorg/microemu/util/RecordEnumerationImpl;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->comparator:Ljavax/microedition/rms/RecordComparator;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public hasNextElement()Z
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {p0}, Lorg/microemu/util/RecordEnumerationImpl;->numRecords()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPreviousElement()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeptUpdated()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->keepUpdated:Z

    return v0
.end method

.method public keepUpdated(Z)V
    .locals 2
    .param p1, "keepUpdated"    # Z

    .prologue
    .line 233
    if-eqz p1, :cond_1

    .line 234
    iget-boolean v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->keepUpdated:Z

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/microemu/util/RecordEnumerationImpl;->rebuild()V

    .line 236
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordListener:Ljavax/microedition/rms/RecordListener;

    invoke-virtual {v0, v1}, Lorg/microemu/util/RecordStoreImpl;->addRecordListener(Ljavax/microedition/rms/RecordListener;)V

    .line 242
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/microemu/util/RecordEnumerationImpl;->keepUpdated:Z

    .line 243
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordListener:Ljavax/microedition/rms/RecordListener;

    invoke-virtual {v0, v1}, Lorg/microemu/util/RecordStoreImpl;->removeRecordListener(Ljavax/microedition/rms/RecordListener;)V

    goto :goto_0
.end method

.method public nextRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    invoke-virtual {v1}, Lorg/microemu/util/RecordStoreImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v1

    .line 97
    :cond_0
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {p0}, Lorg/microemu/util/RecordEnumerationImpl;->numRecords()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 98
    new-instance v1, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v1

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    iget v2, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    iget-object v0, v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->value:[B

    .line 102
    .local v0, "result":[B
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    .line 104
    return-object v0
.end method

.method public nextRecordId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation

    .prologue
    .line 111
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {p0}, Lorg/microemu/util/RecordEnumerationImpl;->numRecords()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 112
    new-instance v1, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v1

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    iget v2, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    iget v0, v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->recordId:I

    .line 116
    .local v0, "result":I
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    .line 118
    return v0
.end method

.method public numRecords()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public previousRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    invoke-virtual {v1}, Lorg/microemu/util/RecordStoreImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v1

    .line 128
    :cond_0
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    if-gez v1, :cond_1

    .line 129
    new-instance v1, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v1

    .line 132
    :cond_1
    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    iget v2, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    iget-object v0, v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->value:[B

    .line 133
    .local v0, "result":[B
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    .line 135
    return-object v0
.end method

.method public previousRecordId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation

    .prologue
    .line 142
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    if-gez v1, :cond_0

    .line 143
    new-instance v1, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v1

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    iget v2, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    iget v0, v1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->recordId:I

    .line 147
    .local v0, "result":I
    iget v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    .line 149
    return v0
.end method

.method public rebuild()V
    .locals 7

    .prologue
    .line 181
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 186
    iget-object v5, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    monitor-enter v5

    .line 188
    const/4 v3, 0x1

    .line 189
    .local v3, "recordId":I
    const/4 v2, 0x0

    .line 190
    .local v2, "i":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    invoke-virtual {v4}, Lorg/microemu/util/RecordStoreImpl;->getNumRecords()I
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ge v2, v4, :cond_2

    .line 192
    :try_start_1
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->recordStoreImpl:Lorg/microemu/util/RecordStoreImpl;

    invoke-virtual {v4, v3}, Lorg/microemu/util/RecordStoreImpl;->getRecord(I)[B

    move-result-object v0

    .line 193
    .local v0, "data":[B
    add-int/lit8 v2, v2, 0x1

    .line 194
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->filter:Ljavax/microedition/rms/RecordFilter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->filter:Ljavax/microedition/rms/RecordFilter;

    invoke-interface {v4, v0}, Ljavax/microedition/rms/RecordFilter;->matches([B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    :cond_1
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    new-instance v6, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    invoke-direct {v6, p0, v3, v0}, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;-><init>(Lorg/microemu/util/RecordEnumerationImpl;I[B)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/microedition/rms/InvalidRecordIDException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v0    # "data":[B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljavax/microedition/rms/RecordStoreException;
    :try_start_2
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    .line 205
    .end local v1    # "e":Ljavax/microedition/rms/RecordStoreException;
    :cond_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->comparator:Ljavax/microedition/rms/RecordComparator;

    if-eqz v4, :cond_3

    .line 211
    iget-object v4, p0, Lorg/microemu/util/RecordEnumerationImpl;->enumerationRecords:Ljava/util/Vector;

    new-instance v5, Lorg/microemu/util/RecordEnumerationImpl$2;

    invoke-direct {v5, p0}, Lorg/microemu/util/RecordEnumerationImpl$2;-><init>(Lorg/microemu/util/RecordEnumerationImpl;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    :cond_3
    return-void

    .line 205
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 198
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/microemu/util/RecordEnumerationImpl;->currentRecord:I

    .line 176
    return-void
.end method
