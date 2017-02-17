.class Lde/viktorreiser/toolbox/app/SafeClipboard$1;
.super Ljava/lang/Object;
.source "SafeClipboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/app/SafeClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/app/SafeClipboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lde/viktorreiser/toolbox/app/SafeClipboard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 75
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mCurrentText:Ljava/lang/String;
    invoke-static {v3}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$0(Lde/viktorreiser/toolbox/app/SafeClipboard;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v1, 0x0

    .line 81
    .local v1, "text":Ljava/lang/String;
    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessageRes:I
    invoke-static {}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$1()I

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessageRes:I
    invoke-static {}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$1()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/viktorreiser/toolbox/app/SafeClipboard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    :goto_0
    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastImage:I
    invoke-static {}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$3()I

    move-result v2

    if-nez v2, :cond_3

    .line 92
    iget-object v2, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 100
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/app/SafeClipboard;->stopSelf()V

    .line 101
    :cond_1
    return-void

    .line 83
    .restart local v1    # "text":Ljava/lang/String;
    :cond_2
    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessage:Ljava/lang/String;
    invoke-static {}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessage:Ljava/lang/String;
    invoke-static {}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$2()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_3
    iget-object v2, p0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;->this$0:Lde/viktorreiser/toolbox/app/SafeClipboard;

    # getter for: Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastImage:I
    invoke-static {}, Lde/viktorreiser/toolbox/app/SafeClipboard;->access$3()I

    move-result v3

    .line 94
    invoke-static {v2, v3, v1, v4}, Lde/viktorreiser/toolbox/util/AndroidUtils;->makeImageToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
