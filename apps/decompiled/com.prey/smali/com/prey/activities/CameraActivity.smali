.class public Lcom/prey/activities/CameraActivity;
.super Lcom/prey/activities/PreyActivity;
.source "CameraActivity.java"


# static fields
.field private static final SHOW_POPUP:I


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/prey/activities/PreyActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/CameraActivity;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/prey/activities/PreyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prey/activities/CameraActivity;->setRequestedOrientation(I)V

    .line 28
    invoke-virtual {p0}, Lcom/prey/activities/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "webcam_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/activities/CameraActivity;->message:Ljava/lang/String;

    .line 33
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prey/activities/CameraActivity;->showDialog(I)V

    .line 34
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "popup":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/activities/CameraActivity;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/prey/activities/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/prey/activities/CameraActivity$1;-><init>(Lcom/prey/activities/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
