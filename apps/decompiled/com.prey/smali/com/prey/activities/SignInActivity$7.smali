.class Lcom/prey/activities/SignInActivity$7;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/SignInActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
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
    .line 240
    iput-object p1, p0, Lcom/prey/activities/SignInActivity$7;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 243
    return-void
.end method
