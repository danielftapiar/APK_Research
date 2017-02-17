.class Lnet/veritran/component/view/VTInputTextView$1;
.super Ljava/lang/Object;
.source "VTInputTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTInputTextView;->getCustomOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTInputTextView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTInputTextView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTInputTextView;

    .prologue
    .line 86
    iput-object p1, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTInputTextView;->getGravity()I

    move-result v0

    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->textAlign:Ljava/lang/Integer;
    invoke-static {v1}, Lnet/veritran/component/view/VTInputTextView;->access$000(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->textAlign:Ljava/lang/Integer;
    invoke-static {v1}, Lnet/veritran/component/view/VTInputTextView;->access$000(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTInputTextView;->setGravity(I)V

    .line 93
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->onFocus:Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VTInputTextView;->access$100(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->onFocus:Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VTInputTextView;->access$100(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->onFocus:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VTInputTextView;->access$100(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->onBlur:Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VTInputTextView;->access$200(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->onBlur:Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VTInputTextView;->access$200(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView$1;->this$0:Lnet/veritran/component/view/VTInputTextView;

    # getter for: Lnet/veritran/component/view/VTInputTextView;->onBlur:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VTInputTextView;->access$200(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto :goto_0
.end method
