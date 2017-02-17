.class Lde/viktorreiser/toolbox/widget/ViewStateFlipper$1;
.super Ljava/lang/Object;
.source "ViewStateFlipper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->initialize(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/ViewStateFlipper;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/ViewStateFlipper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$1;->this$0:Lde/viktorreiser/toolbox/widget/ViewStateFlipper;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 288
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$1;->this$0:Lde/viktorreiser/toolbox/widget/ViewStateFlipper;

    # getter for: Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->access$1(Lde/viktorreiser/toolbox/widget/ViewStateFlipper;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 284
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 279
    return-void
.end method
