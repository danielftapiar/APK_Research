.class public final Lcom/google/zxing/client/android/clipboard/ClipboardInterface;
.super Ljava/lang/Object;
.source "ClipboardInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/zxing/client/android/clipboard/ClipboardInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/clipboard/ClipboardInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport;->getClipboardManager(Landroid/content/Context;)Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static hasText(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport;->getClipboardManager(Landroid/content/Context;)Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public static setText(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport;->getClipboardManager(Landroid/content/Context;)Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
