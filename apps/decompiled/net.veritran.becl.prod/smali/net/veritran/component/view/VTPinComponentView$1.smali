.class Lnet/veritran/component/view/VTPinComponentView$1;
.super Ljava/lang/Object;
.source "VTPinComponentView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTPinComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTPinComponentView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTPinComponentView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTPinComponentView;

    .prologue
    .line 83
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 88
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # setter for: Lnet/veritran/component/view/VTPinComponentView;->focused:Z
    invoke-static {v1, p2}, Lnet/veritran/component/view/VTPinComponentView;->access$002(Lnet/veritran/component/view/VTPinComponentView;Z)Z

    .line 90
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->focused:Z
    invoke-static {v1}, Lnet/veritran/component/view/VTPinComponentView;->access$000(Lnet/veritran/component/view/VTPinComponentView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTPinComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 95
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->onFocus:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VTPinComponentView;->access$100(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->onFocus:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VTPinComponentView;->access$100(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->onFocus:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/view/VTPinComponentView;->access$100(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 103
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTPinComponentView;->postInvalidate()V

    .line 104
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->focused:Z
    invoke-static {v1}, Lnet/veritran/component/view/VTPinComponentView;->access$000(Lnet/veritran/component/view/VTPinComponentView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->onBlur:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VTPinComponentView;->access$200(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->onBlur:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VTPinComponentView;->access$200(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTPinComponentView$1;->this$0:Lnet/veritran/component/view/VTPinComponentView;

    # getter for: Lnet/veritran/component/view/VTPinComponentView;->onBlur:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/view/VTPinComponentView;->access$200(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto :goto_0
.end method
