.class public interface abstract Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResult;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Mode;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Product;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Brand;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;,
        Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;
    }
.end annotation


# static fields
.field public static final BAD_VERSION_ERROR:I = 0x64

.field public static final CANCELLED:I = 0x65

.field public static final COMMUNICATION_FAILED:I = 0x68

.field public static final DCID_ALREADY_ENROLLED_ERROR:I = 0x69

.field public static final DCID_NOT_ENROLLED_ERROR:I = 0x6a

.field public static final DEACTIVATION_DESELECT_ERROR:I = 0x6d

.field public static final GENERIC_ERROR:I = 0x1

.field public static final INACTIVE:I = 0x66

.field public static final NFC_TURNED_OFF_ERROR:I = 0x6b

.field public static final NOT_DEFAULT_PAYMENT_APP_ERROR:I = 0x6c

.field public static final NO_ERROR:I = 0x0

.field public static final OVERDUE:I = 0x67

.field public static final STATUS_HCE_DEFAULT_PAYMENT_APP:I = 0x4

.field public static final STATUS_HCE_READY:I = 0x1

.field public static final STATUS_NFC_ON:I = 0x2


# virtual methods
.method public abstract enroll(Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;)I
.end method

.method public abstract executeDeviceFunction(Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;Lnet/veritran/vtuserapplication/api/hce/VTHCEDeviceFunctionListener;)V
.end method

.method public abstract getBrandAvailability()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Brand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnrolledCards()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModeAvailability(Ljava/lang/String;)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Mode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProductAvailability(Ljava/lang/String;)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Product;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()I
.end method

.method public abstract isEnrolled(Ljava/lang/String;)Z
.end method

.method public abstract readyToPay(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/hce/VTHCEListener;)V
.end method

.method public abstract resume(Ljava/lang/String;)I
.end method

.method public abstract setAsDefault(Ljava/lang/String;)I
.end method

.method public abstract suspend(Ljava/lang/String;)I
.end method

.method public abstract unenroll(Ljava/lang/String;)I
.end method
