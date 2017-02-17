.class public interface abstract Ljavax/microedition/rms/RecordEnumeration;
.super Ljava/lang/Object;
.source "RecordEnumeration.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract hasNextElement()Z
.end method

.method public abstract hasPreviousElement()Z
.end method

.method public abstract isKeptUpdated()Z
.end method

.method public abstract keepUpdated(Z)V
.end method

.method public abstract nextRecord()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract nextRecordId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation
.end method

.method public abstract numRecords()I
.end method

.method public abstract previousRecord()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract previousRecordId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation
.end method

.method public abstract rebuild()V
.end method

.method public abstract reset()V
.end method
