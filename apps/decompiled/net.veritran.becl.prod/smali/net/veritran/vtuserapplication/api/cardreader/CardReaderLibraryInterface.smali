.class public interface abstract Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;
.super Ljava/lang/Object;


# static fields
.field public static final GENERIC_ERROR:I = 0x1

.field public static final READ_CARD_ERROR_NO_CAMERA:I = 0x64

.field public static final READ_CARD_ERROR_SERVICE_DENIED_BY_USER:I = 0x65

.field public static final READ_CARD_ERROR_USER_CANCELED_PROCESS:I = 0x67

.field public static final READ_CARD_NO_ERROR:I = 0x0

.field public static final READ_CARD_READER_ERROR_TIMED_OUT:I = 0x66


# virtual methods
.method public abstract getVersion()I
.end method

.method public abstract readCard(I)V
.end method
