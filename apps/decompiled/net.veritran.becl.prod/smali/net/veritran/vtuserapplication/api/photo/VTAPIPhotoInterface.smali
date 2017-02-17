.class public interface abstract Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;
.super Ljava/lang/Object;


# static fields
.field public static final CANCELLED:I = 0x66

.field public static final GENERIC_ERROR:I = 0x1

.field public static final NO_CAMERA:I = 0x64

.field public static final NO_CAMERA_PERMISSION:I = 0x65

.field public static final NO_ERROR:I = 0x0

.field public static final NO_GALLERY_PERMISSION:I = 0x67


# virtual methods
.method public abstract getPictureFromGallery(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasCamera()Z
.end method

.method public abstract hasCameraPermission()Z
.end method

.method public abstract takePicture(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
.end method
