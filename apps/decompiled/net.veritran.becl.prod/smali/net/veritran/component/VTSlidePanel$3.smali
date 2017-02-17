.class Lnet/veritran/component/VTSlidePanel$3;
.super Ljava/lang/Object;
.source "VTSlidePanel.java"

# interfaces
.implements Lnet/veritran/component/view/VTVisualAreaSlidingView$onAnimationEndInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTSlidePanel;->openSlide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTSlidePanel;

.field final synthetic val$self:Lnet/veritran/component/VTSlidePanel;

.field final synthetic val$toX:I

.field final synthetic val$toY:I


# direct methods
.method constructor <init>(Lnet/veritran/component/VTSlidePanel;IILnet/veritran/component/VTSlidePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTSlidePanel;

    .prologue
    .line 512
    iput-object p1, p0, Lnet/veritran/component/VTSlidePanel$3;->this$0:Lnet/veritran/component/VTSlidePanel;

    iput p2, p0, Lnet/veritran/component/VTSlidePanel$3;->val$toX:I

    iput p3, p0, Lnet/veritran/component/VTSlidePanel$3;->val$toY:I

    iput-object p4, p0, Lnet/veritran/component/VTSlidePanel$3;->val$self:Lnet/veritran/component/VTSlidePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel$3;->this$0:Lnet/veritran/component/VTSlidePanel;

    iget v1, p0, Lnet/veritran/component/VTSlidePanel$3;->val$toX:I

    iget v2, p0, Lnet/veritran/component/VTSlidePanel$3;->val$toY:I

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/VTSlidePanel;->setCurrentXY(II)V

    .line 518
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel$3;->val$self:Lnet/veritran/component/VTSlidePanel;

    invoke-static {v0}, Lnet/veritran/VTSlidingPanelManager;->addSlidingPanel(Lnet/veritran/component/VTSlidePanel;)V

    .line 519
    return-void
.end method
