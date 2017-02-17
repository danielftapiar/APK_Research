.class Lcom/prey/activities/CheckPasswordActivity$8;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$8;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void
.end method
