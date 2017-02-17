.class public interface abstract Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;
.super Ljava/lang/Object;


# static fields
.field public static final GENERATION_FAILED:I = 0x1

.field public static final GENERATION_OK:I = 0x0

.field public static final READ_ERROR_DENIED_BY_USER:I = 0x4

.field public static final READ_ERROR_NO_CAMERA:I = 0x3

.field public static final READ_INITIATED:I = 0x2


# virtual methods
.method public abstract generateBarcode(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;II)I
.end method

.method public abstract generateQr(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;I)I
.end method

.method public abstract readQr(ILjava/lang/String;)I
.end method
