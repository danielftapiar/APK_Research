.class Lnet/veritran/component/VTProgressBar$2;
.super Ljava/lang/Object;
.source "VTProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTProgressBar;->initProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTProgressBar;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 261
    iput-object p1, p0, Lnet/veritran/component/VTProgressBar$2;->this$0:Lnet/veritran/component/VTProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar$2;->this$0:Lnet/veritran/component/VTProgressBar;

    invoke-virtual {v0}, Lnet/veritran/component/VTProgressBar;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTProgressBar$2;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->next:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTProgressBar;->access$100(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 265
    return-void
.end method
