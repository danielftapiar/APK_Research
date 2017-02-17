.class Lcom/prey/activities/CheckPasswordActivity$5;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CheckPasswordActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/CheckPasswordActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$5;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    iput-object p2, p0, Lcom/prey/activities/CheckPasswordActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    const-string v0, "askForPermission"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$5;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    # invokes: Lcom/prey/activities/CheckPasswordActivity;->askForPermission()V
    invoke-static {v0}, Lcom/prey/activities/CheckPasswordActivity;->access$000(Lcom/prey/activities/CheckPasswordActivity;)V

    .line 233
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    return-void
.end method
