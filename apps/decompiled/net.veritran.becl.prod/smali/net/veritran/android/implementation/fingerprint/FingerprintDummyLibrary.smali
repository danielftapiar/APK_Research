.class public Lnet/veritran/android/implementation/fingerprint/FingerprintDummyLibrary;
.super Ljava/lang/Object;
.source "FingerprintDummyLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;


# static fields
.field public static final FINGERPRINT_API_VERSION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FingerprintDummyLibrary"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintDummyLibrary;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "fingerprintListener"    # Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lnet/veritran/vtuserapplication/api/fingerprint/FingerprintListener;->notifyError(I)V

    .line 46
    return-void
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isFingerprintActive()Z
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFingerprintAvailable()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
