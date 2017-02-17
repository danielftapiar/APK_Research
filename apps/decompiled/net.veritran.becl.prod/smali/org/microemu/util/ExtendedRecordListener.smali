.class public interface abstract Lorg/microemu/util/ExtendedRecordListener;
.super Ljava/lang/Object;
.source "ExtendedRecordListener.java"

# interfaces
.implements Ljavax/microedition/rms/RecordListener;


# static fields
.field public static final RECORDSTORE_CLOSE:I = 0x9

.field public static final RECORDSTORE_DELETE:I = 0xa

.field public static final RECORDSTORE_OPEN:I = 0x8

.field public static final RECORD_ADD:I = 0x1

.field public static final RECORD_CHANGE:I = 0x3

.field public static final RECORD_DELETE:I = 0x4

.field public static final RECORD_READ:I = 0x2


# virtual methods
.method public abstract recordEvent(IJLjavax/microedition/rms/RecordStore;I)V
.end method

.method public abstract recordStoreEvent(IJLjava/lang/String;)V
.end method
