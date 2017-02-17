.class Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTUserApplicationSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowApplicationErrorDialog"
.end annotation


# instance fields
.field private currentActivity:Lnet/veritran/VTAbstractActivity;

.field private errorId:I

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;ILnet/veritran/VTAbstractActivity;)V
    .locals 0
    .param p2, "errorId"    # I
    .param p3, "currentActivity"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 2122
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2123
    iput p2, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->errorId:I

    .line 2124
    iput-object p3, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->currentActivity:Lnet/veritran/VTAbstractActivity;

    .line 2125
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2129
    new-instance v2, Lnet/veritran/listeners/ExitApplicationSmartOnClickListener;

    iget-object v4, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->currentActivity:Lnet/veritran/VTAbstractActivity;

    invoke-direct {v2, v4}, Lnet/veritran/listeners/ExitApplicationSmartOnClickListener;-><init>(Lnet/veritran/VTAbstractActivity;)V

    .line 2131
    .local v2, "exitAppOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->currentActivity:Lnet/veritran/VTAbstractActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2132
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "Error"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2134
    iget v4, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->errorId:I

    invoke-static {v4}, Lnet/veritran/vtuserapplication/model/Errors;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 2136
    .local v1, "errorDescription":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ua"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;->errorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2138
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2140
    const-string v4, "OK"

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2144
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2147
    return-void
.end method
