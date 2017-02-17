.class Lnet/veritran/component/view/VTSelectorComponentView$1;
.super Ljava/lang/Object;
.source "VTSelectorComponentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTSelectorComponentView;->updateCurrentIndex()V
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
    .line 403
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView$1;->this$0:Lnet/veritran/component/view/VTSelectorComponentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lnet/veritran/component/view/VTSelectorComponentView$1;->this$0:Lnet/veritran/component/view/VTSelectorComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTSelectorComponentView;->updateAutoDump()V

    .line 408
    iget-object v1, p0, Lnet/veritran/component/view/VTSelectorComponentView$1;->this$0:Lnet/veritran/component/view/VTSelectorComponentView;

    iget-object v1, v1, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    iget-object v2, p0, Lnet/veritran/component/view/VTSelectorComponentView$1;->this$0:Lnet/veritran/component/view/VTSelectorComponentView;

    # getter for: Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I
    invoke-static {v2}, Lnet/veritran/component/view/VTSelectorComponentView;->access$000(Lnet/veritran/component/view/VTSelectorComponentView;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/VTSelectorItem;

    invoke-virtual {v1}, Lnet/veritran/component/VTSelectorItem;->getOnSelect()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    check-cast v1, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1, v0}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 410
    return-void
.end method
