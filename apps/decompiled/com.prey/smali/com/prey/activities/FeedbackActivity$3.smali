.class Lcom/prey/activities/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/FeedbackActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/FeedbackActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/prey/activities/FeedbackActivity$3;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/prey/activities/FeedbackActivity$3;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v0}, Lcom/prey/activities/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    sget v1, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_SEND:I

    invoke-virtual {v0, v1}, Lcom/prey/PreyConfig;->setFlagFeedback(I)V

    .line 73
    iget-object v0, p0, Lcom/prey/activities/FeedbackActivity$3;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v0}, Lcom/prey/activities/FeedbackActivity;->finish()V

    .line 74
    return-void
.end method
