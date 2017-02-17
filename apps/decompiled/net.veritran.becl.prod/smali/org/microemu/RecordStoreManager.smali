.class public interface abstract Lorg/microemu/RecordStoreManager;
.super Ljava/lang/Object;
.source "RecordStoreManager.java"


# virtual methods
.method public abstract deleteRecord(Lorg/microemu/util/RecordStoreImpl;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract deleteRecordStore(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotFoundException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract deleteStores()V
.end method

.method public abstract fireRecordStoreListener(ILjava/lang/String;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSizeAvailable(Lorg/microemu/util/RecordStoreImpl;)I
.end method

.method public abstract init(Lorg/microemu/MicroEmulator;)V
.end method

.method public abstract listRecordStores()[Ljava/lang/String;
.end method

.method public abstract loadRecord(Lorg/microemu/util/RecordStoreImpl;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract saveRecord(Lorg/microemu/util/RecordStoreImpl;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation
.end method

.method public abstract setRecordListener(Lorg/microemu/util/ExtendedRecordListener;)V
.end method
