.class public Lcom/prey/barcodereader/BarcodeActivity;
.super Landroid/app/Activity;
.source "BarcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x3

.field private static final NO_MORE_DEVICES_WARNING:I = 0x0

.field private static final RC_BARCODE_CAPTURE:I = 0x2329


# instance fields
.field private autoFocus:Landroid/widget/CompoundButton;

.field private barcodeValue:Landroid/widget/TextView;

.field error:Ljava/lang/String;

.field private noMoreDeviceError:Z

.field private statusMessage:Landroid/widget/TextView;

.field private useFlash:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/barcodereader/BarcodeActivity;->noMoreDeviceError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/prey/barcodereader/BarcodeActivity;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/BarcodeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity;->autoFocus:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prey/barcodereader/BarcodeActivity;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/BarcodeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeActivity;->useFlash:Landroid/widget/CompoundButton;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/16 v7, 0x2329

    if-ne p1, v7, :cond_5

    .line 96
    if-nez p2, :cond_4

    .line 97
    if-eqz p3, :cond_3

    .line 98
    const-string v7, "Barcode"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 99
    .local v1, "barcode":Lcom/google/android/gms/vision/barcode/Barcode;
    iget-object v7, p0, Lcom/prey/barcodereader/BarcodeActivity;->statusMessage:Landroid/widget/TextView;

    const v8, 0x7f090046

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Barcode read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    .line 103
    .local v2, "barcodeValue":Ljava/lang/String;
    const-string v7, "prey"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 105
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v7, "&"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "pairs":[Ljava/lang/String;
    const-string v0, ""

    .line 108
    .local v0, "apikey":Ljava/lang/String;
    const-string v4, "batch@preyproject.com"

    .line 109
    .local v4, "mail":Ljava/lang/String;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v5, v6, v7

    .line 110
    .local v5, "pair":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "llave":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 112
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const-string v10, "api_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 113
    const/4 v9, 0x1

    aget-object v0, v3, v9

    .line 109
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "llave":[Ljava/lang/String;
    .end local v5    # "pair":Ljava/lang/String;
    :cond_1
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    new-instance v7, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;-><init>(Lcom/prey/barcodereader/BarcodeActivity;Lcom/prey/barcodereader/BarcodeActivity$1;)V

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    invoke-static {p0}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/prey/barcodereader/BarcodeActivity$AddDeviceToApiKeyBatch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    .end local v0    # "apikey":Ljava/lang/String;
    .end local v1    # "barcode":Lcom/google/android/gms/vision/barcode/Barcode;
    .end local v2    # "barcodeValue":Ljava/lang/String;
    .end local v4    # "mail":Ljava/lang/String;
    .end local v6    # "pairs":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 125
    :cond_3
    iget-object v7, p0, Lcom/prey/barcodereader/BarcodeActivity;->statusMessage:Landroid/widget/TextView;

    const v8, 0x7f090043

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const-string v7, "No barcode captured, intent data is null"

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_4
    iget-object v7, p0, Lcom/prey/barcodereader/BarcodeActivity;->statusMessage:Landroid/widget/TextView;

    const v8, 0x7f090042

    invoke-virtual {p0, v8}, Lcom/prey/barcodereader/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 130
    invoke-static {p2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 129
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/barcodereader/BarcodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeActivity;->finish()V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/prey/barcodereader/BarcodeActivity;->requestWindowFeature(I)Z

    .line 48
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->setContentView(I)V

    .line 50
    const v1, 0x7f100094

    invoke-virtual {p0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->statusMessage:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f100095

    invoke-virtual {p0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->barcodeValue:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->autoFocus:Landroid/widget/CompoundButton;

    .line 54
    const v1, 0x7f100098

    invoke-virtual {p0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->useFlash:Landroid/widget/CompoundButton;

    .line 55
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->autoFocus:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AutoFocus"

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeActivity;->autoFocus:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v1, "UseFlash"

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeActivity;->useFlash:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f09008a

    const/4 v3, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "pass":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 229
    .end local v0    # "pass":Landroid/app/Dialog;
    :goto_0
    :pswitch_0
    return-object v0

    .line 215
    .restart local v0    # "pass":Landroid/app/Dialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/prey/barcodereader/BarcodeActivity$2;

    invoke-direct {v2, p0}, Lcom/prey/barcodereader/BarcodeActivity$2;-><init>(Lcom/prey/barcodereader/BarcodeActivity;)V

    .line 216
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/prey/barcodereader/BarcodeActivity$3;

    invoke-direct {v2, p0}, Lcom/prey/barcodereader/BarcodeActivity$3;-><init>(Lcom/prey/barcodereader/BarcodeActivity;)V

    .line 223
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const v2, 0x7f09008a

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "ad":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 266
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 268
    :goto_0
    return-void

    :pswitch_1
    move-object v0, p2

    .line 238
    check-cast v0, Landroid/app/AlertDialog;

    .line 239
    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 240
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 241
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0, v2}, Lcom/prey/barcodereader/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prey/barcodereader/BarcodeActivity$4;

    invoke-direct {v2, p0}, Lcom/prey/barcodereader/BarcodeActivity$4;-><init>(Lcom/prey/barcodereader/BarcodeActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_2
    move-object v0, p2

    .line 253
    check-cast v0, Landroid/app/AlertDialog;

    .line 254
    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 255
    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 256
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0, v2}, Lcom/prey/barcodereader/BarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prey/barcodereader/BarcodeActivity$5;

    invoke-direct {v2, p0}, Lcom/prey/barcodereader/BarcodeActivity$5;-><init>(Lcom/prey/barcodereader/BarcodeActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 262
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    const v1, 0x7f100096

    invoke-virtual {p0, v1}, Lcom/prey/barcodereader/BarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, "readBarcodeButton":Landroid/widget/Button;
    new-instance v1, Lcom/prey/barcodereader/BarcodeActivity$1;

    invoke-direct {v1, p0}, Lcom/prey/barcodereader/BarcodeActivity$1;-><init>(Lcom/prey/barcodereader/BarcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
