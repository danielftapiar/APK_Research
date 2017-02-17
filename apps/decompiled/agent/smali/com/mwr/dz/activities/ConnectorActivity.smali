.class public abstract Lcom/mwr/dz/activities/ConnectorActivity;
.super Landroid/app/Activity;
.source "ConnectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInformationDialog(II)Landroid/app/Dialog;
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    const v1, 0x7f060010

    new-instance v2, Lcom/mwr/dz/activities/ConnectorActivity$1;

    invoke-direct {v2, p0}, Lcom/mwr/dz/activities/ConnectorActivity$1;-><init>(Lcom/mwr/dz/activities/ConnectorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method protected createInformationDialog(ILjava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    const v1, 0x7f060010

    new-instance v2, Lcom/mwr/dz/activities/ConnectorActivity$2;

    invoke-direct {v2, p0}, Lcom/mwr/dz/activities/ConnectorActivity$2;-><init>(Lcom/mwr/dz/activities/ConnectorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/mwr/dz/activities/ConnectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/mwr/dz/activities/ConnectorActivity;->showFingerprintDialog()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0}, Lcom/mwr/dz/activities/ConnectorActivity;->refreshStatus()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x7f09002d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->unbindServices()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->bindServices()V

    .line 101
    return-void
.end method

.method public abstract receiveFingerprint(Ljava/lang/String;)V
.end method

.method protected abstract refreshStatus()V
.end method

.method protected abstract showFingerprintDialog()V
.end method
