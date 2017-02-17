.class public interface abstract Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;
    }
.end annotation


# static fields
.field public static final ERROR_AUTHENTICATION_ERROR:I = 0x64

.field public static final ERROR_CANCELED:I = 0x67

.field public static final ERROR_ENROLLMENT_FAILED:I = 0x68

.field public static final ERROR_GENERIC:I = 0x1

.field public static final ERROR_NO_ENROLLMENTS:I = 0x65

.field public static final ERROR_TIMEOUT:I = 0x66


# virtual methods
.method public abstract addListener(Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListener;)V
.end method

.method public abstract authenticate()V
.end method

.method public abstract disenroll()V
.end method

.method public abstract enroll()V
.end method

.method public abstract getStatus()Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;
.end method

.method public abstract getVersion()I
.end method

.method public abstract removeAllListener()V
.end method
