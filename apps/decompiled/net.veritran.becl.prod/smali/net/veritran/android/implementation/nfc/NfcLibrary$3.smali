.class Lnet/veritran/android/implementation/nfc/NfcLibrary$3;
.super Ljava/lang/Object;
.source "NfcLibrary.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/nfc/NfcLibrary;->sendNFCMessage(Ljava/lang/String;ILjava/lang/String;)I
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
    .line 117
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$3;->this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 121
    const-string v0, "NfcLibrary"

    const-string v1, "ONNDEFPUSHCOMPLETECALLBACK!!!!"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
