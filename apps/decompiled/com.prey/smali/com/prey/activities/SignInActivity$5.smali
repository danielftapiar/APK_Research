.class Lcom/prey/activities/SignInActivity$5;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/SignInActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/SignInActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/SignInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SignInActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/prey/activities/SignInActivity$5;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 216
    return-void
.end method
