.class Lnet/veritran/component/view/VTSelectorComponentView$2;
.super Ljava/lang/Object;
.source "VTSelectorComponentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTSelectorComponentView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTSelectorComponentView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTSelectorComponentView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTSelectorComponentView;

    .prologue
    .line 521
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView$2;->this$0:Lnet/veritran/component/view/VTSelectorComponentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView$2;->this$0:Lnet/veritran/component/view/VTSelectorComponentView;

    # invokes: Lnet/veritran/component/view/VTSelectorComponentView;->updateCurrentIndex()V
    invoke-static {v0}, Lnet/veritran/component/view/VTSelectorComponentView;->access$100(Lnet/veritran/component/view/VTSelectorComponentView;)V

    .line 525
    return-void
.end method
