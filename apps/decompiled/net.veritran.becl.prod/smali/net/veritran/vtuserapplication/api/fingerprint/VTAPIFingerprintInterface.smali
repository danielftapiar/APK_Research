.class public interface abstract Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;
.super Ljava/lang/Object;


# static fields
.field public static final AUTHENTICATED_BUT_UNSAFE:I = 0xa

.field public static final AUTHENTICATION_CANCELLED:I = 0x66

.field public static final AUTHENTICATION_FAILED:I = 0x65

.field public static final ENROLLMENT_FAILED_NO_SAFE_FINGERPRINT:I = 0xb

.field public static final GENERIC_ERROR:I = 0x1

.field public static final NO_ERROR:I


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;)V
.end method

.method public abstract getVersion()I
.end method

.method public abstract isFingerprintActive()Z
.end method

.method public abstract isFingerprintAvailable()Z
.end method
