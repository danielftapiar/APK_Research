.class Lnet/veritran/component/VTSlidePanel$2;
.super Ljava/lang/Object;
.source "VTSlidePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTSlidePanel;->createTransparencyAnimation(JIIZ)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTSlidePanel;

.field final synthetic val$isOpening:Z

.field final synthetic val$toX:I

.field final synthetic val$toY:I


# direct methods
.method constructor <init>(Lnet/veritran/component/VTSlidePanel;ZII)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTSlidePanel;

    .prologue
    .line 450
    iput-object p1, p0, Lnet/veritran/component/VTSlidePanel$2;->this$0:Lnet/veritran/component/VTSlidePanel;

    iput-boolean p2, p0, Lnet/veritran/component/VTSlidePanel$2;->val$isOpening:Z

    iput p3, p0, Lnet/veritran/component/VTSlidePanel$2;->val$toX:I

    iput p4, p0, Lnet/veritran/component/VTSlidePanel$2;->val$toY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 466
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 455
    iget-boolean v0, p0, Lnet/veritran/component/VTSlidePanel$2;->val$isOpening:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel$2;->this$0:Lnet/veritran/component/VTSlidePanel;

    iget v1, p0, Lnet/veritran/component/VTSlidePanel$2;->val$toX:I

    iget v2, p0, Lnet/veritran/component/VTSlidePanel$2;->val$toY:I

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/VTSlidePanel;->setCurrentXY(II)V

    .line 459
    iget-object v0, p0, Lnet/veritran/component/VTSlidePanel$2;->this$0:Lnet/veritran/component/VTSlidePanel;

    invoke-static {v0}, Lnet/veritran/VTSlidingPanelManager;->addSlidingPanel(Lnet/veritran/component/VTSlidePanel;)V

    .line 461
    :cond_0
    return-void
.end method
