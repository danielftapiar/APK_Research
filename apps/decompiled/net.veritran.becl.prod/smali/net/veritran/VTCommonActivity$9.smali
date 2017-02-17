.class Lnet/veritran/VTCommonActivity$9;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3248
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3250
    if-eqz p0, :cond_1

    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitExpired:Z
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$900(Lnet/veritran/VTCommonActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 3252
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    sget v3, Lnet/veritran/R$style;->SimpleSpinnerTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lnet/veritran/VTCommonActivity;->access$1002(Lnet/veritran/VTCommonActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3253
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3254
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3255
    :cond_0
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v1

    const-string v2, ""

    const-string v3, "appPleaseWait"

    invoke-interface {v1, v2, v3}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3259
    :goto_0
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3260
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3261
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitExpired:Z
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$900(Lnet/veritran/VTCommonActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3262
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    # getter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lnet/veritran/VTCommonActivity;->access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3264
    :cond_1
    return-void

    .line 3257
    :cond_2
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$9;->this$0:Lnet/veritran/VTCommonActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    sget v3, Lnet/veritran/R$style;->SimpleSpinnerThemeHolo:I

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lnet/veritran/VTCommonActivity;->access$1002(Lnet/veritran/VTCommonActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
