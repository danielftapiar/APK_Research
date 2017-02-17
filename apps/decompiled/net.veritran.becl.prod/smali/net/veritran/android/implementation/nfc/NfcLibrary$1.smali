.class Lnet/veritran/android/implementation/nfc/NfcLibrary$1;
.super Ljava/lang/Object;
.source "NfcLibrary.java"

# interfaces
.implements Lcom/huenei/ndefmanager/CreateNdefRecordCallback;


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

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/nfc/NfcLibrary;

    .prologue
    .line 80
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$1;->this$0:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    iput-object p2, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "net.veritran.vtuserapplication.mb.demo"

    return-object v0
.end method

.method public createPayload()[B
    .locals 3

    .prologue
    .line 84
    const-string v0, "NfcLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating payload NFC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public createType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "externaltype"

    return-object v0
.end method
