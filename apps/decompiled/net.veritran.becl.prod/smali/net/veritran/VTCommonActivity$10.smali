.class Lnet/veritran/VTCommonActivity$10;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTCommonActivity;->nuevoRequestForViewUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 3270
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3273
    sget-object v1, Lnet/veritran/VTAbstractActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3275
    const-string v1, "onGlobalLayout"

    const-string v2, "ok"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3278
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3279
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    # setter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v3}, Lnet/veritran/VTCommonActivity;->access$1002(Lnet/veritran/VTCommonActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3282
    :cond_0
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    const/4 v2, 0x1

    # setter for: Lnet/veritran/VTCommonActivity;->waitExpired:Z
    invoke-static {v1, v2}, Lnet/veritran/VTCommonActivity;->access$902(Lnet/veritran/VTCommonActivity;Z)Z

    .line 3283
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lnet/veritran/VTCommonActivity;->access$1100(Lnet/veritran/VTCommonActivity;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3284
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lnet/veritran/VTCommonActivity;->access$1100(Lnet/veritran/VTCommonActivity;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 3285
    .local v0, "moribund":Ljava/lang/Thread;
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$10;->this$0:Lnet/veritran/VTCommonActivity;

    # setter for: Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1, v3}, Lnet/veritran/VTCommonActivity;->access$1102(Lnet/veritran/VTCommonActivity;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 3286
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3289
    .end local v0    # "moribund":Ljava/lang/Thread;
    :cond_1
    return-void
.end method
