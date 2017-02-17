.class Lcom/prey/activities/PopUpAlertActivity$1;
.super Ljava/lang/Object;
.source "PopUpAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/PopUpAlertActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/PopUpAlertActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/PopUpAlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/PopUpAlertActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/prey/activities/PopUpAlertActivity$1;->this$0:Lcom/prey/activities/PopUpAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/prey/activities/PopUpAlertActivity$1;->this$0:Lcom/prey/activities/PopUpAlertActivity;

    invoke-virtual {v0}, Lcom/prey/activities/PopUpAlertActivity;->finish()V

    .line 53
    return-void
.end method
