.class Lcom/prey/activities/CheckPasswordActivity$VersionTask$1;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CheckPasswordActivity$VersionTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prey/activities/CheckPasswordActivity$VersionTask;


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity$VersionTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask$1;->this$1:Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 521
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 522
    return-void
.end method
