.class Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;
.super Ljava/lang/Object;
.source "SwipeableHiddenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->initialize(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 1130
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$5(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStepTime:J
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$6(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    .line 1135
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mData:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$7(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;

    move-result-object v4

    iget v4, v4, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;->animationSpeed:I

    int-to-float v4, v4

    .line 1134
    div-float v1, v3, v4

    .line 1136
    .local v1, "step":F
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v0

    .line 1138
    .local v0, "offsetBefore":F
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_4

    .line 1139
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v4

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$9(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .end local v1    # "step":F
    :goto_1
    add-float/2addr v4, v1

    invoke-static {v3, v4}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$10(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;F)V

    .line 1144
    :goto_2
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$9(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_7

    .line 1145
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_6

    :goto_3
    invoke-static {v3, v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$10(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;F)V

    .line 1146
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-static {v2, v8}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$11(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;Z)V

    .line 1154
    :cond_2
    :goto_4
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$12(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;J)V

    .line 1155
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->invalidate()V

    .line 1157
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimating:Z
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$5(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$13(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimationStep:Ljava/lang/Runnable;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$14(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1139
    .restart local v1    # "step":F
    :cond_3
    neg-float v1, v1

    goto :goto_1

    .line 1141
    :cond_4
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v4

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$9(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z

    move-result v5

    if-eqz v5, :cond_5

    neg-float v1, v1

    .end local v1    # "step":F
    :cond_5
    add-float/2addr v4, v1

    invoke-static {v3, v4}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$10(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;F)V

    goto :goto_2

    .line 1145
    :cond_6
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_3

    .line 1147
    :cond_7
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mAnimateForward:Z
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$9(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1148
    cmpl-float v2, v0, v7

    if-ltz v2, :cond_8

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v2

    cmpg-float v2, v2, v7

    if-lez v2, :cond_9

    :cond_8
    cmpg-float v2, v0, v7

    if-gez v2, :cond_2

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->mOffset:F
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$8(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_2

    .line 1149
    :cond_9
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-static {v2, v7}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$10(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;F)V

    .line 1150
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-static {v2, v8}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->access$11(Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;Z)V

    .line 1151
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;->requestLayout()V

    goto :goto_4
.end method
