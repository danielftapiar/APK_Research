.class Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$1;
.super Ljava/lang/Object;
.source "FingerprintLibrary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->createAuthenticatePopup(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    .prologue
    .line 267
    iput-object p1, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$1;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$1;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->fingerprintHandler:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;
    invoke-static {v0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$000(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "Se cancel\u00f3 la operaci\u00f3n de huella digital."

    invoke-virtual {v0, v1, v2}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$FingerprintHandler;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary$1;->this$0:Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    # getter for: Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;->access$100(Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 272
    return-void
.end method
