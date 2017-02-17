.class Lcom/prey/activities/CheckPasswordActivity$9;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CheckPasswordActivity;->bindPasswordControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/CheckPasswordActivity;

.field final synthetic val$pass1:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$9;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    iput-object p2, p0, Lcom/prey/activities/CheckPasswordActivity$9;->val$pass1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$9;->val$pass1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "passwordtyped":Ljava/lang/String;
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$9;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "ctx":Landroid/content/Context;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const v2, 0x7f0900cb

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 330
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 321
    :cond_1
    const v2, 0x7f090058

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 323
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    .line 324
    new-instance v2, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;

    iget-object v3, p0, Lcom/prey/activities/CheckPasswordActivity$9;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v2, v3}, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 326
    :cond_3
    new-instance v2, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;

    iget-object v3, p0, Lcom/prey/activities/CheckPasswordActivity$9;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v2, v3}, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/prey/activities/CheckPasswordActivity$CheckPassword;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
