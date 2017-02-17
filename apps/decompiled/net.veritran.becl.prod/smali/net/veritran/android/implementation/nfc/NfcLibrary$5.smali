.class Lnet/veritran/android/implementation/nfc/NfcLibrary$5;
.super Ljava/util/TimerTask;
.source "NfcLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/nfc/NfcLibrary;->receiveNFCMessage(ILjava/lang/String;)I
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
    .line 214
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$5;->this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$5;->this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    # invokes: Lnet/veritran/android/implementation/nfc/NfcLibrary;->onTimeoutReceive()V
    invoke-static {v0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->access$200(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V

    .line 219
    return-void
.end method
