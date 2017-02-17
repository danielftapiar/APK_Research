.class Lnet/veritran/android/implementation/nfc/NfcLibrary$6;
.super Ljava/lang/Object;
.source "NfcLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/nfc/NfcLibrary;->onTimeoutSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/nfc/NfcLibrary;

    .prologue
    .line 254
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$6;->this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$6;->this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    # getter for: Lnet/veritran/android/implementation/nfc/NfcLibrary;->ndefManager:Lcom/huenei/ndefmanager/NDEFManager;
    invoke-static {v0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->access$000(Lnet/veritran/android/implementation/nfc/NfcLibrary;)Lcom/huenei/ndefmanager/NDEFManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huenei/ndefmanager/NDEFManager;->disableForegroundDispatch()V

    .line 259
    return-void
.end method
