.class public Lnet/veritran/listeners/DialogDismissOnClickListener;
.super Ljava/lang/Object;
.source "DialogDismissOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialogId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnet/veritran/listeners/DialogDismissOnClickListener;->activity:Landroid/app/Activity;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialogId"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/veritran/listeners/DialogDismissOnClickListener;->activity:Landroid/app/Activity;

    .line 22
    iput p2, p0, Lnet/veritran/listeners/DialogDismissOnClickListener;->dialogId:I

    .line 23
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 37
    return-void
.end method
