.class Lcom/prey/activities/FormFeedbackActivity$1;
.super Ljava/lang/Object;
.source "FormFeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/FormFeedbackActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/FormFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/FormFeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/FormFeedbackActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/prey/activities/FormFeedbackActivity$1;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/prey/activities/FormFeedbackActivity$1;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    invoke-virtual {v0}, Lcom/prey/activities/FormFeedbackActivity;->finish()V

    .line 62
    return-void
.end method
