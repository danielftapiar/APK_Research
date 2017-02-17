.class public interface abstract Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;
.super Ljava/lang/Object;


# static fields
.field public static final SHARE_ALLOW_APP_FACEBOOK:Ljava/lang/String; = "FACEBOOK"

.field public static final SHARE_ALLOW_APP_INSTAGRAM:Ljava/lang/String; = "INSTAGRAM"

.field public static final SHARE_ALLOW_APP_TWITTER:Ljava/lang/String; = "TWITTER"

.field public static final SHARE_ALLOW_APP_WHATSAPP:Ljava/lang/String; = "WHATSAPP"

.field public static final SHARE_ERROR_APPLICATION_NOT_AVAILABLE:I = 0x3

.field public static final SHARE_ERROR_FUNCTION_NOT_AVAILABLE:I = 0x1

.field public static final SHARE_ERROR_NO_PERMISSION:I = 0x65

.field public static final SHARE_ERROR_VISUAL_AREA_COMPONENT_ID_NOT_AVAILABLE:I = 0x2

.field public static final SHARE_NO_ERROR:I = 0x0

.field public static final SHARE_STATUS_NOT_AVAILABLE:I = 0x0

.field public static final SHARE_STATUS_TEXT_AND_SCREENSHOT:I = 0x2

.field public static final SHARE_STATUS_TEXT_AND_SCREENSHOT_PDF_AVAILABLE:I = 0x3

.field public static final SHARE_STATUS_TEXT_ONLY:I = 0x1

.field public static final SHARE_TYPE_PDF:I = 0x1

.field public static final SHARE_TYPE_PNG:I


# virtual methods
.method public abstract getStatus(Ljava/lang/String;)I
.end method

.method public abstract shareScreenCapture(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V
.end method

.method public abstract shareText(Ljava/lang/String;Ljava/lang/String;)I
.end method
