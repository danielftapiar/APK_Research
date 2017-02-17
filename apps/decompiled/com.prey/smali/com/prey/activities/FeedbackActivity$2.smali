.class Lcom/prey/activities/FeedbackActivity$2;
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
    .line 60
    iput-object p1, p0, Lcom/prey/activities/FeedbackActivity$2;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$2;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1}, Lcom/prey/activities/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/FormFeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "popup":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$2;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1, v0}, Lcom/prey/activities/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$2;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1}, Lcom/prey/activities/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    sget v2, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_SEND:I

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setFlagFeedback(I)V

    .line 66
    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$2;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1}, Lcom/prey/activities/FeedbackActivity;->finish()V

    .line 67
    return-void
.end method
